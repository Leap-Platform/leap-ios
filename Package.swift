// swift-tools-version:5.3

import PackageDescription

let package = Package(
    name: "LeapSDK",
    products: [
        .library(name: "LeapSDK", targets: ["LeapSDK"]),
    ],
    dependencies: [
        .package(name: "LeapCoreSDK", url: "https://github.com/Leap-Platform/leap-core-ios.git", "1.0.0-alpha1")
    ],
    targets: [
        .binaryTarget(name: "LeapSDK", path: "LeapSDK.xcframework")
    ]
)