// swift-tools-version: 6.2
import PackageDescription

let package = Package(
    name: "SpinnahDesignSystem",
    platforms: [
        .iOS(.v16),
        .macOS(.v13),
        .visionOS(.v1)
    ],
    products: [
        .library(
            name: "SpinnahDesignSystem",
            targets: ["SpinnahDesignSystem"]
        ),
    ],
    targets: [
        .target(
            name: "SpinnahDesignSystem"
        ),
    ]
)
