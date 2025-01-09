# Libbox for iOS

A [Sing-Box](https://github.com/SagerNet/sing-box) build workflow for iOS. This repository automates the creation of an `.xcframework` named **Libbox** for integration into iOS apps.

## Overview

### What is Sing-Box?
**Sing-Box** is a versatile proxy platform maintained by the [SagerNet](https://github.com/SagerNet) community. It offers a robust set of features for traffic management, encryption, and routing. This repository focuses on building Sing-Box’s iOS library as a **self-contained** `.xcframework` for easier app integration.

### Why Libbox?
**Libbox** is the name we’ve given to the compiled framework for Apple platforms. Instead of manually configuring a complex build environment for Sing-Box on iOS, you can use this ready-made `.xcframework` in your apps.

## How It Works

1. **Daily Release Check**  
   - We have a GitHub Actions workflow that runs every day at **11:00 AM UTC**.  
   - It queries the [SagerNet/sing-box](https://github.com/SagerNet/sing-box) repository for the **latest release tag** (e.g. `v1.10.5`).

2. **Automatic Build & Release**  
   - If a new tag is found, the workflow checks out the Sing-Box source code, builds the iOS library, zips the resulting `.xcframework`, calculates its checksum, and updates our [`Package.swift`](Package.swift) with the new version and checksum.  
   - A GitHub Release is then created in this repo, attaching `Libbox.xcframework.zip`.

3. **Manual Trigger**  
   - If desired, you can also manually trigger the build workflow via GitHub Actions (`workflow_dispatch`). Simply provide the **version** and **tag** in the inputs.

## Installation (Swift Package Manager)

To integrate **Libbox** into your Xcode project or Swift package, add the following to your `Package.swift` (or use Xcode’s “Add Package” feature):

```swift
dependencies: [
  .package(
    name: "Libbox", 
    url: "https://github.com/proother/sing-box-lib.git", 
    .upToNextMajor(from: "x.y.z") // Replace x.y.z with the desired release
  )
],

Then, add "Libbox" to your target’s dependencies:
```swift
.target(
  name: "MyApp",
  dependencies: [
    "Libbox"
  ]
)
