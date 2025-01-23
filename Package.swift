// swift-tools-version:5.10.0
import PackageDescription

// Package.release.swift

let package = Package(
    name: "Rigi",
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
