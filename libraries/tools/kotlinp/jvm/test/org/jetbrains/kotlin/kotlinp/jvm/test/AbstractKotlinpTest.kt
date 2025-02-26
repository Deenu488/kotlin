/*
 * Copyright 2000-2018 JetBrains s.r.o. and Kotlin Programming Language contributors.
 * Use of this source code is governed by the Apache 2.0 license that can be found in the license/LICENSE.txt file.
 */

package org.jetbrains.kotlin.kotlinp.jvm.test

import org.jetbrains.kotlin.kotlinp.Settings
import org.jetbrains.kotlin.kotlinp.jvm.JvmKotlinp
import org.jetbrains.kotlin.kotlinp.jvm.readKotlinClassHeader
import org.jetbrains.kotlin.test.Constructor
import org.jetbrains.kotlin.test.FirParser
import org.jetbrains.kotlin.test.TargetBackend
import org.jetbrains.kotlin.test.backend.BlackBoxCodegenSuppressor
import org.jetbrains.kotlin.test.backend.handlers.JvmBinaryArtifactHandler
import org.jetbrains.kotlin.test.backend.ir.BackendCliJvmFacade
import org.jetbrains.kotlin.test.backend.ir.IrBackendInput
import org.jetbrains.kotlin.test.backend.ir.JvmIrBackendFacade
import org.jetbrains.kotlin.test.builders.TestConfigurationBuilder
import org.jetbrains.kotlin.test.builders.configureClassicFrontendHandlersStep
import org.jetbrains.kotlin.test.builders.configureFirHandlersStep
import org.jetbrains.kotlin.test.builders.configureJvmArtifactsHandlersStep
import org.jetbrains.kotlin.test.configuration.commonClassicFrontendHandlersForCodegenTest
import org.jetbrains.kotlin.test.configuration.commonConfigurationForJvmTest
import org.jetbrains.kotlin.test.configuration.commonFirHandlersForCodegenTest
import org.jetbrains.kotlin.test.directives.ModuleStructureDirectives
import org.jetbrains.kotlin.test.directives.configureFirParser
import org.jetbrains.kotlin.test.directives.model.SimpleDirectivesContainer
import org.jetbrains.kotlin.test.frontend.classic.ClassicFrontend2IrConverter
import org.jetbrains.kotlin.test.frontend.classic.ClassicFrontendFacade
import org.jetbrains.kotlin.test.frontend.classic.ClassicFrontendOutputArtifact
import org.jetbrains.kotlin.test.frontend.fir.Fir2IrCliJvmFacade
import org.jetbrains.kotlin.test.frontend.fir.FirCliJvmFacade
import org.jetbrains.kotlin.test.frontend.fir.FirOutputArtifact
import org.jetbrains.kotlin.test.model.*
import org.jetbrains.kotlin.test.runners.AbstractKotlinCompilerTest
import org.jetbrains.kotlin.test.services.TestServices
import org.jetbrains.kotlin.test.services.defaultsProvider
import org.jetbrains.kotlin.test.services.moduleStructure
import org.jetbrains.kotlin.test.utils.MultiModuleInfoDumper
import org.jetbrains.kotlin.test.utils.withExtension
import org.jetbrains.org.objectweb.asm.ClassReader
import java.io.File
import kotlin.metadata.jvm.KotlinClassMetadata
import kotlin.metadata.jvm.KotlinModuleMetadata
import kotlin.metadata.jvm.UnstableMetadataApi
import kotlin.test.fail

abstract class AbstractKotlinpTest<R : ResultingArtifact.FrontendOutput<R>>(
    val targetFrontend: FrontendKind<R>,
) : AbstractKotlinCompilerTest() {
    abstract val frontendFacade: Constructor<FrontendFacade<R>>
    abstract val frontendToBackendConverter: Constructor<Frontend2BackendConverter<R, IrBackendInput>>
    abstract val backendFacade: Constructor<BackendFacade<IrBackendInput, BinaryArtifacts.Jvm>>

    override fun configure(builder: TestConfigurationBuilder) = with(builder) {
        globalDefaults {
            targetBackend = TargetBackend.JVM_IR
        }

        defaultDirectives {
            ModuleStructureDirectives.MODULE with "test-module"
        }

        builder.useDirectives(KotlinpTestDirectives)

        commonConfigurationForJvmTest(targetFrontend, frontendFacade, frontendToBackendConverter, backendFacade)

        // We need PSI at least until scripts are supported in the LightTree (KT-60127).
        configureFirParser(FirParser.Psi)

        configureClassicFrontendHandlersStep {
            commonClassicFrontendHandlersForCodegenTest()
        }
        configureFirHandlersStep {
            commonFirHandlersForCodegenTest()
        }

        configureJvmArtifactsHandlersStep {
            useHandlers({ CompareMetadataHandler(it, verbose = true) })
        }
        useAfterAnalysisCheckers(::BlackBoxCodegenSuppressor)
    }
}

abstract class AbstractK1KotlinpTest : AbstractKotlinpTest<ClassicFrontendOutputArtifact>(FrontendKinds.ClassicFrontend) {
    override val frontendFacade: Constructor<FrontendFacade<ClassicFrontendOutputArtifact>>
        get() = ::ClassicFrontendFacade
    override val frontendToBackendConverter: Constructor<Frontend2BackendConverter<ClassicFrontendOutputArtifact, IrBackendInput>>
        get() = ::ClassicFrontend2IrConverter
    override val backendFacade: Constructor<BackendFacade<IrBackendInput, BinaryArtifacts.Jvm>>
        get() = ::JvmIrBackendFacade
}

abstract class AbstractK2KotlinpTest : AbstractKotlinpTest<FirOutputArtifact>(FrontendKinds.FIR) {
    override val frontendFacade: Constructor<FrontendFacade<FirOutputArtifact>>
        get() = ::FirCliJvmFacade
    override val frontendToBackendConverter: Constructor<Frontend2BackendConverter<FirOutputArtifact, IrBackendInput>>
        get() = ::Fir2IrCliJvmFacade
    override val backendFacade: Constructor<BackendFacade<IrBackendInput, BinaryArtifacts.Jvm>>
        get() = ::BackendCliJvmFacade
}

object KotlinpTestDirectives : SimpleDirectivesContainer() {
    val NO_READ_WRITE_COMPARE by directive("Don't check that metadata after a write-read transformation is equal to the original metadata")
}

class CompareMetadataHandler(
    testServices: TestServices,
    private val extension: String = ".txt",
    private val verbose: Boolean = false,
) : JvmBinaryArtifactHandler(testServices) {
    private val dumper = MultiModuleInfoDumper()
    private val dumper2 = MultiModuleInfoDumper()

    override fun processModule(module: TestModule, info: BinaryArtifacts.Jvm) {
        val kotlinp = JvmKotlinp(Settings(isVerbose = verbose, sortDeclarations = true))

        val dump = dumper.builderForModule(module)

        // To check that kotlin-metadata-jvm correctly writes everything, we write metadata with it, then read and render it again.
        val dump2 = dumper2.builderForModule(module)

        for (outputFile in info.classFileFactory.asList().sortedBy { File(it.relativePath).nameWithoutExtension }) {
            val path = outputFile.relativePath
            @OptIn(UnstableMetadataApi::class)
            when {
                path.endsWith(".class") -> {
                    val metadata = ClassReader(outputFile.asByteArray().inputStream()).readKotlinClassHeader()!!
                    val classFile = KotlinClassMetadata.readStrict(metadata)
                    val classFile2 = KotlinClassMetadata.readStrict(classFile.write())
                    for ((sb, classFileToRender) in listOf(dump to classFile, dump2 to classFile2)) {
                        sb.appendFileName(path)
                        sb.append(kotlinp.printClassFile(classFileToRender))
                    }
                }
                path.endsWith(".kotlin_module") -> {
                    val moduleFile = KotlinModuleMetadata.read(outputFile.asByteArray())
                    val moduleFile2 = KotlinModuleMetadata.read(moduleFile.write())
                    for ((sb, moduleFileToRender) in listOf(dump to moduleFile, dump2 to moduleFile2)) {
                        sb.appendFileName(path)
                        sb.append(kotlinp.printModuleFile(moduleFileToRender))
                    }
                }
                else -> {
                    fail("Unknown file: $outputFile")
                }
            }
        }
    }

    private fun StringBuilder.appendFileName(path: String) {
        appendLine("// $path")
        appendLine("// ------------------------------------------")
    }

    override fun processAfterAllModules(someAssertionWasFailed: Boolean) {
        val sourceFile = testServices.moduleStructure.originalTestDataFiles.first()
        val defaultTxtFile = sourceFile.withExtension(extension)
        val firTxtFile = sourceFile.withExtension(".fir$extension")
        val isFir = testServices.defaultsProvider.frontendKind == FrontendKinds.FIR
        val actualFile = firTxtFile.takeIf { isFir && it.exists() } ?: defaultTxtFile

        val dump = dumper.generateResultingDump()
        assertions.assertEqualsToFile(actualFile, dump)

        if (!testServices.moduleStructure.allDirectives.contains(KotlinpTestDirectives.NO_READ_WRITE_COMPARE)) {
            val dump2 = dumper2.generateResultingDump()
            assertions.assertEquals(dump, dump2) {
                "Dump after a write-read transformation differs from the original. Most likely it means that writing some metadata " +
                        "fields is not supported in kotlin-metadata-jvm."
            }
        }
    }
}
