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
      url: "https://github.com/proother/sing-box-lib/releases/download/v1.11.11/Libbox-ios.xcframework.zip",
      checksum: "a4f35dd59e09499545f17feba1518113bcc053b6616d0402fe7352cebf0e0310"
    )
  ]
)
