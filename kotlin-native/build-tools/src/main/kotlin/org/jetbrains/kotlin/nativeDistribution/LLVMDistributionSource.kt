/*
 * Copyright 2010-2025 JetBrains s.r.o. and Kotlin Programming Language contributors.
 * Use of this source code is governed by the Apache 2.0 license that can be found in the license/LICENSE.txt file.
 */

package org.jetbrains.kotlin.nativeDistribution

import org.gradle.api.Project
import org.jetbrains.kotlin.konan.target.HostManager
import org.jetbrains.kotlin.konan.target.KonanTarget
import java.nio.file.Path
import java.nio.file.Paths
import java.util.Properties
import kotlin.io.path.absolutePathString
import kotlin.io.path.isDirectory

private val supportedHosts = listOf(KonanTarget.LINUX_X64, KonanTarget.MACOS_ARM64, KonanTarget.MACOS_X64, KonanTarget.MINGW_X64)

enum class LLVMDistributionKind {
    DEV,
    ESSENTIALS,
}

data class RemoteLLVMDistribution(val host: KonanTarget, val kind: LLVMDistributionKind, val address: String) {
    val name: String
        get() = address.substringAfterLast("/")

    val dir: String
        get() = address.substringBeforeLast("/")
}

sealed interface LLVMDistributionSource {
    class Default(val distributions: List<RemoteLLVMDistribution>) : LLVMDistributionSource
    class Next(val distributions: List<RemoteLLVMDistribution>) : LLVMDistributionSource
    class Local(val path: Path) : LLVMDistributionSource
}

private fun Project.getRemoteLLVMDistribution(source: String, kind: LLVMDistributionKind, host: KonanTarget): RemoteLLVMDistribution? {
    val propertyName = "kotlin.native.llvm.${source}.${kind.name.lowercase()}.${host.name.lowercase()}"
    val address = findProperty(propertyName) as String?
    if (address == null) {
        logger.warn("Missing the $source LLVM distribution ($kind) for $host. Specify it with $propertyName")
        return null
    }
    return RemoteLLVMDistribution(host, kind, address)
}

private fun Project.getRemoteLLVMDistributions(source: String): List<RemoteLLVMDistribution> {
    return supportedHosts.flatMap { host ->
        LLVMDistributionKind.values().mapNotNull { kind ->
            getRemoteLLVMDistribution(source, kind, host)
        }
    }
}

/**
 * Reads `kotlin.native.llvm` property to determine which LLVM to use.
 * Possible options:
 * - `default`
 * - `next`
 * - absolute path to the locally built LLVM distribution
 */
val Project.llvmDistributionSource: LLVMDistributionSource
    get() {
        val llvmProperty = property("kotlin.native.llvm") as String
        return when (llvmProperty) {
            "default" -> LLVMDistributionSource.Default(getRemoteLLVMDistributions("default"))
            "next" -> LLVMDistributionSource.Next(getRemoteLLVMDistributions("next"))
            else -> {
                val path = Paths.get(llvmProperty)
                check(path.isAbsolute) {
                    "Path to the local LLVM distribution must be absolute. kotlin.native.llvm=`$path`"
                }
                check(path.isDirectory()) {
                    "The local LLVM distribution must be a directory. kotlin.native.llvm=`$path`"
                }
                LLVMDistributionSource.Local(path)
            }
        }
    }

private val LLVMDistributionKind.nameForProperties: String
    get() = when (this) {
        LLVMDistributionKind.DEV -> "dev"
        LLVMDistributionKind.ESSENTIALS -> "user"
    }

private val List<RemoteLLVMDistribution>.remoteAsProperties: Map<String, String>
    get() = buildMap {
        put("predefinedLlvmDistributions", this@remoteAsProperties.joinToString(separator = " ") { it.name })
        this@remoteAsProperties.forEach {
            put("${it.name}.default", it.dir)
            put("llvm.${it.host}.${it.kind.nameForProperties}", it.name)
        }
    }

private val Path.localAsProperties: Map<String, String>
    get() = buildMap {
        val host = HostManager.host
        val absolutePath = absolutePathString()
        LLVMDistributionKind.values().forEach { kind ->
            put("llvm.$host.${kind.nameForProperties}", absolutePath)
        }
    }

/**
 * Convert the source to [Map] compatible with `konan.properties`
 */
val LLVMDistributionSource.asProperties: Map<String, String>
    get() = when (this) {
        is LLVMDistributionSource.Local -> this.path.localAsProperties
        is LLVMDistributionSource.Default -> this.distributions.remoteAsProperties
        is LLVMDistributionSource.Next -> this.distributions.remoteAsProperties
    }