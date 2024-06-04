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
      checksum: "c659ea678a87653115ac470c833a8d66ece1f16fe646059d0cfbd6370ca92305"
    )
  ]
)
