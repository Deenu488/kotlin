/*
 * Copyright 2010-2024 JetBrains s.r.o. and Kotlin Programming Language contributors.
 * Use of this source code is governed by the Apache 2.0 license that can be found in the license/LICENSE.txt file.
 */

package org.jetbrains.kotlin

import org.gradle.api.Plugin
import org.gradle.api.Project
import org.gradle.kotlin.dsl.*
import org.jetbrains.kotlin.nativeDistribution.NativeProtoDistributionPlugin

open class PlatformManagerPlugin : Plugin<Project> {
    override fun apply(project: Project) {
        project.apply<NativeProtoDistributionPlugin>()
        project.extensions.add("platformManager", project.objects.platformManagerProvider(project).platformManager.get())
    }
}
