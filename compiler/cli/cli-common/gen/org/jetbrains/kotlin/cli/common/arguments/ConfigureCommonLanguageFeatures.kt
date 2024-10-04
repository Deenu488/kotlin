// DO NOT EDIT MANUALLY!
// Generated by generators/tests/org/jetbrains/kotlin/generators/arguments/GenerateCompilerArgumentsCopy.kt
// To regenerate run 'generateCompilerArgumentsCopy' task

package org.jetbrains.kotlin.cli.common.arguments

import org.jetbrains.kotlin.config.LanguageFeature

internal fun HashMap<LanguageFeature, LanguageFeature.State>.configureCommonLanguageFeatures(arguments: CommonCompilerArguments) {
    if (arguments.multiPlatform) {
        put(LanguageFeature.MultiPlatformProjects, LanguageFeature.State.ENABLED)
    }

    if (arguments.newInference) {
        put(LanguageFeature.NewInference, LanguageFeature.State.ENABLED)
        put(LanguageFeature.SamConversionPerArgument, LanguageFeature.State.ENABLED)
        put(LanguageFeature.FunctionReferenceWithDefaultValueAsOtherType, LanguageFeature.State.ENABLED)
        put(LanguageFeature.DisableCompatibilityModeForNewInference, LanguageFeature.State.ENABLED)
    }

    if (arguments.inlineClasses) {
        put(LanguageFeature.InlineClasses, LanguageFeature.State.ENABLED)
    }

    if (arguments.legacySmartCastAfterTry) {
        put(LanguageFeature.SoundSmartCastsAfterTry, LanguageFeature.State.DISABLED)
    }

    if (arguments.inferenceCompatibility) {
        put(LanguageFeature.InferenceCompatibility, LanguageFeature.State.ENABLED)
    }

    if (arguments.consistentDataClassCopyVisibility) {
        put(LanguageFeature.DataClassCopyRespectsConstructorVisibility, LanguageFeature.State.ENABLED)
    }

    if (arguments.unrestrictedBuilderInference) {
        put(LanguageFeature.UnrestrictedBuilderInference, LanguageFeature.State.ENABLED)
    }

    if (arguments.enableBuilderInference) {
        put(LanguageFeature.UseBuilderInferenceWithoutAnnotation, LanguageFeature.State.ENABLED)
    }

    if (arguments.selfUpperBoundInference) {
        put(LanguageFeature.TypeInferenceOnCallsWithSelfTypes, LanguageFeature.State.ENABLED)
    }

    if (arguments.contextReceivers) {
        put(LanguageFeature.ContextReceivers, LanguageFeature.State.ENABLED)
    }

    if (arguments.nonLocalBreakContinue) {
        put(LanguageFeature.BreakContinueInInlineLambdas, LanguageFeature.State.ENABLED)
    }

    if (arguments.directJavaActualization) {
        put(LanguageFeature.DirectJavaActualization, LanguageFeature.State.ENABLED)
    }

    if (arguments.multiDollarInterpolation) {
        put(LanguageFeature.MultiDollarInterpolation, LanguageFeature.State.ENABLED)
    }

    if (arguments.allowAnyScriptsInSourceRoots) {
        put(LanguageFeature.SkipStandaloneScriptsInSourceRoots, LanguageFeature.State.DISABLED)
    }

    if (arguments.whenGuards) {
        put(LanguageFeature.WhenGuards, LanguageFeature.State.ENABLED)
    }
}
