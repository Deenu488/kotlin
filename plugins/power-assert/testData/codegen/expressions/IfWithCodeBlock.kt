fun box(): String {
    return test(2, 1) +
            test(1, 2)
}

fun test(a: Int, b: Int) = expectThrowableMessage {
    assert(if(a > b) { a == b } else { a.inc() == 3 })
}
