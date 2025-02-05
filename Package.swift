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
      url: "https://github.com/proother/sing-box-lib/releases/download/v1.11.1/Libbox.xcframework.zip",
      checksum: "824aa178ad985673066ff5bd29205def01d4a9bf3d146659a2f562f2149abd98"
    )
  ]
)
