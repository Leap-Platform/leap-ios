// swift-tools-version:5.3

import PackageDescription

let package = Package(
    name: "LeapSDK",
    products: [
        .library( name: "LeapSDK", targets: ["LeapSDK","LeapCoreSDK"] )
    ],
    dependencies: [],
    targets: [
        .binaryTarget(name: "LeapSDK", path: "LeapSDK.xcframework"),
        .binaryTarget(
            name: "LeapCoreSDK", 
            url: "https://github.com/Leap-Platform/leap-core-ios/releases/download/2.0.7/LeapCoreSDK.xcframework.zip",
            checksum: "48d2abdf7ad136bf4a04bf456e1b23bea870e1dcf2610deddb7724e9a50a41d2"
        )
    ]
)
