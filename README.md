
# Sing-Box Libraries

A collection of precompiled [Sing-Box](https://github.com/SagerNet/sing-box) libraries for multiple platforms. This repository automates the creation of libraries for iOS, macOS, and Android integration.

## Overview

### What is Sing-Box?
**Sing-Box** is a versatile proxy platform maintained by the [SagerNet](https://github.com/SagerNet) community. It offers a robust set of features for traffic management, encryption, and routing.

### Available Libraries
This repository provides precompiled libraries for multiple platforms:

1. **Libbox-ios.xcframework** - For iOS app development
2. **Libbox-apple.xcframework** - Universal framework for iOS, macOS and tvOS
3. **libbox.aar** - For Android app development

## How It Works

1. **Daily Release Check**  
   - Our GitHub Actions workflow runs every day at **12:10 UTC**
   - It queries the [SagerNet/sing-box](https://github.com/SagerNet/sing-box) repository for the **latest release tag**

2. **Automatic Build & Release**  
   - When a new tag is found, the workflow:
     - Checks out the Sing-Box source code with the specific tag
     - Compiles libraries for all supported platforms
     - Calculates checksums for verification
     - Updates our `Package.swift` for Swift Package Manager support
     - Creates a GitHub Release with all libraries attached

3. **Manual Trigger**  
   - You can manually trigger the workflow via GitHub Actions
   - Simply provide the desired version tag (e.g., `v1.12.0`) in the inputs
   - Optionally, you can choose to delete an existing release with the same tag

## Using the Libraries

### For iOS/macOS Projects
Use Swift Package Manager by adding this repository as a dependency:

```swift
// In your Package.swift
dependencies: [
    .package(url: "https://github.com/proother/sing-box-lib.git", from: "1.12.0")
]

// Or in Xcode: File > Add Packages > Enter the repository URL
```

Alternatively, download `Libbox-ios.xcframework.zip` or `Libbox-apple.xcframework.zip` from the latest release, unzip it, and add it to your Xcode project manually.

### For Android Projects
Add JitPack repository to your build.gradle:

```gradle
repositories {
    maven { url 'https://jitpack.io' }
}

dependencies {
    implementation 'com.github.proother:sing-box-lib:v1.12.0'  // Replace with your desired version
}
```

Or download `libbox-android.aar.zip` from the latest release, unzip it, place in your project's libs directory, and add:

```gradle
dependencies {
    implementation files('libs/libbox.aar')
}
```

## Build Details

All libraries are built using the official `gomobile` tools directly from the Sing-Box source code. No modifications are made to the original code, ensuring compatibility with the upstream project.

For verification purposes, SHA256 checksums for all artifacts are published in each release's description.

## License

This project adheres to the same license as Sing-Box. For more details, please refer to the [Sing-Box repository](https://github.com/SagerNet/sing-box).
