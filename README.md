# Sing-Box Libraries

A collection of precompiled [Sing-Box](https://github.com/SagerNet/sing-box) libraries for multiple platforms. This repository provides automated, pure upstream builds of Sing-Box libraries for iOS, macOS, and Android development.

## Overview

### What is Sing-Box?
**Sing-Box** is a universal proxy platform maintained by the [SagerNet](https://github.com/SagerNet) community. It supports various proxy protocols and offers advanced routing, traffic management, and encryption capabilities.

### Available Libraries
This repository provides the following precompiled library packages:

1. **Libbox-ios.xcframework.zip** - iOS framework with file descriptor leak patch (recommended for iOS)
2. **Libbox-ios-official.xcframework.zip** - iOS framework without patches (original upstream version)
3. **Libbox-apple.xcframework.zip** - Universal framework supporting iOS, macOS, and tvOS
4. **libbox-android.aar.zip** - Android Archive (AAR) for Android app development

#### iOS Version Differences
- **Patched Version (Libbox-ios.xcframework.zip)**: Includes a patch that disables file watching to prevent "too many open files" errors when using local rule-sets on iOS. This is the **recommended version** for most iOS applications.
- **Official Version (Libbox-ios-official.xcframework.zip)**: The pure upstream build without any modifications. Use this if you need the exact official behavior or don't use local rule-sets.

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
2. For iOS: Builds two versions - one with a file descriptor leak patch and one official version
3. Builds libraries using **standard gomobile tools**
4. Generates **SHA256 checksums** for verification
5. Updates **Package.swift** files for Swift Package Manager integration
6. Creates a **GitHub Release** with all compiled libraries

## Usage Instructions

### Swift Package Manager (iOS/macOS/tvOS)

#### For Patched iOS Version (Recommended)
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

#### For Official iOS Version (Without Patches)
If you need the official unmodified version, use the `Package-official.swift` configuration:
```swift
dependencies: [
    .package(url: "https://github.com/proother/sing-box-lib.git", from: "1.12.0")
    // Note: You'll need to manually reference Package-official.swift for the official version
]
```

### Manual Integration (iOS/macOS/tvOS)
1. Download your preferred version from the [latest release](https://github.com/proother/sing-box-lib/releases/latest):
   - `Libbox-ios.xcframework.zip` (with patch, recommended for iOS)
   - `Libbox-ios-official.xcframework.zip` (official version without patches)
   - `Libbox-apple.xcframework.zip` (universal framework)
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

- **iOS Versions**: Two iOS versions are provided - a patched version (recommended) that fixes file descriptor leaks, and an official unmodified version
- **Pure Upstream Build**: The official versions are built directly from Sing-Box source code without modifications
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
