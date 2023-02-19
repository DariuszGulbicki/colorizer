// swift-tools-version: 5.5

import PackageDescription

let package = Package(
    name: "Colorizer",
    products: [
        .library(
            name: "Colorizer",
            targets: ["Colorizer"]),
        .executable(
            name: "Colorizer-Examples",
            targets: ["Colorizer-Examples"]),
    ],
    dependencies: [
    ],
    targets: [
        .target(
            name: "Colorizer",
            dependencies: []),
        .executableTarget(
            name: "Colorizer-Examples",
            dependencies: ["Colorizer"]),
    ]
)
