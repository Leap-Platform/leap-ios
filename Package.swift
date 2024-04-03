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
            url: "https://github.com/Leap-Platform/leap-core-ios/releases/download/1.11.9/LeapCoreSDK.xcframework.zip",
            checksum: "8245a4ec9bf716e7ad97f4ac8a245d1f4b160a04cb3747e410419c6bd86ce84d"
        )
    ]
)
