// swift-tools-version:5.3

//import PackageDescription
//
//let package = Package(
//    name: "LeapSDK",
//    products: [
//        .library(name: "LeapSDK", targets: ["LeapSDK"]),
//    ],
//    dependencies: [
//        .package(url: "https://github.com/Leap-Platform/leap-core-ios.git", from: "0.0.1")
//    ],
//    targets: [
//        .binaryTarget(name: "LeapSDK", path: "LeapSDK.xcframework")
//    ]
//)


import PackageDescription
let package = Package(
    name: "LeapSDK",
    products: [
        .library(
            name: "LeapSDK",
            targets: [
                "LeapSDKTargets"
            ]
        )
    ],
    dependencies: [
        .package(name: "LeapCoreSDK",
                 url: "file:///Users/aravindgs/workspace/ReleaseRepos/leap-core-ios",
                 from: "0.0.1")
    ],
    targets: [
        .binaryTarget(
            name: "LeapSDK",
            path: "LeapSDK.xcframework"
        ),
        .target(name: "LeapSDKTargets",
                dependencies: [
                    .target(name: "LeapSDK"),
                    .product(name: "LeapCoreSDK", package: "LeapCoreSDK")
                ],
                path: "Sources")
    ]
)
