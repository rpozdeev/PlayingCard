// swift-tools-version:5.3
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "PlayingCard",
    products: [
        .library(
            name: "PlayingCard",
            targets: ["PlayingCard"]),
    ],
    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages this package depends on.
        .target(
            name: "PlayingCard",
            dependencies: []),
        .testTarget(
            name: "PlayingCardTests",
            dependencies: ["PlayingCard"]),
    ]
)
