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
      url: "https://github.com/proother/sing-box-lib/releases/download/v1.11.0/Libbox.xcframework.zip",
      checksum: "9f529edb887ecc24ef0f1efdfcea3537067cad4bf309fe1436d9d7501c32782d"
    )
  ]
)
