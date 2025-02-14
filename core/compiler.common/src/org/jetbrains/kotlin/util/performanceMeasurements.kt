/*
 * Copyright 2010-2025 JetBrains s.r.o. and Kotlin Programming Language contributors.
 * Use of this source code is governed by the Apache 2.0 license that can be found in the license/LICENSE.txt file.
 */

package org.jetbrains.kotlin.util

interface PerformanceMeasurement {
    fun render(lines: Int): String
}

enum class PhaseMeasurementType {
    Initialization,
    Analysis,
    IrGeneration,
    IrLowering,
    BackendGeneration,
}

sealed class PhasePerformanceMeasurement(val milliseconds: Long) : PerformanceMeasurement {
    abstract val phase: PhaseMeasurementType
    abstract val name: String
    override fun render(lines: Int): String = "%20s%8s ms".format(name, milliseconds) +
            if (phase != PhaseMeasurementType.Initialization && lines != 0) {
                val lps = lines.toDouble() * 1000 / milliseconds
                "%12.3f loc/s".format(lps)
            } else {
                ""
            }
}

class CompilerInitializationMeasurement(milliseconds: Long) : PhasePerformanceMeasurement(milliseconds) {
    override val phase = PhaseMeasurementType.Initialization
    override val name: String = "INIT"
}

class CodeAnalysisMeasurement(milliseconds: Long) : PhasePerformanceMeasurement(milliseconds) {
    override val phase: PhaseMeasurementType = PhaseMeasurementType.Analysis
    override val name: String = "ANALYZE"
}

class IrGenerationMeasurement(milliseconds: Long) : PhasePerformanceMeasurement(milliseconds) {
    override val phase: PhaseMeasurementType = PhaseMeasurementType.IrGeneration
    override val name: String = "IR GENERATION"
}

class IrLoweringMeasurement(milliseconds: Long) : PhasePerformanceMeasurement(milliseconds) {
    override val phase: PhaseMeasurementType = PhaseMeasurementType.IrLowering
    override val name: String = "IR LOWERING"
}

class BackendGenerationMeasurement(milliseconds: Long) : PhasePerformanceMeasurement(milliseconds) {
    override val phase: PhaseMeasurementType = PhaseMeasurementType.BackendGeneration
    override val name: String = "BACKEND GENERATION"
}

class JitCompilationMeasurement(val milliseconds: Long) : PerformanceMeasurement {
    override fun render(lines: Int): String = "JIT time is $milliseconds ms"
}

class GarbageCollectionMeasurement(val garbageCollectionKind: String, val milliseconds: Long, val count: Long) : PerformanceMeasurement {
    override fun render(lines: Int): String = "GC time for $garbageCollectionKind is $milliseconds ms, $count collections"
}

sealed class CounterMeasurement(val count: Int, val milliseconds: Long) : PerformanceMeasurement {
    abstract val description: String
    override fun render(lines: Int): String =
        "$description performed $count times, total time $milliseconds ms"
}

class FindJavaClassMeasurement(count: Int, milliseconds: Long) : CounterMeasurement(count, milliseconds) {
    override val description: String = "Find Java class"
}

class BinaryClassFromKotlinFileMeasurement(count: Int, milliseconds: Long) : CounterMeasurement(count, milliseconds) {
    override val description: String = "Binary class from Kotlin file"
}

class PerformanceCounterMeasurement(private val counterReport: String) : PerformanceMeasurement {
    override fun render(lines: Int): String = counterReport
}