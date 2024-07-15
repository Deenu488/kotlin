/*
 * Copyright 2010-2024 JetBrains s.r.o. and Kotlin Programming Language contributors.
 * Use of this source code is governed by the Apache 2.0 license that can be found in the license/LICENSE.txt file.
 */

// This file was generated automatically. See compiler/ir/ir.tree/tree-generator/ReadMe.md.
// DO NOT MODIFY IT MANUALLY.

@file:Suppress("DuplicatedCode")

package org.jetbrains.kotlin.ir.declarations.impl

import org.jetbrains.kotlin.descriptors.DescriptorVisibility
import org.jetbrains.kotlin.descriptors.TypeAliasDescriptor
import org.jetbrains.kotlin.ir.IrImplementationDetail
import org.jetbrains.kotlin.ir.ObsoleteDescriptorBasedAPI
import org.jetbrains.kotlin.ir.declarations.IrDeclarationOrigin
import org.jetbrains.kotlin.ir.declarations.IrFactory
import org.jetbrains.kotlin.ir.declarations.IrTypeAlias
import org.jetbrains.kotlin.ir.declarations.IrTypeParameter
import org.jetbrains.kotlin.ir.expressions.IrConstructorCall
import org.jetbrains.kotlin.ir.symbols.IrTypeAliasSymbol
import org.jetbrains.kotlin.ir.types.IrType
import org.jetbrains.kotlin.name.Name

class IrTypeAliasImpl @IrImplementationDetail constructor(
    startOffset: Int,
    endOffset: Int,
    origin: IrDeclarationOrigin,
    override val factory: IrFactory,
    override var name: Name,
    override var visibility: DescriptorVisibility,
    symbol: IrTypeAliasSymbol,
    override var isActual: Boolean,
    override var expandedType: IrType,
) : IrTypeAlias(
    startOffset = startOffset,
    endOffset = endOffset,
    origin = origin,
    symbol = symbol,
) {
    override var annotations: List<IrConstructorCall> = emptyList()

    override var typeParameters: List<IrTypeParameter> = emptyList()

    @ObsoleteDescriptorBasedAPI
    override val descriptor: TypeAliasDescriptor
        get() = symbol.descriptor

    init {
        symbol.bind(this)
    }
}
