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
            url: "https://github.com/Leap-Platform/leap-core-ios/releases/download/1.9.4/LeapCoreSDK.xcframework.zip",
            checksum: "6546f77b3d7dcb4da8c958eb0d641ad1af77f2149a9144dfdcdd5b495fe218f3"
        )
    ]
)
