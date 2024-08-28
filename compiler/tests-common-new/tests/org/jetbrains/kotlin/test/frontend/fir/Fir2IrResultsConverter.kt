/*
 * Copyright 2010-2020 JetBrains s.r.o. and Kotlin Programming Language contributors.
 * Use of this source code is governed by the Apache 2.0 license that can be found in the license/LICENSE.txt file.
 */

package org.jetbrains.kotlin.test.frontend.fir

import org.jetbrains.kotlin.config.LanguageFeature
import org.jetbrains.kotlin.platform.isCommon
import org.jetbrains.kotlin.platform.isJs
import org.jetbrains.kotlin.platform.isWasm
import org.jetbrains.kotlin.platform.jvm.isJvm
import org.jetbrains.kotlin.test.backend.ir.IrBackendInput
import org.jetbrains.kotlin.test.model.BackendKinds
import org.jetbrains.kotlin.test.model.Frontend2BackendConverter
import org.jetbrains.kotlin.test.model.FrontendKinds
import org.jetbrains.kotlin.test.model.TestModule
import org.jetbrains.kotlin.test.services.TestServices
import org.jetbrains.kotlin.test.services.dependencyProvider
import org.jetbrains.kotlin.test.services.moduleStructure

@RequiresOptIn("Please use common converter `Fir2IrResultsConverter` instead")
annotation class InternalFir2IrConverterAPI

@OptIn(InternalFir2IrConverterAPI::class)
class Fir2IrResultsConverter(
    testServices: TestServices
) : Frontend2BackendConverter<FirOutputArtifact, IrBackendInput>(
    testServices,
    FrontendKinds.FIR,
    BackendKinds.IrBackend
) {
    private val jvmResultsConverter = Fir2IrJvmResultsConverter(testServices)
    private val jsResultsConverter = Fir2IrJsResultsConverter(testServices)
    private val wasmResultsConverter = Fir2IrWasmResultsConverter(testServices)
    private val testModulesByName by lazy { testServices.moduleStructure.modules.associateBy { it.name } }

    override fun shouldRunAnalysis(module: TestModule): Boolean {
        if (!super.shouldRunAnalysis(module)) return false

        return if (module.languageVersionSettings.supportsFeature(LanguageFeature.MultiPlatformProjects)) {
            testServices.moduleStructure
                .modules.none { testModule -> testModule.dependsOnDependencies.any { testModulesByName[it.moduleName] == module } }
        } else {
            true
        }
    }

    override fun transform(module: TestModule, inputArtifact: FirOutputArtifact): IrBackendInput? {
        val artifactToPass = when {
            module.languageVersionSettings.supportsFeature(LanguageFeature.MultiPlatformProjects) -> {
                val allParts = buildList {
                    collectDependencies(module, this)
                }
                FirOutputArtifactImpl(allParts)
            }
            else -> inputArtifact
        }

        return when {
            module.targetPlatform.isJvm() || module.targetPlatform.isCommon() -> {
                jvmResultsConverter.transform(module, artifactToPass)
            }
            module.targetPlatform.isJs() -> {
                jsResultsConverter.transform(module, artifactToPass)
            }
            module.targetPlatform.isWasm() -> {
                wasmResultsConverter.transform(module, artifactToPass)
            }
            else -> error("Unsupported platform: ${module.targetPlatform}")
        }
    }

    private fun collectDependencies(module: TestModule, destination: MutableList<FirOutputPartForDependsOnModule>) {
        for ((dependencyName, _, _) in module.dependsOnDependencies) {
            val dependencyModule = testModulesByName.getValue(dependencyName)
            collectDependencies(dependencyModule, destination)
        }
        val artifact = testServices.dependencyProvider.getArtifact(module, FrontendKinds.FIR)
        destination += artifact.partsForDependsOnModules.single()
    }
}
