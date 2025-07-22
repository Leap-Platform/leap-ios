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
            url: "https://github.com/Leap-Platform/leap-core-ios/releases/download/2.0.18/LeapCoreSDK.xcframework.zip",
            checksum: "7d069121e8bb500a22be13a2298e7edbddf769e5c0dc31117b2f670c06904136"
        )
    ]
)
