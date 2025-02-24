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
      url: "https://github.com/proother/sing-box-lib/releases/download/v1.11.4/Libbox.xcframework.zip",
      checksum: "fd29882543a91171a0132718e029f7893714bfeacebe6f0b60bfbe87dc825afb"
    )
  ]
)
