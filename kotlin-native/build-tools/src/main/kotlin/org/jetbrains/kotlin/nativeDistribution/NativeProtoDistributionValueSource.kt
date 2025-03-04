/*
 * Copyright 2010-2025 JetBrains s.r.o. and Kotlin Programming Language contributors.
 * Use of this source code is governed by the Apache 2.0 license that can be found in the license/LICENSE.txt file.
 */

package org.jetbrains.kotlin.nativeDistribution

import org.gradle.api.provider.MapProperty
import org.gradle.api.provider.ValueSource
import org.gradle.api.provider.ValueSourceParameters

/**
 * Prepare proto distribution in [output][NativeProtoDistributionValueSource.Parameters.output] by using
 * [input][NativeProtoDistributionValueSource.Parameters.input] as the template distribution and
 * [llvmProperties][NativeProtoDistributionValueSource.Parameters.llvmProperties] as LLVM Version specification.
 */
// No need to declare any output. We only need to make sure, that `obtain()` does get call regardless.
// Configuration cache will be automatically discarded if the `konan.properties` in the output has changed.
abstract class NativeProtoDistributionValueSource : ValueSource<Unit, NativeProtoDistributionValueSource.Parameters> {
    interface Parameters : ValueSourceParameters {
        val input: NativeDistributionProperty
        val output: NativeDistributionProperty
        val llvmProperties: MapProperty<String, String>
    }

    override fun obtain() {
        val input = parameters.input.get()
        val output = parameters.output.get()
        val llvmProperties = parameters.llvmProperties.get()
        output.root.asFile.deleteRecursively()
        input.konanPlatforms.asFile.copyRecursively(output.konanPlatforms.asFile, overwrite = true)
        output.konanProperties.asFile.bufferedWriter().use { out ->
            input.konanProperties.asFile.bufferedReader().use { input ->
                out.write(input.readText())
            }
            out.newLine()
            out.appendLine("# LLVM Version configuration:")
            llvmProperties.keys.sortedBy { it as String }.forEach { key ->
                out.appendLine("$key=${llvmProperties[key] as String}")
            }
        }
    }
}