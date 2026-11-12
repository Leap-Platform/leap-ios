// swift-tools-version:5.3

import PackageDescription

// LeapSDK links LeapCoreSDK, so the product ships both; LeapCoreSDK comes from leap-core-ios's
// release of the same version.
let package = Package(
    name: "LeapSDK",
    products: [
        .library(name: "LeapSDK", targets: ["LeapSDK", "LeapCoreSDK"])
    ],
    targets: [
        .binaryTarget(
            name: "LeapSDK",
            url: "https://github.com/Leap-Platform/leap-ios/releases/download/2.3.0/LeapSDK.xcframework.zip",
            checksum: "6949f88c70a57c0b27ba72b108127038ba83c2fb4c1d9cefe58f20ea4d521cd8"
        ),
        .binaryTarget(
            name: "LeapCoreSDK",
            url: "https://github.com/Leap-Platform/leap-core-ios/releases/download/2.3.0/LeapCoreSDK.xcframework.zip",
            checksum: "64b5336ef5f7736600af9b759a1ca9e0ba0792e1f0f1be0424937261440bf552"
        )
    ]
)
