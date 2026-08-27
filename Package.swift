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
            url: "https://github.com/Leap-Platform/leap-core-ios/releases/download/2.2.11/LeapCoreSDK.xcframework.zip",
            checksum: "0a477ef73fdb04d6bac331e05c3ac50c2252da0a0cdc3e2becdcf02605eb60ff"
        )
    ]
)
