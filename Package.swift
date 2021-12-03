// swift-tools-version:5.5
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "swift-plugin-example-api",
    platforms: [
      .macOS(.v12)
    ],
    products: [
        // Products define the executables and libraries a package produces, and make them visible to other packages.
        .library(
            name: "PluginExampleAPI",
            targets: ["PluginExampleAPI"]),
    ],
    dependencies: [
      .package(url: "https://github.com/hassila/swift-plugin", branch: "main"),
      .package(url: "https://github.com/hassila/swift-plugin-manager-example-api", branch: "main")
    ],
    targets: [
        .target(
            name: "PluginExampleAPI",
            dependencies: [
              .product(name: "Plugin", package: "swift-plugin"),
              .product(name: "PluginManagerExampleAPI", package: "swift-plugin-manager-example-api")
            ]),
    ]
)
