// swift-tools-version: 5.7

import PackageDescription

let package = Package(
  name: "Libbox",
  platforms: [.iOS(.v12)],
  products: [
    .library(name: "Libbox", targets: ["Libbox"])
  ],
  targets: [
    .binaryTarget(
      name: "Libbox",
      url: "https://github.com/proother/sing-box-lib/releases/download/v1.8.13/Libbox.xcframework.zip",
      checksum: "fced18e85fbaba227a2c6808056bdd0f43b8196bd64dbdb8dc7aaa688d6049de"
    )
  ]
)
