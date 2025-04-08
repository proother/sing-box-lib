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
      url: "https://github.com/proother/sing-box-lib/releases/download/v1.12.0-beta.2/Libbox-ios.xcframework.zip",
      checksum: "980afd7c0efb1fccbe4ea06477e349e356456da858f318908c062e615d9bfb4e"
    )
  ]
)
