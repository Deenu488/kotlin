/*
 * Copyright 2010-2025 JetBrains s.r.o. and Kotlin Programming Language contributors.
 * Use of this source code is governed by the Apache 2.0 license that can be found in the license/LICENSE.txt file.
 */

package org.jetbrains.kotlin.library.metadata.impl

import org.jetbrains.kotlin.descriptors.ModuleDescriptor
import org.jetbrains.kotlin.library.KotlinLibrary
import org.jetbrains.kotlin.library.metadata.*
import org.jetbrains.kotlin.library.metadataVersion
import org.jetbrains.kotlin.metadata.deserialization.MetadataVersion
import org.jetbrains.kotlin.name.FqName
import org.jetbrains.kotlin.serialization.deserialization.DeserializationConfiguration
import org.jetbrains.kotlin.serialization.deserialization.IncompatibleVersionErrorData
import org.jetbrains.kotlin.storage.StorageManager

// TODO decouple and move interop-specific logic back to Kotlin/Native.
open class KlibMetadataDeserializedPackageFragmentsFactoryImpl : KlibMetadataDeserializedPackageFragmentsFactory {
    // TODO find a way to deduplicate this method with extension property from KlibBasedSymbolProvider
    private fun KotlinLibrary.getIncompatibility(ownMetadataVersion: MetadataVersion): IncompatibleVersionErrorData<MetadataVersion>? {
        val libraryMetadataVersion = this.metadataVersion ?: MetadataVersion.INVALID_VERSION
        if (libraryMetadataVersion.isCompatible(ownMetadataVersion)) return null
        return IncompatibleVersionErrorData(
            actualVersion = libraryMetadataVersion,
            compilerVersion = MetadataVersion.INSTANCE,
            languageVersion = ownMetadataVersion,
            expectedVersion = ownMetadataVersion.lastSupportedVersionWithThisLanguageVersion(libraryMetadataVersion.isStrictSemantics),
            filePath = this.libraryFile.absolutePath,
        )
    }

    override fun createDeserializedPackageFragments(
        library: KotlinLibrary,
        packageFragmentNames: List<String>,
        moduleDescriptor: ModuleDescriptor,
        packageAccessedHandler: PackageAccessHandler?,
        storageManager: StorageManager,
        configuration: DeserializationConfiguration
    ): List<KlibMetadataDeserializedPackageFragment> {
        val libraryHeader = (packageAccessedHandler ?: SimplePackageAccessHandler).loadModuleHeader(library)

        return packageFragmentNames.flatMap {
            val packageFqName = FqName(it)
            // TODO is it enough to fill incompatibility or we should do the manual check?
            //  I would say that the check must happen inside FirIncompatibleClassExpressionChecker
            val containerSource = KlibDeserializedContainerSource(
                library, libraryHeader, configuration, packageFqName, incompatibility = library.getIncompatibility(configuration.metadataVersion)
            )
            val parts = library.packageMetadataParts(packageFqName.asString())
            val isBuiltInModule = moduleDescriptor.builtIns.builtInsModule === moduleDescriptor
            parts.map { partName ->
                if (isBuiltInModule)
                    BuiltInKlibMetadataDeserializedPackageFragment(
                        packageFqName,
                        library,
                        packageAccessedHandler,
                        storageManager,
                        moduleDescriptor,
                        partName,
                        containerSource
                    )
                else
                    KlibMetadataDeserializedPackageFragment(
                        packageFqName,
                        library,
                        packageAccessedHandler,
                        storageManager,
                        moduleDescriptor,
                        partName,
                        containerSource
                    )
            }
        }
    }

    override fun createCachedPackageFragments(
        packageFragments: List<ByteArray>,
        moduleDescriptor: ModuleDescriptor,
        storageManager: StorageManager
    ) = packageFragments.map { byteArray ->
        KlibMetadataCachedPackageFragment(byteArray, storageManager, moduleDescriptor)
    }

}
