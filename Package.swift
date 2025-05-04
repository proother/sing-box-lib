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
      url: "https://github.com/proother/sing-box-lib/releases/download/v1.11.9/Libbox-ios.xcframework.zip",
      checksum: "d794fb97857d5e4737c3e12f4fe32e9d9592ce0d22cd27d2aa0030ff41e58d85"
    )
  ]
)
