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
            url: "https://github.com/Leap-Platform/leap-core-ios/releases/download/1.10.1/LeapCoreSDK.xcframework.zip",
            checksum: "8a0f314f5a7d8ea97dbb24e6c6bbfa2a611a6068d9ce54fac225a8cb9b64c1a1"
        )
    ]
)
