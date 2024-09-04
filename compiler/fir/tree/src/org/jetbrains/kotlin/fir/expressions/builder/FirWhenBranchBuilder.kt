/*
 * Copyright 2010-2024 JetBrains s.r.o. and Kotlin Programming Language contributors.
 * Use of this source code is governed by the Apache 2.0 license that can be found in the license/LICENSE.txt file.
 */

package org.jetbrains.kotlin.fir.expressions.builder

import org.jetbrains.kotlin.KtSourceElement
import org.jetbrains.kotlin.fir.expressions.FirWhenBranch
import kotlin.contracts.ExperimentalContracts
import kotlin.contracts.InvocationKind
import kotlin.contracts.contract

@OptIn(ExperimentalContracts::class)
inline fun buildWhenBranch(guardKeywordSource: KtSourceElement?, init: FirAbstractWhenBranchBuilder.() -> Unit): FirWhenBranch {
    contract {
        callsInPlace(init, InvocationKind.EXACTLY_ONCE)
    }
    return when (guardKeywordSource) {
        null -> FirRegularWhenBranchBuilder().apply(init)
        else -> FirGuardedWhenBranchBuilder().apply {
            guardKeyword = guardKeywordSource
            init()
        }
    }.build()
}
