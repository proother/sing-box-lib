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
      checksum: "4d2f9881964ff4341148556962b39651abdc2247048b4b6f79c54cff338e336d"
    )
  ]
)
