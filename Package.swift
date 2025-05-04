// swift-tools-version: 5.7

import PackageDescription

let package = Package(
  name: "Libbox",
  platforms: [.iOS(.v12), .macOS(.v11)],
  products: [
    .library(name: "Libbox", targets: ["Libbox"])
  ],
  targets: [
    .binaryTarget(
      name: "Libbox",
      url: "https://github.com/proother/sing-box-lib/releases/download/v1.12.0-beta.9/Libbox-ios.xcframework.zip",
      checksum: "dc90eea8aea55b5a0ad9ff2beccf01625a149be0f4766e2ca89c7c9b9898e883"
    )
  ]
)
