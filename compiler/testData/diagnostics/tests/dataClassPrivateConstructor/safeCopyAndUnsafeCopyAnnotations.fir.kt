// WITH_STDLIB
// LANGUAGE: +DataClassCopyRespectsConstructorVisibility
@file:OptIn(ExperimentalStdlibApi::class)

<!DATA_CLASS_SAFE_COPY_AND_UNSAFE_COPY_ARE_INCOMPATIBLE_ANNOTATIONS, DATA_CLASS_SAFE_COPY_REDUNDANT_ANNOTATION!>@kotlin.SafeCopy<!>
<!DATA_CLASS_SAFE_COPY_AND_UNSAFE_COPY_ARE_INCOMPATIBLE_ANNOTATIONS!>@kotlin.UnsafeCopy<!>
data class Data(val x: Int)

<!DATA_CLASS_SAFE_COPY_WRONG_ANNOTATION_TARGET!>@kotlin.SafeCopy<!>
class Foo

<!DATA_CLASS_SAFE_COPY_WRONG_ANNOTATION_TARGET!>@kotlin.UnsafeCopy<!>
class Bar
