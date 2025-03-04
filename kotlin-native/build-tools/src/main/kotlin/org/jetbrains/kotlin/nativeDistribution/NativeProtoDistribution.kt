/*
 * Copyright 2010-2025 JetBrains s.r.o. and Kotlin Programming Language contributors.
 * Use of this source code is governed by the Apache 2.0 license that can be found in the license/LICENSE.txt file.
 */

package org.jetbrains.kotlin.nativeDistribution

import org.gradle.api.Project
import org.gradle.kotlin.dsl.*
import javax.inject.Inject

internal open class NativeProtoDistribution @Inject constructor(val distribution: NativeDistribution)

/**
 * Get Native "proto" distribution.
 *
 * Only [konan.properties][NativeDistribution.konanProperties] is available inside it.
 *
 * Requires [NativeProtoDistributionPlugin] to be applied to the project.
 */
val Project.nativeProtoDistribution: NativeDistribution
    get() = extensions.getByType(NativeProtoDistribution::class).distribution