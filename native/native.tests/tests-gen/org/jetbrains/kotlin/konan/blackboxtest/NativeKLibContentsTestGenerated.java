/*
 * Copyright 2010-2023 JetBrains s.r.o. and Kotlin Programming Language contributors.
 * Use of this source code is governed by the Apache 2.0 license that can be found in the license/LICENSE.txt file.
 */

package org.jetbrains.kotlin.konan.blackboxtest;

import com.intellij.testFramework.TestDataPath;
import org.jetbrains.kotlin.test.util.KtTestUtil;
import org.junit.jupiter.api.Tag;
import org.jetbrains.kotlin.test.TestMetadata;
import org.junit.jupiter.api.Nested;
import org.junit.jupiter.api.Test;

import java.io.File;
import java.util.regex.Pattern;

/** This class is generated by {@link org.jetbrains.kotlin.generators.tests.GenerateNativeTestsKt}. DO NOT MODIFY MANUALLY */
@SuppressWarnings("all")
@TestMetadata("native/native.tests/testData/klibContents")
@TestDataPath("$PROJECT_ROOT")
@Tag("k1libContents")
public class NativeKLibContentsTestGenerated extends AbstractNativeKlibContentsTest {
    @Test
    public void testAllFilesPresentInKlibContents() throws Exception {
        KtTestUtil.assertAllTestsPresentByMetadataWithExcluded(this.getClass(), new File("native/native.tests/testData/klibContents"), Pattern.compile("^([^_](.+)).kt$"), null, true);
    }

    @Test
    @TestMetadata("annotations.kt")
    public void testAnnotations() throws Exception {
        runTest("native/native.tests/testData/klibContents/annotations.kt");
    }

    @Test
    @TestMetadata("annotations_source_retention.kt")
    public void testAnnotations_source_retention() throws Exception {
        runTest("native/native.tests/testData/klibContents/annotations_source_retention.kt");
    }

    @Test
    @TestMetadata("data_class.kt")
    public void testData_class() throws Exception {
        runTest("native/native.tests/testData/klibContents/data_class.kt");
    }

    @Test
    @TestMetadata("kt55464_serializeTypeAnnotation.kt")
    public void testKt55464_serializeTypeAnnotation() throws Exception {
        runTest("native/native.tests/testData/klibContents/kt55464_serializeTypeAnnotation.kt");
    }

    @Test
    @TestMetadata("kt56018_value_parameters_annotations.kt")
    public void testKt56018_value_parameters_annotations() throws Exception {
        runTest("native/native.tests/testData/klibContents/kt56018_value_parameters_annotations.kt");
    }

    @Test
    @TestMetadata("property_accessors.kt")
    public void testProperty_accessors() throws Exception {
        runTest("native/native.tests/testData/klibContents/property_accessors.kt");
    }

    @Test
    @TestMetadata("type_annotations.kt")
    public void testType_annotations() throws Exception {
        runTest("native/native.tests/testData/klibContents/type_annotations.kt");
    }

    @Nested
    @TestMetadata("native/native.tests/testData/klibContents/builtinsSerializer")
    @TestDataPath("$PROJECT_ROOT")
    @Tag("k1libContents")
    public class BuiltinsSerializer {
        @Test
        public void testAllFilesPresentInBuiltinsSerializer() throws Exception {
            KtTestUtil.assertAllTestsPresentByMetadataWithExcluded(this.getClass(), new File("native/native.tests/testData/klibContents/builtinsSerializer"), Pattern.compile("^([^_](.+)).kt$"), null, true);
        }

        @Test
        @TestMetadata("annotatedEnumEntry.kt")
        public void testAnnotatedEnumEntry() throws Exception {
            runTest("native/native.tests/testData/klibContents/builtinsSerializer/annotatedEnumEntry.kt");
        }

        @Test
        @TestMetadata("annotationTargets.kt")
        public void testAnnotationTargets() throws Exception {
            runTest("native/native.tests/testData/klibContents/builtinsSerializer/annotationTargets.kt");
        }

        @Test
        @TestMetadata("binaryRetainedAnnotation.kt")
        public void testBinaryRetainedAnnotation() throws Exception {
            runTest("native/native.tests/testData/klibContents/builtinsSerializer/binaryRetainedAnnotation.kt");
        }

        @Test
        @TestMetadata("compileTimeConstants.kt")
        public void testCompileTimeConstants() throws Exception {
            runTest("native/native.tests/testData/klibContents/builtinsSerializer/compileTimeConstants.kt");
        }

        @Test
        @TestMetadata("nestedClassesAndObjects.kt")
        public void testNestedClassesAndObjects() throws Exception {
            runTest("native/native.tests/testData/klibContents/builtinsSerializer/nestedClassesAndObjects.kt");
        }

        @Test
        @TestMetadata("propertyAccessorAnnotations.kt")
        public void testPropertyAccessorAnnotations() throws Exception {
            runTest("native/native.tests/testData/klibContents/builtinsSerializer/propertyAccessorAnnotations.kt");
        }

        @Test
        @TestMetadata("simple.kt")
        public void testSimple() throws Exception {
            runTest("native/native.tests/testData/klibContents/builtinsSerializer/simple.kt");
        }

        @Test
        @TestMetadata("sourceRetainedAnnotation.kt")
        public void testSourceRetainedAnnotation() throws Exception {
            runTest("native/native.tests/testData/klibContents/builtinsSerializer/sourceRetainedAnnotation.kt");
        }

        @Test
        @TestMetadata("stringConcatenation.kt")
        public void testStringConcatenation() throws Exception {
            runTest("native/native.tests/testData/klibContents/builtinsSerializer/stringConcatenation.kt");
        }

        @Test
        @TestMetadata("typeParameterAnnotation.kt")
        public void testTypeParameterAnnotation() throws Exception {
            runTest("native/native.tests/testData/klibContents/builtinsSerializer/typeParameterAnnotation.kt");
        }

        @Nested
        @TestMetadata("native/native.tests/testData/klibContents/builtinsSerializer/annotationArguments")
        @TestDataPath("$PROJECT_ROOT")
        @Tag("k1libContents")
        public class AnnotationArguments {
            @Test
            public void testAllFilesPresentInAnnotationArguments() throws Exception {
                KtTestUtil.assertAllTestsPresentByMetadataWithExcluded(this.getClass(), new File("native/native.tests/testData/klibContents/builtinsSerializer/annotationArguments"), Pattern.compile("^([^_](.+)).kt$"), null, true);
            }

            @Test
            @TestMetadata("annotation.kt")
            public void testAnnotation() throws Exception {
                runTest("native/native.tests/testData/klibContents/builtinsSerializer/annotationArguments/annotation.kt");
            }

            @Test
            @TestMetadata("enum.kt")
            public void testEnum() throws Exception {
                runTest("native/native.tests/testData/klibContents/builtinsSerializer/annotationArguments/enum.kt");
            }

            @Test
            @TestMetadata("primitiveArrays.kt")
            public void testPrimitiveArrays() throws Exception {
                runTest("native/native.tests/testData/klibContents/builtinsSerializer/annotationArguments/primitiveArrays.kt");
            }

            @Test
            @TestMetadata("primitives.kt")
            public void testPrimitives() throws Exception {
                runTest("native/native.tests/testData/klibContents/builtinsSerializer/annotationArguments/primitives.kt");
            }

            @Test
            @TestMetadata("string.kt")
            public void testString() throws Exception {
                runTest("native/native.tests/testData/klibContents/builtinsSerializer/annotationArguments/string.kt");
            }

            @Test
            @TestMetadata("varargs.kt")
            public void testVarargs() throws Exception {
                runTest("native/native.tests/testData/klibContents/builtinsSerializer/annotationArguments/varargs.kt");
            }
        }
    }

    @Nested
    @TestMetadata("native/native.tests/testData/klibContents/klib")
    @TestDataPath("$PROJECT_ROOT")
    @Tag("k1libContents")
    public class Klib {
        @Test
        public void testAllFilesPresentInKlib() throws Exception {
            KtTestUtil.assertAllTestsPresentByMetadataWithExcluded(this.getClass(), new File("native/native.tests/testData/klibContents/klib"), Pattern.compile("^([^_](.+)).kt$"), null, true);
        }

        @Test
        @TestMetadata("fieldAnnotations.kt")
        public void testFieldAnnotations() throws Exception {
            runTest("native/native.tests/testData/klibContents/klib/fieldAnnotations.kt");
        }

        @Test
        @TestMetadata("receiverAnnotations.kt")
        public void testReceiverAnnotations() throws Exception {
            runTest("native/native.tests/testData/klibContents/klib/receiverAnnotations.kt");
        }
    }
}
