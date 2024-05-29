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
      url: "https://github.com/proother/sing-box-lib/releases/download/1.10.0-alpha.1/Libbox.xcframework.zip",
      checksum: "f6b5bd6e50f72eb675f38636c541f310f02ebd7da1c4f2c29f7481e0b7a8bf91"
    )
  ]
)
