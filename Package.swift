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
      url: "https://github.com/proother/sing-box-lib/releases/download/v1.10.0-alpha.7/Libbox.xcframework.zip",
      checksum: "9bf74108b3614244f3a06039ed0546765136fb905b6ab865d4274b2bbfaffb6b"
    )
  ]
)
