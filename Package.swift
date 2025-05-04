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
      checksum: "a5f1b875a15b66b0f183d6ea00fa201d8926061fe2e1f6b1841431e527d62c66"
    )
  ]
)
