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
      url: "https://github.com/proother/sing-box-lib/releases/download/v1.11.10/Libbox-ios.xcframework.zip",
      checksum: "38e5921143deb08e9042307c16dd3fa3c0a71b02f40883b4aac19eee285426b0"
    )
  ]
)
