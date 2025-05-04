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
      checksum: "03d1784f5bdbd54f83978036e22072cd45f819d873ebde8c750464445af4585c"
    )
  ]
)
