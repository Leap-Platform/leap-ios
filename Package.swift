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
            url: "https://github.com/Leap-Platform/leap-core-ios/releases/download/1.10.4/LeapCoreSDK.xcframework.zip",
            checksum: "4f0a4155ed5e2dfbb2953e52f97e7b5cbb1d996997dbff03e8f0d40c8e51284b"
        )
    ]
)
