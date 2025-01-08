/*
 * Copyright 2010-2025 JetBrains s.r.o. and Kotlin Programming Language contributors.
 * Use of this source code is governed by the Apache 2.0 license that can be found in the license/LICENSE.txt file.
 */

package org.jetbrains.kotlin.gradle.targets.js.npm.tasks

import org.gradle.api.DefaultTask
import org.gradle.api.file.DirectoryProperty
import org.gradle.api.provider.ListProperty
import org.gradle.api.provider.Property
import org.gradle.api.tasks.*
import org.gradle.work.DisableCachingByDefault
import org.jetbrains.kotlin.gradle.targets.js.NpmPackageVersion
import org.jetbrains.kotlin.gradle.targets.js.npm.NodeJsEnvironmentTask
import org.jetbrains.kotlin.gradle.targets.js.npm.NpmProject
import org.jetbrains.kotlin.gradle.targets.js.npm.PackageJson
import org.jetbrains.kotlin.gradle.utils.getFile
import java.nio.channels.FileChannel
import java.nio.file.StandardOpenOption


@DisableCachingByDefault
abstract class KotlinToolingInstallTask :
    DefaultTask(),
    NodeJsEnvironmentTask {

    @get:Input
    internal abstract val versionsHash: Property<String>

    @get:Nested
    internal abstract val tools: ListProperty<NpmPackageVersion>

    @get:OutputDirectory
    abstract val destination: DirectoryProperty

    @Input
    val args: MutableList<String> = mutableListOf()

    // node_modules as OutputDirectory is performance problematic
    // so input will only be existence of its directory
    @get:Internal
    abstract val nodeModules: DirectoryProperty

    @TaskAction
    fun install() {
        val destinationDir = destination.getFile()
        val lockFile = destinationDir.resolve("lock")
        FileChannel.open(
            lockFile.toPath(),
            StandardOpenOption.CREATE, StandardOpenOption.WRITE
        ).use { channel ->
            channel.lock().use { _ ->
                val packageJsonFile = destinationDir.resolve(NpmProject.PACKAGE_JSON)
                if (nodeModules.getFile().exists()) return // return from install
                val toolingPackageJson = PackageJson(
                    "kotlin-npm-tooling",
                    versionsHash.get()
                ).apply {
                    private = true
                    dependencies.putAll(
                        tools.get().map { it.name to it.version }
                    )
                }

                toolingPackageJson.saveTo(packageJsonFile)

                nodeJsEnvironment.get().packageManager.prepareTooling(destinationDir)

                nodeJsEnvironment.get().packageManager.packageManagerExec(
                    services = services,
                    logger = logger,
                    nodeJs = nodeJsEnvironment.get(),
                    environment = packageManagerEnv.get(),
                    dir = destinationDir,
                    description = "Installation of tooling install",
                    args = args,
                )
            }
        }
    }

    companion object {
        const val NAME = "kotlinToolingInstall"
    }
}