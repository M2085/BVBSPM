// swift-tools-version: 5.7
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "BVBSPM",
    products: [
        // Products define the executables and libraries a package produces, and make them visible to other packages.
        .library(
            name: "BVBSPM",
            targets: ["BVBSPM", "KitabooBookShelfFramework", "Kitaboo_Reader_SDK", "KitabooSDKWithReader"]),
    ],
    dependencies: [
        // Dependencies declare other packages that this package depends on.
        // .package(url: /* package url */, from: "1.0.0"),
    ],
    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages this package depends on.
        
        .binaryTarget(name: "KitabooBookShelfFramework", url: "https://qaread.kitaboo.com/reader/Sprint/bvb/githubfiles/GithubZip/KitabooBookShelfFramework.xcframework.zip", checksum: "c9c8064fa4d1c0f8455e339726108f80c9f5f0f2964acf51ab2af9cb74fc21d9"),
        .binaryTarget(name: "Kitaboo_Reader_SDK", url: "https://qaread.kitaboo.com/reader/Sprint/bvb/githubfiles/GithubZip/Kitaboo_Reader_SDK.xcframework.zip", checksum: "fd6008c7dee195e721e48d53fe71d32ed2713e90a515d56622ef3013592980df"),
        .binaryTarget(name: "KitabooSDKWithReader", url: "https://qaread.kitaboo.com/reader/Sprint/bvb/githubfiles/GithubZip/KitabooSDKWithReader.xcframework.zip", checksum: "b9f93f198f95456ca95e251f1b92af541679daa780756dc6a318836153979ed4"),
        .target(
            name: "BVBSPM",
            dependencies: []),
        .testTarget(
            name: "BVBSPMTests",
            dependencies: ["BVBSPM"]),
    ]
)
