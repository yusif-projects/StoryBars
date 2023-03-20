// swift-tools-version:5.5

import PackageDescription

let package = Package(
    name: "StoryBars",
    
    platforms: [.iOS(.v13)],
    
    products: [
        .library(name: "StoryBars", targets: ["StoryBars"])
    ],
    
    targets: [
        .target(name: "StoryBars", dependencies: [])
    ]
)
