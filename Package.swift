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
      url: "https://github.com/EbrahimTahernejad/sing-box-lib/releases/download/v1.10.5/Libbox.xcframework.zip",
      checksum: "b7f7370252509dfee5d0858639493a7b8a3e8901d3ea18f9dc733c2f8c953ebc"
    )
  ]
)
