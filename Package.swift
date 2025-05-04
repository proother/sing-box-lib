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
      url: "https://github.com/proother/sing-box-lib/releases/download/v1.12.0-beta.9/Libbox-ios.xcframework.zip",
      checksum: "a23dad57c2c13d93797f9da0430bf5111bcf7e17864b08a45878479096a0ea75"
    )
  ]
)
