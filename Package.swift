// swift-tools-version: 5.8

import PackageDescription

let package = Package(
    name: "SwiftCloudVaper",
    platforms: [.macOS(.v10_15)],
    dependencies: [
        .package(
            url: "https://github.com/swift-cloud/Compute",
            from: "1.0.0"
        ),
    ],
    targets: [
        .executableTarget(
            name: "SwiftCloudVaper",
            dependencies: [
                "Compute",
            ],
            path: "Sources"
        ),
    ]
)
