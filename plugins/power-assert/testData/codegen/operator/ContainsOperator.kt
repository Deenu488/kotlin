fun box() = expectThrowableMessage {
    assert("Name" in listOf("Hello", "World"))
} + expectThrowableMessage {
    // Test that we don't just search for `in` in the expression.
    assert(" in " in listOf("Hello", "World"))
} + expectThrowableMessage {
    // Test multiline case
    assert(
        " in "

                        in

                   listOf("Hello", "World")
    )
} + expectThrowableMessage {
    // Test that we don't assume whitespaces around the infix operator
    assert("Name"/*in*/in/*in*/listOf("Hello", "World"))
} + expectThrowableMessage {
    // Test nested `in`
    assert(("Name" in listOf("Hello", "World")) in listOf(true))
} + expectThrowableMessage {
    // Test with strings
    assert('a' in "Hello")
} + expectThrowableMessage {
    // Test with ranges
    assert(11 in 1..10)
} + expectThrowableMessage {
    // Test with map
    assert(3 in mapOf(1 to "one", 2 to "two"))
}
