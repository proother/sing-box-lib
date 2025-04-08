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
      url: "https://github.com/proother/sing-box-lib/releases/download/v1.11.7/Libbox-ios.xcframework.zip",
      checksum: "5f1b10bc9275ad3deed77e7448f8112b305322080f3c1576d2056e5c1eba68da"
    )
  ]
)
