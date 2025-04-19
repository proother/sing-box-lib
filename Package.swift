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
      url: "https://github.com/proother/sing-box-lib/releases/download/v1.11.8/Libbox-ios.xcframework.zip",
      checksum: "ec1bc245d964f10416f937cafef046b86a2a502847085537dad23405ff254ef1"
    )
  ]
)
