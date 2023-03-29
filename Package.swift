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
            url: "https://github.com/Leap-Platform/leap-core-ios/releases/download/1.8.4/LeapCoreSDK.xcframework.zip",
            checksum: "68da84b95b3b2a8c789fdcff1e026eeaa616f630fc0afd50a8c28bd5ba15f3fc"
        )
    ]
)
