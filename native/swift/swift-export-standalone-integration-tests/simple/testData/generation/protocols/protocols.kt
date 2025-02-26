// KIND: STANDALONE
// MODULE: main
// FILE: main.kt

object MyObject

interface Foeble {
    fun bar(arg: Foeble): Foeble
    val baz: Foeble
}

interface Barable: Foeble {
    override fun bar(arg: Foeble): Barable
    override val baz: Foeble
}

interface Bazzable

class Foo: Foeble {
    override fun bar(arg: Foeble): Foo = this
    override val baz: Foeble get() = this
}

class Bar: Barable, Foeble, Bazzable {
    override fun bar(arg: Foeble): Bar = this
    override val baz: Bar get() = this
}

// FILE: less_trivial.kt

interface ContainerProtocol {
    open class NestedClass

    interface NestedProtocol {
        open class NestedClass2
    }
}

// FIXME: See the commend above on ContainerProtocol.NestedClass

class INHERITANCE_COUPLE : ContainerProtocol.NestedClass(), ContainerProtocol
class INHERITANCE_SINGLE_PROTO : ContainerProtocol.NestedClass()


object OBJECT_WITH_INTERFACE_INHERITANCE: ContainerProtocol

enum class ENUM_WITH_INTERFACE_INHERITANCE: ContainerProtocol

// FILE: existentials.kt

fun normal(value: Foeble): Foeble = value
var normal: Foeble = Bar()
fun nullable(value: Foeble?): Foeble? = value
var nullable: Foeble? = null
fun list(value: List<Foeble>): List<Foeble> = value
var list: List<Foeble> = emptyList()