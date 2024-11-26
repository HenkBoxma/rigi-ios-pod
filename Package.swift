// swift-tools-version:5.10.0
import PackageDescription

let package = Package(
    name: "RigiSDK",
    platforms: [
        .iOS(.v13),
        .macOS(.v11)
    ],
    products: [
        .library(
            name: "RigiSDK",
            targets: ["RigiSDK"]
        ),
    ],
    targets: [
        .binaryTarget(
            name: "RigiSDK",
            path: "RigiSDK.xcframework"
        ),
    ]
)
