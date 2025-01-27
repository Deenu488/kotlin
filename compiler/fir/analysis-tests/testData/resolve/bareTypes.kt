// LATEST_LV_DIFFERENCE
// RUN_PIPELINE_TILL: BACKEND
interface A<out T>

interface MutableA<T> : A<T> {
    fun add(x: T)
}

interface MutableString : MutableA<String>

fun test(a: A<String>) {
    (a <!UNCHECKED_CAST!>as? <!UNSAFE_DOWNCAST_WRT_VARIANCE!>MutableA<!><!>)?.add("")
    (a <!UNCHECKED_CAST!>as <!UNSAFE_DOWNCAST_WRT_VARIANCE!>MutableA<!><!>).add("")
}

fun test2(a: A<String>) {
    val b = a as MutableString
    b.add("")
}

fun test3(a: A<String>) {
    if (a is <!CANNOT_CHECK_FOR_ERASED_DEPRECATION_WARNING, UNSAFE_DOWNCAST_WRT_VARIANCE!>MutableA<!>) {
        a.add("")
    }
}
