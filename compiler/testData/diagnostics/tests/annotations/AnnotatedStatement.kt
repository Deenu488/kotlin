// ISSUE: KT-67014, KT-67254
// WITH_STDLIB
// FILE: JavaAnn.java

public @interface JavaAnn {}

// FILE: JavaAnnWithTarget.java

@Target(ElementType.TYPE)
public @interface JavaAnnWithTarget {}

// FILE: test.kt
annotation class KotlinAnn

fun foo(list: MutableList<Int>, arr: Array<String>) {
    @JavaAnnWithTarget @JavaAnn @KotlinAnn
    when { else -> {} }

    @JavaAnnWithTarget @JavaAnn @KotlinAnn
    while (true) { break }

    @JavaAnnWithTarget @JavaAnn @KotlinAnn
    if (true) {}

    var x = <!VARIABLE_WITH_REDUNDANT_INITIALIZER!>1<!>

    @JavaAnnWithTarget @JavaAnn @KotlinAnn
    x = 2

    @JavaAnnWithTarget @JavaAnn @KotlinAnn
    x += 2

    @JavaAnnWithTarget @JavaAnn @KotlinAnn
    list += 2

    @JavaAnnWithTarget @JavaAnn @KotlinAnn
    arr[0] = ""

    @JavaAnnWithTarget @JavaAnn @KotlinAnn
    arr[1] += "*"
}
