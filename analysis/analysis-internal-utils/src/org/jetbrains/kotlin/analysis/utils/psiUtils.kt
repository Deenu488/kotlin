/*
 * Copyright 2010-2024 JetBrains s.r.o. and Kotlin Programming Language contributors.
 * Use of this source code is governed by the Apache 2.0 license that can be found in the license/LICENSE.txt file.
 */

package org.jetbrains.kotlin.analysis.utils

import com.intellij.psi.PsiAnonymousClass
import com.intellij.psi.PsiClass
import com.intellij.psi.PsiClassOwner
import com.intellij.psi.PsiErrorElement
import com.intellij.psi.util.childrenOfType
import com.intellij.psi.util.parentOfType
import org.jetbrains.kotlin.name.ClassId
import org.jetbrains.kotlin.name.FqName
import org.jetbrains.kotlin.psi.*
import org.jetbrains.kotlin.psi.psiUtil.getNextSiblingIgnoringWhitespaceAndComments

public val PsiClass.classId: ClassId?
    get() {
        val packageName = (containingFile as? PsiClassOwner)?.packageName ?: return null
        if (qualifiedName == null) return null

        val classesChain = generateSequence(this) { it.containingClass }
        if (classesChain.any { it is PsiAnonymousClass }) return null

        val classNames = classesChain.mapTo(mutableListOf()) { it.name }.asReversed()
        if (classNames.any { it == null }) return null

        return ClassId(FqName(packageName), FqName(classNames.joinToString(separator = ".")), isLocal = false)
    }



public fun PsiClass.isLocalClass(): Boolean {
    val qualifiedName = this.qualifiedName ?: return true
    val classId = classId ?: return true

    /*
    For a local class:
    qualifiedName: javax.swing.JSlider$1SmartHashtable.LabelUIResource
    classId.asFqNameString(): javax.swing.JSlider.SmartHashtable.LabelUIResource

    For a nested class with:
    qualifiedName: pckg.A$B
    classId.asFqNameString(): pckg.A.B

    For a class with $ in name:
    qualifiedName: pckg.With$InName
    classId.asFqNameString(): pckg.With$InName
     */
    return classId.asFqNameString().replace('$', '.') != qualifiedName.replace('$', '.')
}

/**
 * A common pattern of illegal code, where an annotation is dangling (not attached to anything),
 * or unclosed and followed by a declaration.
 *
 * Examples:
 *
 * ```kotlin
 * class C1 {
 *     @Ann1 @Ann2
 * }
 *
 * class C2 {
 *     @Ann(
 *     fun foo() {}
 * }
 *
 * @Ann("argument"
 * fun foo() {}
 * ```
 * @see org.jetbrains.kotlin.fir.declarations.FirDanglingModifierList
 */
public fun KtDeclarationModifierList.isNonLocalDanglingModifierList(): Boolean {
    fun KtElement.hasSyntaxError() = getNextSiblingIgnoringWhitespaceAndComments() is PsiErrorElement

    fun KtDeclarationModifierList.isLocal(): Boolean {
        val parent = parent
        if (parent is KtFile) return false
        if (parent is KtClassBody && (parent.parent as? KtClassOrObject)?.isLocal() == false) return false
        return true
    }

    if (isLocal()) {
        // We ignore local dangling modifier lists for LL file structure purposes
        return false
    }

    if (hasSyntaxError()) return true

    val lastAnnotation = childrenOfType<KtAnnotationEntry>().lastOrNull() ?: return false
    if (lastAnnotation.hasSyntaxError()) return true

    val argumentList = lastAnnotation.childrenOfType<KtValueArgumentList>().singleOrNull() ?: return false
    if (argumentList.hasSyntaxError()) return true

    // There can be multiple arguments, for example,
    // @Ann("real argument 1"
    // fun foo() {} // fake argument 2
    val arguments = argumentList.childrenOfType<KtValueArgument>()
    return arguments.any { it.hasSyntaxError() }
}

public fun KtElement.isInsideNonLocalDanglingModifierList(): Boolean =
    parentOfType<KtDeclarationModifierList>()?.isNonLocalDanglingModifierList() == true
