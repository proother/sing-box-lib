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
      url: "https://github.com/proother/sing-box-lib/releases/download/v1.11.6/Libbox.xcframework.zip",
      checksum: "f23d280b4c428ce65b53c77a45e5fa8c8a4428484f8a3cdd5d49fda5bfde52de"
    )
  ]
)
