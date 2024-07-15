/*
 * Copyright 2010-2024 JetBrains s.r.o. and Kotlin Programming Language contributors.
 * Use of this source code is governed by the Apache 2.0 license that can be found in the license/LICENSE.txt file.
 */

// This file was generated automatically. See compiler/ir/ir.tree/tree-generator/ReadMe.md.
// DO NOT MODIFY IT MANUALLY.

package org.jetbrains.kotlin.ir.expressions

import org.jetbrains.kotlin.ir.types.IrType
import org.jetbrains.kotlin.ir.util.transformInPlace
import org.jetbrains.kotlin.ir.visitors.IrElementTransformer
import org.jetbrains.kotlin.ir.visitors.IrElementVisitor
import org.jetbrains.kotlin.utils.SmartList

/**
 * Generated from: [org.jetbrains.kotlin.ir.generator.IrTree.dynamicOperatorExpression]
 */
abstract class IrDynamicOperatorExpression(
    startOffset: Int,
    endOffset: Int,
    type: IrType,
    var operator: IrDynamicOperator,
) : IrDynamicExpression(
    startOffset = startOffset,
    endOffset = endOffset,
    type = type,
) {
    lateinit var receiver: IrExpression

    val arguments: MutableList<IrExpression> = SmartList()

    override fun <R, D> accept(visitor: IrElementVisitor<R, D>, data: D): R =
        visitor.visitDynamicOperatorExpression(this, data)

    override fun <D> acceptChildren(visitor: IrElementVisitor<Unit, D>, data: D) {
        receiver.accept(visitor, data)
        arguments.forEach { it.accept(visitor, data) }
    }

    override fun <D> transformChildren(transformer: IrElementTransformer<D>, data: D) {
        receiver = receiver.transform(transformer, data)
        arguments.transformInPlace(transformer, data)
    }
}
