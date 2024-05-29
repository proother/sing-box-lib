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
      url: "https://github.com/proother/sing-box-lib/releases/download/v1.9.0/Libbox.xcframework.zip",
      checksum: "bc8717d7d065c547bb3d389f45ceca8f0d7ff1ce2864db142a7aa6a7f7f1b3ee"
    )
  ]
)
