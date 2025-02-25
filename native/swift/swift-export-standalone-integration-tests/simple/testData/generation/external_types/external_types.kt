// KIND: STANDALONE
// FREE_COMPILER_ARGS: -opt-in=kotlinx.cinterop.ExperimentalForeignApi
// MODULE: main
// FILE: main.kt

fun produce_nsdate(): platform.Foundation.NSDate = TODO()

fun consume_nsdate(date: platform.Foundation.NSDate): Unit = TODO()

var store_nsdate: platform.Foundation.NSDate
    get() = TODO()
    set(newValue) = TODO()

// FILE: appkit.kt

fun produce_nsviewcontroller(): platform.AppKit.NSViewController = TODO()
