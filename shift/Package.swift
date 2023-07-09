// swift-tools-version: 5.9
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "Modules",
    platforms: [.iOS(.v16)],
    products: [
        .library(
            name: "WelcomeFeature",
            targets: ["WelcomeFeature"]),
        .library(
            name: "ArticlesFeature",
            targets: ["ArticlesFeature"]),
        .library(
            name: "UIComponents",
            targets: ["UIComponents"]),
        .library(
            name: "Models",
            targets: ["Models"])
    ],
    dependencies: [
        .package(
            url: "https://github.com/pointfreeco/swift-composable-architecture",
            from: "0.9.0"),
    ],
    targets: [
        .target(
            name: "WelcomeFeature",
            dependencies: [
                "UIComponents",
                .product(name: "ComposableArchitecture",
                         package: "swift-composable-architecture")]),
        .target(
            name: "ArticlesFeature",
            dependencies: [
                "Models",
                .product(name: "ComposableArchitecture",
                         package: "swift-composable-architecture")]),
        .target(
            name: "UIComponents",
            dependencies: []),
        .target(
            name: "Models",
            dependencies: [])
    ]
)
