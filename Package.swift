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
      url: "https://github.com/proother/sing-box-lib/releases/download/v1.11.5/Libbox.xcframework.zip",
      checksum: "6676aca61a47870c2210ef3774fd8030dad3957763ca729055a5110e440623d9"
    )
  ]
)
