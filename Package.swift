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
      url: "https://github.com/proother/sing-box-lib/releases/download/v1.11.9/Libbox-ios.xcframework.zip",
      checksum: "e766ebcee58113ec798d4dceeaa6a6113c10be65a17aa338cf12500e2bba1df4"
    )
  ]
)
