// swift-tools-version:5.7
import PackageDescription

let package = Package(
    name: "BamwareAuth",
    platforms: [.iOS(.v15)],
    products: [
        .library(name: "BamwareAuth", targets: ["BamwareAuth"]),
    ],
    dependencies: [
        .package(url: "https://github.com/mrbam88/BamwareCore.git", branch: "main")
    ],
    targets: [
        .target(
            name: "BamwareAuth",
            dependencies: ["BamwareCore"]
        ),
        .testTarget(
            name: "BamwareAuthTests",
            dependencies: ["BamwareAuth"]
        )
    ]
)
