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
      url: "https://github.com/proother/sing-box-lib/releases/download/v1.10.0-alpha.6/Libbox.xcframework.zip",
      checksum: "90b979747b13b3d433869d13a6457992ed3d8436266d29706b714e945b3e1041"
    )
  ]
)
