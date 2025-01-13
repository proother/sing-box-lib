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
      url: "https://github.com/proother/sing-box-lib/releases/download/v1.11.0-beta.22/Libbox.xcframework.zip",
      checksum: "584c7a71f3835154b9ef0799c7e0b12f48a6423072c5bf052ac65ffdbe20c044"
    )
  ]
)
