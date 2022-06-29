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
            url: "https://github.com/Leap-Platform/leap-core-ios/releases/download/1.4.4/LeapCoreSDK.xcframework.zip",
            checksum: "5aed2b511ef6729ec0bf85d1576dac21dde57481b81bc98a4f950b73d82ddb38"
        )
    ]
)
