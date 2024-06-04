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
      url: "https://github.com/proother/sing-box-lib/releases/download/v1.8.14/Libbox.xcframework.zip",
      checksum: "81152cc23881949daf2432c2d2726f4c6759614882533057b250ed892020054e"
    )
  ]
)
