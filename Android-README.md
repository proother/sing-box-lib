# Sing-box Android Library

## Usage with Gradle

```gradle
repositories {
    maven { url 'https://jitpack.io' }
}

dependencies {
    implementation 'com.github.proother:sing-box-lib:v1.11.7'
}
```

## Manual installation
1. Download the AAR file from releases
2. Place it in your project's libs directory
3. Add the following to your build.gradle:

```gradle
dependencies {
    implementation files('libs/libbox.aar')
}
```
