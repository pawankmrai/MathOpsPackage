// swift-tools-version: 5.8
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "MathOpsPackage",
	platforms: [
		.iOS(.v11),
		.macOS(.v10_14)
	],
    products: [
        // Products define the executables and libraries a package produces, and make them visible to other packages.
        .library(
            name: "MathOpsPackage",
            targets: ["MathOpsPackage"]),
    ],
    dependencies: [
		.package(url: "https://github.com/Moya/Moya.git", .upToNextMajor(from: "15.0.0"))
    ],
    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages this package depends on.
        .target(
            name: "MathOpsPackage",
            dependencies: []),
        .testTarget(
            name: "MathOpsPackageTests",
            dependencies: ["MathOpsPackage"]),
    ]
)
