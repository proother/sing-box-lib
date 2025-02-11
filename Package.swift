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
      url: "https://github.com/proother/sing-box-lib/releases/download/v1.11.3/Libbox.xcframework.zip",
      checksum: "76aaad18d33acafb0de1c2e5e3f372dcb430433d9edc4343715a375bb4c12729"
    )
  ]
)
