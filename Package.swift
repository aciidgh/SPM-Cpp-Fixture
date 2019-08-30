// swift-tools-version:5.0
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "Objc",
    products: [
        // Products define the executables and libraries produced by a package, and make them visible to other packages.
        .library(name: "cpplib",
                 targets: ["cpplib"]),
        .library(name: "cwrapper",
                 targets: ["cwrapper"]),
        .executable(name: "cpp-exec",
                    targets: ["cpp-exec"]),
        .executable(name: "swift-exec",
                    targets: ["swift-exec"])

    ],
    dependencies: [],
    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages which this package depends on.
        .target(name: "cpplib"),
        .target(name: "cpp-exec",
                dependencies: ["cpplib"]),
        .target(name: "cwrapper",
                dependencies: ["cpplib"]),
        .target(name: "swift-exec",
                dependencies: ["cwrapper"])
    ]
)
