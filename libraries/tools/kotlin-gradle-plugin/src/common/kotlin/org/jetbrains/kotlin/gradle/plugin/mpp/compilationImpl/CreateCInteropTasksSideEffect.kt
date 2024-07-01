/*
 * Copyright 2010-2023 JetBrains s.r.o. and Kotlin Programming Language contributors.
 * Use of this source code is governed by the Apache 2.0 license that can be found in the license/LICENSE.txt file.
 */

package org.jetbrains.kotlin.gradle.plugin.mpp.compilationImpl

import org.jetbrains.kotlin.gradle.artifacts.createKlibArtifact
import org.jetbrains.kotlin.gradle.artifacts.klibOutputDirectory
import org.jetbrains.kotlin.gradle.artifacts.maybeCreateKlibPackingTask
import org.jetbrains.kotlin.gradle.plugin.KotlinCompilation
import org.jetbrains.kotlin.gradle.plugin.KotlinCompilationInfo
import org.jetbrains.kotlin.gradle.plugin.KotlinNativeTargetConfigurator
import org.jetbrains.kotlin.gradle.plugin.PropertiesProvider.Companion.kotlinPropertiesProvider
import org.jetbrains.kotlin.gradle.plugin.launch
import org.jetbrains.kotlin.gradle.plugin.mpp.KotlinNativeCompilation
import org.jetbrains.kotlin.gradle.plugin.mpp.enabledOnCurrentHostForBinariesCompilation
import org.jetbrains.kotlin.gradle.plugin.mpp.isMain
import org.jetbrains.kotlin.gradle.targets.UNPACKED_KLIB_VARIANT_NAME
import org.jetbrains.kotlin.gradle.targets.native.internal.commonizeCInteropTask
import org.jetbrains.kotlin.gradle.targets.native.internal.copyCommonizeCInteropForIdeTask
import org.jetbrains.kotlin.gradle.targets.native.internal.createCInteropApiElementsKlibArtifact
import org.jetbrains.kotlin.gradle.targets.native.internal.locateOrCreateCInteropDependencyConfiguration
import org.jetbrains.kotlin.gradle.targets.native.toolchain.KotlinNativeProvider
import org.jetbrains.kotlin.gradle.tasks.CInteropProcess
import org.jetbrains.kotlin.gradle.tasks.registerTask
import org.jetbrains.kotlin.gradle.utils.newInstance

internal val KotlinCreateNativeCInteropTasksSideEffect = KotlinCompilationSideEffect<KotlinNativeCompilation> { compilation ->
    val project = compilation.project
    val compilationInfo = KotlinCompilationInfo(compilation)
    compilation.cinterops.all { interop ->
        val params = CInteropProcess.Params(
            settings = interop,
            targetName = compilation.target.name,
            compilationName = compilation.name,
            konanTarget = compilation.konanTarget,
            baseKlibName = run {
                val compilationPrefix = if (compilation.isMain()) project.name else compilation.name
                "$compilationPrefix-cinterop-${interop.name}"
            },
            services = project.objects.newInstance()
        )

        val interopTask = project.registerTask<CInteropProcess>(interop.interopProcessingTaskName, listOf(params)) {
            it.destinationDir = project.klibOutputDirectory(compilationInfo).dir("cinterop").map { it.asFile }
            it.group = KotlinNativeTargetConfigurator.INTEROP_GROUP
            it.description = "Generates Kotlin/Native interop library '${interop.name}' " +
                    "for compilation '${compilation.compilationName}'" +
                    "of target '${it.konanTarget.name}'."
            it.enabled = compilation.konanTarget.enabledOnCurrentHostForBinariesCompilation()
            it.definitionFile.set(params.settings.definitionFile)
            it.kotlinNativeProvider.set(project.provider {
                KotlinNativeProvider(project, it.konanTarget, it.kotlinNativeBundleBuildService)
            })
            it.produceUnpackedKlib.set(project.kotlinPropertiesProvider.enableUnpackedKlibs)
            if (project.kotlinPropertiesProvider.enableUnpackedKlibs) {
                it.outputs.dir(it.outputFileProvider)
            } else {
                it.outputs.file(it.outputFileProvider)
            }
        }

        project.launch {
            project.commonizeCInteropTask()?.configure { commonizeCInteropTask ->
                commonizeCInteropTask.from(interopTask)
            }
            project.copyCommonizeCInteropForIdeTask()
        }

        val interopOutput = project.files(interopTask.map { it.outputFileProvider })
        with(compilation) {
            compileDependencyFiles += interopOutput
            if (isMain()) {
                // Add interop library to special CInteropApiElements configuration
                createCInteropApiElementsKlibArtifact(compilation, interop, interopTask)

                // Add the interop library in publication.
                if (compilation.konanTarget.enabledOnCurrentHostForBinariesCompilation()) {
                    createKlibArtifact(
                        compilation,
                        classifier = interop.classifier,
                        klibProducingTask = interopTask,
                    )

                    // TODO(alakotka): Add unpacked cinterop to secondary variant of KotlinNativeTarget.apiElements in [SecondaryVariantsForUnpackedCompilerOutputs]
                    if (compilation.target.project.kotlinPropertiesProvider.enableUnpackedKlibs) {
                        val apiElementsName = compilation.target.apiElementsConfigurationName
                        val apiElements = project.configurations.getByName(apiElementsName)
                        apiElements.outgoing.variants.getByName(UNPACKED_KLIB_VARIANT_NAME)
                            .artifact(interopOutput) { it.builtBy(interopTask) }
                    }
                }

                // We cannot add the interop library in an compilation output because in this case
                // IDE doesn't see this library in module dependencies. So we have to manually add
                // main interop libraries in dependencies of the default test compilation.
                target.compilations.findByName(KotlinCompilation.TEST_COMPILATION_NAME)?.let { testCompilation ->
                    testCompilation.compileDependencyFiles += interopOutput
                    testCompilation.cinterops.all {
                        it.dependencyFiles += interopOutput
                    }
                }
            }
        }

        interop.dependencyFiles += project.locateOrCreateCInteropDependencyConfiguration(compilation)
    }
}
