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
            url: "https://github.com/Leap-Platform/leap-core-ios/releases/download/2.0.17/LeapCoreSDK.xcframework.zip",
            checksum: "dbdb01152818c2ab25310fead7b9a39d84f894e3ebbea3d7a46566f043ba20e4"
        )
    ]
)
