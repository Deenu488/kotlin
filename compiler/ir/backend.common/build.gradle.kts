plugins {
    kotlin("jvm")
    id("jps-compatible")
}

dependencies {
    api(project(":compiler:util"))
    api(project(":compiler:frontend"))
    api(project(":compiler:backend-common"))
    api(project(":compiler:ir.tree"))
    api(project(":compiler:ir.interpreter"))
    compileOnly(intellijCore())

    testImplementation(kotlinStdlib())
    testImplementation(kotlinTest("junit"))
    testImplementation(projectTests(":compiler:tests-common-new"))
}

optInToUnsafeDuringIrConstructionAPI()

sourceSets {
    "main" { projectDefault() }
    "test" { projectDefault() }
}

