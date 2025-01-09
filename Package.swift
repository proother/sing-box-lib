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
      url: "https://github.com/EbrahimTahernejad/sing-box-lib/releases/download/v1.10.6/Libbox.xcframework.zip",
      checksum: "8329da55207b0d25d794953c5656e700eb8fa8eca94360ac4047a902aad33673"
    )
  ]
)
