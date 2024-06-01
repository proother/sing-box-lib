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
      url: "https://github.com/proother/sing-box-lib/releases/download/v1.10.0-alpha.5/Libbox.xcframework.zip",
      checksum: "b76bdb4741cca187ea828ac365581785d2e844290b84f19cccea46d3a5c21dfe"
    )
  ]
)
