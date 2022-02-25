Tealeaf SDK for iOS
========================
[![SwiftPM compatible](https://img.shields.io/badge/SwiftPM-compatible-4BC51D.svg?style=flat)](https://swift.org/package-manager/)
[![CocoaPods compatible](https://img.shields.io/cocoapods/v/Tealeaf.svg)](https://cocoapods.org/pods/Tealeaf)
[![Carthage compatible](https://img.shields.io/badge/Carthage-compatible-4BC51D.svg?style=flat)](https://github.com/Carthage/Carthage)
[![Platform](https://img.shields.io/cocoapods/p/Tealeaf.svg?style=flat)](https://developer.goacoustic.com/acoustic-exp-analytics/docs/acoustic-experience-analytics-tealeaf-sdk-for-ios-standard-and-mobile-editions)

Tealeaf overview
-------------------------

[Tealeaf](https://www.acoustic.com) is a customer behavioral analytics SDK as documented. [Get started](https://developer.goacoustic.com/acoustic-exp-analytics/docs/acoustic-experience-analytics-tealeaf-sdk-for-ios-standard-and-mobile-editions)

[![Twitter Follow](https://img.shields.io/twitter/follow/GoAcoustic.svg?style=social&label=Follow&maxAge=2592000)](https://twitter.com/intent/follow?screen_name=GoAcoustic)

Supported iOS and Xcode versions
-------------------------

This version of the Tealeaf SDK has been tested across iOS devices.

The LaunchDarkly iOS SDK requires the following minimum build tool versions:

| Tool  | Version |
| ----- | ------- |
| Xcode | 11.4+   |
| Swift | 5.2+    |

And supports the following device platforms:

| Platform | Version |
| -------- | ------- |
| iOS      | 12.0    |

# Installation

Tealeaf supports multiple methods for installing the library in a project. Once installed, head over to the [SDK documentation](https://developer.goacoustic.com/acoustic-exp-analytics/docs/acoustic-experience-analytics-tealeaf-sdk-for-ios-standard-and-mobile-editions) for complete instructions on getting started with using the SDK.

## Swift Package Manager
-----------

The [Swift Package Manager](https://swift.org/package-manager/) is a dependency manager integrated into the `swift` compiler and Xcode.

To integrate Tealeaf into an Xcode project, go to the project editor, and select `Swift Packages`. From here hit the `+` button and follow the prompts using  

- Release library: https://github.com/acoustic-analytics/Tealeaf-SP
- Debug library: https://github.com/acoustic-analytics/TealeafDebug-SP

 as the URL.

To include Tealeaf in a Swift package, simply add it to the dependencies section of your `Package.swift` file. And add the library "Tealeaf" as a dependency for your targets.

### Tealeaf Release for Package.swift
Taken from https://github.com/acoustic-analytics/Tealeaf-SP/blob/master/Package.swift
```swift
platforms: [
  .iOS(.v12)
],
products: [
  // Products define the executables and libraries a package produces, and make them visible to other packages.
  .library(
    name: "Tealeaf",
    targets: ["Tealeaf", "EOCore"]),
],
targets: [
  // Most current release version
  .binaryTarget(
    name: "Tealeaf",
    url: "https://github.com/acoustic-analytics/Tealeaf/releases/download/10.6.138/Tealeaf_XCFramework_Release.zip",
    checksum: "d85b7f04d5fae7ea71c5a9a16b3a229b19f1bbb895c81fc1dec28a814806ab03"),
  .binaryTarget(
    name: "EOCore",
    url: "https://github.com/acoustic-analytics/EOCore/releases/download/2.3.72/EOCore_XCFramework_Release.zip",
    checksum: "f9e0e17504e09b1ea520bd82047944e5908abe25fe0d2a65c924973386542de5"),
]
```

### Tealeaf Debug for Package.swift
Taken from https://github.com/acoustic-analytics/TealeafDebug-SP/blob/master/Package.swift
```swift
platforms: [
  .iOS(.v12)
],
products: [
  // Products define the executables and libraries a package produces, and make them visible to other packages.
  .library(
    name: "Tealeaf",
    targets: ["Tealeaf", "EOCore"]),
],
targets: [
  // Most current release version
  .binaryTarget(
    name: "Tealeaf",
    url: "https://github.com/acoustic-analytics/Tealeaf/releases/download/10.6.154/Tealeaf_XCFramework_Debug.zip",
    checksum: "34a67b5805a69f1979e15d49926fff9dc81fef35b250e3dda90a6acba2bfaa14"),
  .binaryTarget(
    name: "EOCore",
    url: "https://github.com/acoustic-analytics/EOCore/releases/download/2.3.197/EOCore_XCFramework_Debug.zip",
    checksum: "7716300073f94135c12066e6afb5249ec091717ca126eaaa82b68a1ee7bab8f4"),
]
```

## CocoaPods
-----------
To use the [CocoaPods](https://cocoapods.org) dependency manager to integrate Tealeaf into your Xcode project, specify it in your `Podfile`:

### Tealeaf Release for CocoaPods
```ruby
use_frameworks!
target 'YourTargetName' do
  pod 'Tealeaf'
end
```

### Tealeaf Debug for CocoaPods
```ruby
use_frameworks!
target 'YourTargetName' do
  pod 'TealeafDebug'
end
```

## Carthage
-----------
To use the [Carthage](https://github.com/Carthage/Carthage) dependency manager to integrate Tealeaf into your Xcode project, specify it in your `Cartfile`:

To integrate Tealeaf into your Xcode project using Carthage, specify it in your `Cartfile`:

### Tealeaf Release for Carthage
```ogdl
binary "https://raw.githubusercontent.com/acoustic-analytics/Tealeaf/master/Tealeaf.json"
binary "https://raw.githubusercontent.com/acoustic-analytics/EOCore/master/EOCore.json"
```

### Tealeaf Debug for Carthage
```ogdl
binary "https://raw.githubusercontent.com/acoustic-analytics/Tealeaf/master/TealeafDebug.json"
binary "https://raw.githubusercontent.com/acoustic-analytics/EOCore/master/EOCoreDebug.json"
```

## Manual installation
-----------
If you prefer not to use the aforementioned dependency managers, it is possible to integrate the SDK manually.

https://github.com/acoustic-analytics/Tealeaf/releases/latest
https://github.com/acoustic-analytics/EOCore/releases/latest

For release version download the zip that has "XCFramework_Release.zip" in name of the link or the zip that has "XCFramework_Debug.zip" in name of the link.

# Uploading Application Images To Tealeaf Server (Only Needed for NonEnhanced Replay)
Whichever hashing algorithm you choose, we recommend you repackage your application images and upload them to Tealeaf Server. Detailed steps are available [here](https://developer.goacoustic.com/acoustic-exp-analytics/docs/capturing-and-uploading-images-with-the-image-tool)

# Troubleshooting
If you are using Debug version of Tealeaf SDK. i.e. `pod 'TealeafDebug'` , then you may edit your project's scheme in XCode and add environmental variable `EODebug`and set its value to 1; also add environmental variable `TLF_DEBUG` and set its value to 1. This will make the SDK to start writing debug logs to your xcode console window. If and when you want to report issues, the Tealeaf support engineers will ask you for these logs.

If you are getting an issue like using Cocoapods:

dyld: Library not loaded: @rpath/EOCore.framework/EOCore
  Referenced from: /Users/h26259/Library/Developer/CoreSimulator/Devices/57B11359-B896-495E-B802-A8377313F848/data/Containers/Bundle/Application/9CE5AF4D-CD63-49F8-8288-677EC7BD81DA/myIos.app/myIos
  Reason: image not found
dyld: launch, loading dependent libraries

In the podfile, change from use_frameworks! to use_modular_headers! to correct issues.

# License
License file can be read [here](https://github.com/acoustic-analytics/Tealeaf/blob/master/Licenses/License)
