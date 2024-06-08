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
      url: "https://github.com/proother/sing-box-lib/releases/download/v1.9.2/Libbox.xcframework.zip",
      checksum: "d83a740e66ff1b1c086af8e02862b0af7bda08f97bfe83aa0b9f68082d3e032a"
    )
  ]
)
