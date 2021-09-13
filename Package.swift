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
            url: "https://github.com/Leap-Platform/leap-core-ios/releases/download/1.1.4/LeapCoreSDK.xcframework.zip", 
            checksum: "352b19c39b15e4cd159a6729d244f0b3a6fa6fb130db441f8033df1ccb5c5ccc"
        )
    ]
)
