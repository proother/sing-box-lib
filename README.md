# Sing-Box Libraries

A collection of precompiled [Sing-Box](https://github.com/SagerNet/sing-box) libraries for multiple platforms. This repository provides automated, pure upstream builds of Sing-Box libraries for iOS, macOS, and Android development.

## Overview

### What is Sing-Box?
**Sing-Box** is a universal proxy platform maintained by the [SagerNet](https://github.com/SagerNet) community. It supports various proxy protocols and offers advanced routing, traffic management, and encryption capabilities.

### Available Libraries
This repository provides three precompiled library packages:

1. **Libbox-ios.xcframework.zip** - iOS-specific framework for iPhone/iPad apps
2. **Libbox-apple.xcframework.zip** - Universal framework supporting iOS, macOS, and tvOS
3. **libbox-android.aar.zip** - Android Archive (AAR) for Android app development

## Automation & Release Process

### Daily Automatic Builds
- **Schedule**: Every day at **12:10 UTC**
- **Process**: Automatically checks for new stable releases from [SagerNet/sing-box](https://github.com/SagerNet/sing-box)
- **Trigger**: Only builds when a new version tag is detected

### Manual Builds
You can manually trigger builds through GitHub Actions:
1. Go to the **Actions** tab in this repository
2. Select **Release Libraries** workflow
3. Click **Run workflow**
4. Enter the desired version tag (e.g., `v1.12.0`)
5. Optionally choose to delete existing releases with the same tag

### Build Process
When triggered, the workflow:
1. Checks out the **official Sing-Box source code** at the specified tag
2. Builds libraries using **standard gomobile tools** without any modifications
3. Generates **SHA256 checksums** for verification
4. Updates **Package.swift** for Swift Package Manager integration
5. Creates a **GitHub Release** with all compiled libraries

## Usage Instructions

### Swift Package Manager (iOS/macOS/tvOS)
Add this repository as a dependency in Xcode:

```
File → Add Package Dependencies → Enter URL: https://github.com/proother/sing-box-lib.git
```

Or add to your `Package.swift`:
```swift
dependencies: [
    .package(url: "https://github.com/proother/sing-box-lib.git", from: "1.12.0")
]
```

### Manual Integration (iOS/macOS/tvOS)
1. Download `Libbox-ios.xcframework.zip` or `Libbox-apple.xcframework.zip` from the [latest release](https://github.com/proother/sing-box-lib/releases/latest)
2. Unzip the framework
3. Drag `Libbox.xcframework` into your Xcode project
4. Ensure it's added to your target's **Frameworks, Libraries, and Embedded Content**

### Android Integration

#### Option 1: Direct AAR Integration
1. Download `libbox-android.aar.zip` from the [latest release](https://github.com/proother/sing-box-lib/releases/latest)
2. Extract `libbox.aar` to your app's `libs/` directory
3. Add to your `build.gradle` (app level):
```gradle
dependencies {
    implementation files('libs/libbox.aar')
}
```

#### Option 2: JitPack (if available)
```gradle
repositories {
    maven { url 'https://jitpack.io' }
}

dependencies {
    implementation 'com.github.proother:sing-box-lib:v1.12.0'
}
```

## Library Details

### Build Environment
- **Go Version**: 1.24+
- **iOS Deployment Target**: iOS 12.0+
- **macOS Deployment Target**: macOS 11.0+
- **Android API Level**: 21+
- **NDK Version**: r28

### What's Included
All libraries are built with the following Sing-Box features enabled:
- All standard proxy protocols (HTTP, HTTPS, SOCKS, Shadowsocks, VMess, VLESS, Trojan, etc.)
- Advanced routing capabilities
- DNS over HTTPS/TLS support
- Traffic statistics and logging
- Plugin system support

### Integrity Verification
Each release includes SHA256 checksums for all libraries. You can verify the integrity of downloaded files using:

```bash
# On macOS/Linux
shasum -a 256 -c checksums.txt

# On Windows
certutil -hashfile filename.zip SHA256
```

## Important Notes

- **Pure Upstream Build**: These libraries are built directly from official Sing-Box source code without any modifications
- **Version Matching**: Library versions correspond exactly to Sing-Box release tags
- **Platform Support**: Built on the latest available GitHub Actions runners for maximum compatibility
- **No Warranty**: These are community-maintained builds; use at your own discretion

## License

This project follows the same license as [Sing-Box](https://github.com/SagerNet/sing-box). Please refer to the original repository for license details.

## Support & Issues

- **Sing-Box Issues**: Report to the [official Sing-Box repository](https://github.com/SagerNet/sing-box/issues)
- **Build/Integration Issues**: Create an issue in this repository
- **Documentation**: Refer to the [official Sing-Box documentation](https://sing-box.sagernet.org/)

## Contributing

This repository is primarily automated. If you need to suggest improvements to the build process or have integration questions, please open an issue or pull request.
