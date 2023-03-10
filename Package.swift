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
            url: "https://github.com/Leap-Platform/leap-core-ios/releases/download/1.8.3/LeapCoreSDK.xcframework.zip",
            checksum: "f189ffc3ef88bacce5c7b7618b5e7d3c7d07eedd163bb80f7f5dfed358b6e3f8"
        )
    ]
)
