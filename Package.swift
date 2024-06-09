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
      url: "https://github.com/proother/sing-box-lib/releases/download/v1.9.3/Libbox.xcframework.zip",
      checksum: "4034b71210b44718f5f35db4664ff04ab2ddef07066a00915f2fb4ffae7c20de"
    )
  ]
)
