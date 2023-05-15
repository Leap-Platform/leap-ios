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
            url: "https://github.com/Leap-Platform/leap-core-ios/releases/download/1.8.8/LeapCoreSDK.xcframework.zip",
            checksum: "ea0f23cc2f5ecb2802dc85f84567c1555fdd18acb23cb318c062bb00a1d75801"
        )
    ]
)
