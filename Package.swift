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
      url: "https://github.com/proother/sing-box-lib/releases/download/v1.10.7/Libbox.xcframework.zip",
      checksum: "8839dae14150f91676181ee592c7a6b1e4b2f57300d9e62c0ee20090aac39498"
    )
  ]
)
