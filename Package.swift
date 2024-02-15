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
            url: "https://github.com/Leap-Platform/leap-core-ios/releases/download/1.11.6/LeapCoreSDK.xcframework.zip",
            checksum: "a655a6dd2dc9f6b4880bc0df40a51360926795b73b8a00ed4e97293155b6fed5"
        )
    ]
)
