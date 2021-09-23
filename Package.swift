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
            url: "https://github.com/Leap-Platform/leap-core-ios/releases/download/1.1.6/LeapCoreSDK.xcframework.zip",
            checksum: "401b88c5e9f5b44045dafc2499cd3a3d9b8cbf6e5c5348ce9b3acd2b9ac7089e"
        )
    ]
)
