/*
 * Copyright 2010-2024 JetBrains s.r.o. and Kotlin Programming Language contributors.
 * Use of this source code is governed by the Apache 2.0 license that can be found in the license/LICENSE.txt file.
 */

package org.jetbrains.rhizomedb.ir

import org.jetbrains.kotlin.backend.jvm.functionByName
import org.jetbrains.kotlin.ir.IrBuiltIns
import org.jetbrains.kotlin.ir.symbols.IrClassSymbol
import org.jetbrains.kotlin.ir.symbols.IrSimpleFunctionSymbol
import org.jetbrains.kotlin.name.Name
import org.jetbrains.rhizomedb.fir.RhizomedbPackages

val IrBuiltIns.entityTypeClass: IrClassSymbol
    get() {
        return requireNotNull(findClass(Name.identifier("EntityType"), RhizomedbPackages.packageFqName)) {
            "Where is EntityType?"
        }
    }

val IrBuiltIns.mixinType: IrClassSymbol
    get() {
        return requireNotNull(findClass(Name.identifier("Mixin"), RhizomedbPackages.packageFqName)) {
            "Where is EntityType?"
        }
    }

val IrBuiltIns.entityModuleFunction: IrSimpleFunctionSymbol
    get() {
        return findFunctions(Name.identifier("entityModule"), RhizomedbPackages.packageFqName).single()
    }

val IrBuiltIns.requiredTransientFunction: IrSimpleFunctionSymbol
    get() {
        return requireNotNull(entityTypeClass.functionByName("requiredTransient"))
    }