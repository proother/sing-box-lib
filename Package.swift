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
      url: "https://github.com/proother/sing-box-lib/releases/download/v1.10.0-alpha.6/Libbox.xcframework.zip",
      checksum: "9f7eab053a9cd721df889ba2053fc73b173fc624f787379c0567111f96f6a2cc"
    )
  ]
)
