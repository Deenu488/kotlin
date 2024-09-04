// LANGUAGE: +WhenGuards
// WITH_EXTENDED_CHECKERS
// FIR_IDENTICAL

fun ok(x: Any, boolExpr: Boolean) {
    when (x) {
        is String <!UNSUPPORTED_FEATURE!>if boolExpr<!> -> "hello"
    }
}

fun wrongAnd(x: Any, boolExpr: Boolean) {
    when (x) {
        is String <!UNSUPPORTED_FEATURE!>&& boolExpr<!> -> "hello"
    }
}

fun comma(x: Any, boolExpr: Boolean) {
    when (x) {
        is String, is Int <!UNSUPPORTED_FEATURE!>&& boolExpr<!> -> "hello"
    }
}
