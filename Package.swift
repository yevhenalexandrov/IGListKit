// swift-tools-version:5.2
import PackageDescription

let package = Package(
    name: "IGListKit",
    products: [
        .library(
            name: "IGListKit", 
            targets: [ "IGListDiffKit", "IGListKit", "IGListSwiftKit"]
        )
    ],
    targets: [
        .target(
            name: "IGListDiffKit",
            path: "Source/IGListDiffKit",
            publicHeadersPath: ".",
            cSettings:[
                .headerSearchPath("Internal"),
            ]
        ),
        .target(
            name: "IGListKit",
            dependencies:[
                "IGListDiffKit"
            ],
            path: "Source/IGListKit",
            cSettings:[
                .headerSearchPath("Internal"),
            ]
        ),
        .target(
            name: "IGListSwiftKit",
            path: "Source/IGListSwiftKit"
        )
    ]
)