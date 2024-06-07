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
      url: "https://github.com/proother/sing-box-lib/releases/download/v1.9.1/Libbox.xcframework.zip",
      checksum: "39088f484b751555368ba6da6b88147aac2fdfcb1b3248496734dc05699807f8"
    )
  ]
)
