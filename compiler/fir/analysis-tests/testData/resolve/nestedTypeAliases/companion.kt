// RUN_PIPELINE_TILL: FRONTEND
// WITH_STDLIB
// SKIP_FIR_DUMP

class Class {
    class Nested

    typealias NestedTA = Nested

    class NestedWithCompanion {
        companion object {
            val prop1 = true
            val prop2 = ""
        }
    }

    typealias NestedWithCompanionTA = NestedWithCompanion

    object Object {
        val prop1 = true
        val prop2 = ""
    }

    typealias ObjectTA = Object

    fun test() {
        val companionObject = NestedWithCompanionTA
        companionObject.prop1.not()
        companionObject.prop2.uppercase()

        val simpleObject = ObjectTA
        simpleObject.prop1.not()
        simpleObject.prop2.uppercase()

        val negative = <!NO_COMPANION_OBJECT!>NestedTA<!>}
}
