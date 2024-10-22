// swift-tools-version: 5.10

import PackageDescription

let package = Package(
    name: "diKlib",
    products: [
        .library(
            name: "diKlib",
            targets: ["diKlib", "diKlibTarget"]),
    ],
    dependencies: [
        
    ],
    targets: [
        .binaryTarget(name: "diKlib", path: "diKlib.xcframework"),
        .target(
            name: "diKlibTarget",
            dependencies: [
                .target(name: "diKlib"),
                
            ],
            path: "Sources/diKlib"
        )
    ]
)