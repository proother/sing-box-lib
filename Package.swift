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
      url: "https://github.com/proother/sing-box-lib/releases/download/v1.10.0-alpha.7/Libbox.xcframework.zip",
      checksum: "b9deb4a6e75874872ad33a3aa374cef7bd403297bb8f21435614ec87d51c3ad1"
    )
  ]
)
