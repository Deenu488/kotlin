plugins {
    kotlin("jvm")
    id("jps-compatible")
    id("compiler-tests-convention")
}

dependencies {
    testApi(project(":compiler:fir:entrypoint"))
    testApi(project(":compiler:fir:fir-serialization"))
    testApi(project(":compiler:fir:fir2ir:jvm-backend"))
    testApi(project(":compiler:cli"))
    testImplementation(project(":compiler:ir.tree"))
    testImplementation(project(":compiler:backend.jvm.entrypoint"))
    testImplementation(project(":compiler:backend.jvm.lower"))
    testImplementation(project(":kotlin-util-klib-abi"))
    testImplementation(intellijCore())
    testImplementation(commonDependency("org.jetbrains.kotlin:kotlin-reflect")) { isTransitive = false }

    testRuntimeOnly(project(":core:descriptors.runtime"))

    testImplementation(projectTests(":generators:test-generator"))

    testApi(platform(libs.junit.bom))
    testImplementation(libs.junit.jupiter.api)
    testRuntimeOnly(libs.junit.jupiter.engine)
    testApi(libs.junit.platform.launcher)
    testApi(projectTests(":compiler:test-infrastructure"))
    testApi(projectTests(":compiler:test-infrastructure-utils"))
    testApi(projectTests(":compiler:tests-compiler-utils"))
    testApi(project(":libraries:tools:abi-comparator"))
    testApi(project(":compiler:tests-mutes:mutes-junit5"))

    /*
     * Actually those dependencies are needed only at runtime, but they
     *   declared as Api dependencies to propagate them to all modules
     *   which depend on current one
     */
    testApi(libs.intellij.fastutil)
    testApi(commonDependency("one.util:streamex"))
    testApi(commonDependency("org.jetbrains.intellij.deps.jna:jna"))
    testApi(jpsModel()) { isTransitive = false }
    testApi(jpsModelImpl()) { isTransitive = false }
    testApi(libs.junit4)

    testApi(toolsJarApi())
    testRuntimeOnly(toolsJar())
}

optInToExperimentalCompilerApi()
optInToUnsafeDuringIrConstructionAPI()

sourceSets {
    "main" { none() }
    "test" {
        projectDefault()
        generatedTestDir()
    }
}

compilerTests {
    testData(project(":compiler").isolated, "testData/diagnostics")
    testData(project(":compiler").isolated, "testData/codegen")
    testData(project(":compiler").isolated, "testData/debug")
    testData(project(":compiler").isolated, "testData/ir")
    testData(project(":compiler").isolated, "testData/klib")
    withStdlibCommon()
    withScriptRuntime()
    withTestJar()
    withAnnotations()
    withScriptingPlugin()
    withStdlibJsRuntime()
    withTestJsRuntime()
}

projectTest(
    jUnitMode = JUnitMode.JUnit5,
    defineJDKEnvVariables = listOf(
        JdkMajorVersion.JDK_1_8,
        JdkMajorVersion.JDK_11_0, // e.g. org.jetbrains.kotlin.test.runners.ForeignAnnotationsCompiledJavaTestGenerated.Java11Tests
        JdkMajorVersion.JDK_17_0,
        JdkMajorVersion.JDK_21_0, // e.g. org.jetbrains.kotlin.test.runners.codegen.FirLightTreeBlackBoxModernJdkCodegenTestGenerated.TestsWithJava21
    )
) {
    //workingDir = rootDir
    useJUnitPlatform()
    inputs.file(File(rootDir, "compiler/testData/mockJDK/jre/lib/rt.jar")).withNormalizer(ClasspathNormalizer::class)
    systemProperty(
        "org.jetbrains.kotlin.test.mockJdkRuntime",
        File(rootDir, "compiler/testData/mockJDK/jre/lib/rt.jar").absolutePath
    )
    inputs.file(File(rootDir, "compiler/testData/mockJDKModified/rt.jar")).withNormalizer(ClasspathNormalizer::class)
    systemProperty(
        "org.jetbrains.kotlin.test.mockJDKModifiedRuntime",
        File(rootDir, "compiler/testData/mockJDKModified/rt.jar").absolutePath
    )
    inputs.file(File(rootDir, "compiler/testData/mockJDK/jre/lib/annotations.jar")).withNormalizer(ClasspathNormalizer::class)
    systemProperty(
        "org.jetbrains.kotlin.test.mockJdkAnnotationsJar",
        File(rootDir, "compiler/testData/mockJDK/jre/lib/annotations.jar").absolutePath
    )
    inputs.dir(File(rootDir, "third-party/annotations")).withPathSensitivity(PathSensitivity.RELATIVE)
    systemProperty(
        "third-party/annotations",
        File(rootDir, "third-party/annotations").absolutePath
    )
    inputs.dir(File(rootDir, "third-party/java8-annotations")).withPathSensitivity(PathSensitivity.RELATIVE)
    systemProperty(
        "third-party/java8-annotations",
        File(rootDir, "third-party/java8-annotations").absolutePath
    )
    inputs.dir(File(rootDir, "third-party/java9-annotations")).withPathSensitivity(PathSensitivity.RELATIVE)
    systemProperty(
        "third-party/java9-annotations",
        File(rootDir, "third-party/java9-annotations").absolutePath
    )
    inputs.dir(File(rootDir, "third-party/jsr305")).withPathSensitivity(PathSensitivity.RELATIVE)
    systemProperty(
        "third-party/jsr305",
        File(rootDir, "third-party/jsr305").absolutePath
    )
    inputs.dir(File(rootDir, "libraries/stdlib/")).withPathSensitivity(PathSensitivity.RELATIVE) //TODO only kt files
    systemProperty(
        "stdlib.path",
        File(rootDir, "libraries/stdlib/").absolutePath
    )
    inputs.file(File(rootDir, "compiler/cli/cli-common/resources/META-INF/extensions/compiler.xml")).withPathSensitivity(PathSensitivity.RELATIVE)
}

testsJar()
