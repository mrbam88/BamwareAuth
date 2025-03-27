// swift-tools-version:5.7
import PackageDescription

let package = Package(
    name: "BamwareAuth",
    platforms: [.iOS(.v15)],
    products: [
        .library(name: "BamwareAuth", targets: ["BamwareAuth"]),
    ],
    dependencies: [],
    targets: [
        .target(
            name: "BamwareAuth",
            dependencies: []
        ),
        .testTarget(
            name: "BamwareAuthTests",
            dependencies: ["BamwareAuth"]
        )
    ]
)
