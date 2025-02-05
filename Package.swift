// swift-tools-version: 6.0
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "unity_ads_multiads",
    products: [
        .library(
            name: "unity_ads_multiads",
            targets: ["unity_ads_multiads"]),
    ],
    dependencies: [
        .package(name:"MultiAdsInterface",url: "https://github.com/CoderRb123/MultiAdsInterface.git",from: "1.0.4"),
    ],
    targets: [
        .target(
            name: "unity_ads_multiads",
            dependencies: ["UnityAdsMultiads","MultiAdsInterface"]
        ),
        .binaryTarget(
         name: "UnityAdsMultiads",
         path: "./Sources/UnityAds.xcframework"),


    ]
)
