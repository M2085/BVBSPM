// swift-tools-version:5.5
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
        .binaryTarget(name: "KitabooBookShelfFramework", url: "https://qaread.kitaboo.com/reader/Sprint/bvb/githubfiles/GithubZip/KitabooBookShelfFramework.xcframework.zip", checksum: "b0a944fd3b0276c327ee474ae8f2cac2e0a633edf856599cf9c1d5ac8ccccba2"),
               .binaryTarget(name: "Kitaboo_Reader_SDK", url: "https://qaread.kitaboo.com/reader/Sprint/bvb/githubfiles/GithubZip/Kitaboo_Reader_SDK.xcframework.zip", checksum: "dab1072c1c974c5e7c631ae7f1a02399ff381ba0900925e398d4ad284b0f9890"),
               .binaryTarget(name: "KitabooSDKWithReader", url: "https://qaread.kitaboo.com/reader/Sprint/bvb/githubfiles/GithubZip/KitabooSDKWithReader.xcframework.zip", checksum: "4fcbea89510b8cfe7612e271b5b1441b66c25f1c8571cf7a63ad4aa1cbdd177a"),
        .target(
            name: "BVBSPM",
            dependencies: []),
        .testTarget(
            name: "BVBSPMTests",
            dependencies: ["BVBSPM"]),
    ]
)
