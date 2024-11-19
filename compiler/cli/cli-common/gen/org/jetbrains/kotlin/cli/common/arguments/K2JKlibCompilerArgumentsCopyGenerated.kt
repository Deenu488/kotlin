@file:Suppress("unused", "DuplicatedCode")

// DO NOT EDIT MANUALLY!
// Generated by generators/tests/org/jetbrains/kotlin/generators/arguments/GenerateCompilerArgumentsCopy.kt
// To regenerate run 'generateCompilerArgumentsCopy' task

package org.jetbrains.kotlin.cli.common.arguments

@OptIn(org.jetbrains.kotlin.utils.IDEAPluginsCompatibilityAPI::class)
fun copyK2JKlibCompilerArguments(from: K2JKlibCompilerArguments, to: K2JKlibCompilerArguments): K2JKlibCompilerArguments {
    copyCommonCompilerArguments(from, to)

    to.classpath = from.classpath
    to.destination = from.destination
    to.friendPaths = from.friendPaths?.copyOf()
    to.klibLibraries = from.klibLibraries
    to.moduleName = from.moduleName
    to.noReflect = from.noReflect
    to.noStdlib = from.noStdlib

    return to
}
