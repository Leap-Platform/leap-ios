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
            url: "https://github.com/Leap-Platform/leap-core-ios/releases/download/1.2.0/LeapCoreSDK.xcframework.zip",
            checksum: "75ebe15da1fb94e86c8bf13fccbcaff7dc0cb90776182d7d1790a8bda85ac36b"
        )
    ]
)
