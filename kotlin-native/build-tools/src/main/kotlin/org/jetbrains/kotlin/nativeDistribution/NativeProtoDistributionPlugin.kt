/*
 * Copyright 2010-2025 JetBrains s.r.o. and Kotlin Programming Language contributors.
 * Use of this source code is governed by the Apache 2.0 license that can be found in the license/LICENSE.txt file.
 */

package org.jetbrains.kotlin.nativeDistribution

import org.gradle.api.Plugin
import org.gradle.api.Project
import org.gradle.kotlin.dsl.*

class NativeProtoDistributionPlugin : Plugin<Project> {
    override fun apply(project: Project) {
        val distribution = project.layout.buildDirectory.dir("nativeProtoDistribution").map { NativeDistribution(it) }
        val llvm = project.llvmDistributionSource.asProperties // keep it outside provider creation block below, so any error would get surfaced in CLI output
        project.providers.of(NativeProtoDistributionValueSource::class) {
            parameters {
                input.set(NativeDistribution(project.project(":kotlin-native").layout.projectDirectory))
                output.set(project.layout.buildDirectory.dir("nativeProtoDistribution").map { NativeDistribution(it) })
                llvmProperties.set(llvm)
            }
        }.get() // Make sure, that the proto distribution is set up.
        project.extensions.create<NativeProtoDistribution>("nativeProtoDistribution", distribution.get())
    }
}