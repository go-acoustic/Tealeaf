# Tealeaf

Tealeaf is a customer behavioral analytics SDK as documented [here](https://developer.goacoustic.com/acoustic-exp-analytics/docs/acoustic-experience-analytics-tealeaf-sdk-for-ios-standard-and-mobile-editions)

# Getting Started with Cocoapods
## Prerequisites

You need to have recent cocoapods version installed on your Mac OS. Please refer to cocoapods website for the details.

For SDK prerequisites and documentation, please refer to the SDK documentation [here](https://developer.goacoustic.com/acoustic-exp-analytics/docs/acoustic-experience-analytics-tealeaf-sdk-for-ios-standard-and-mobile-editions)

## Installing

Add following lines at the begining of your Podfile

>Set platform as iOS 12
>
>`platform :ios, '12.0'`
>
>Uncomment use_frameworks
>
>`use_frameworks!`

In the respective targets for your project in the Podfile add the following line if you want to use Tealeaf SDK's release version which needs to be used in your production version of your application.

>`pod 'Tealeaf'`

In the respective targets for your project in the Podfile add the following line if you want to use Tealeaf SDK's release version with version number. Otherwise you will get the beta version that might new feature or fixes which have not been full tested or approved.

>`pod 'TealeafDebug'`

Remember you can use only one of  `pod 'Tealeaf'` and `pod 'TealeafDebug'`. Do not use both at the same time.

### Important Note
Please do use $(inherited) flag in your application target's "Other Linker Settings" This will ensure all the pods are linked correctly.

# Getting Started with Carthage
Open Cartfile in a text editor of your choice and note the following lines:

In the respective targets for your project in the Podfile add the following line if you want to use Tealeaf SDK's release version

`binary "https://raw.githubusercontent.com/go-acoustic/DigitalAnalytics/master/DAMod.json" >= 1.1.23`

`binary "https://raw.githubusercontent.com/go-acoustic/EOCore/master/EOCore.json" >= 2.3.24`

In the respective targets for your project in the Podfile add the following line if you want to use Tealeaf SDK's debug version

`binary "https://raw.githubusercontent.com/go-acoustic/DigitalAnalytics/master/DAModDebug.json" >= 1.1.23`

`binary "https://raw.githubusercontent.com/go-acoustic/EOCore/master/EOCoreDebug.json" >= 2.3.24`

You will notice that by default the sample application uses `Debug` version of libraries.

Note that you can use only one of  `Release` or `Debug`. Do not use both at the same time.

Now you need to install the carthage by running the following command.

`carthage update --platform iOS`

Above carthage command should complete with no errors.

# Getting Started with Swift Package
Please go to 
- Release library: https://github.com/go-acoustic/Tealeaf-SP
- Debug library: https://github.com/go-acoustic/TealeafDebug-SP
***
## Uploading Application Images To Tealeaf Server (Only Needed for NonEnhanced Replay)
Whichever hashing algorithm you choose, we recommend you repackage your application images and upload them to Tealeaf Server. Detailed steps are available [here](https://developer.goacoustic.com/acoustic-exp-analytics/docs/capturing-and-uploading-images-with-the-image-tool)

## Troubleshooting
If you are using Debug version of Tealeaf SDK. i.e. `pod 'TealeafDebug'` , then you may edit your project's scheme in XCode and add environmental variable `EODebug`and set its value to 1; also add environmental variable `TLF_DEBUG` and set its value to 1. This will make the SDK to start writing debug logs to your xcode console window. If and when you want to report issues, the Tealeaf support engineers will ask you for these logs.

If you are getting an issue like using Cocoapods:

dyld: Library not loaded: @rpath/EOCore.framework/EOCore
  Referenced from: /Users/h26259/Library/Developer/CoreSimulator/Devices/57B11359-B896-495E-B802-A8377313F848/data/Containers/Bundle/Application/9CE5AF4D-CD63-49F8-8288-677EC7BD81DA/myIos.app/myIos
  Reason: image not found
dyld: launch, loading dependent libraries

In the podfile, change from use_frameworks! to use_modular_headers! to correct issues.

# License
License file can be read [here](https://github.com/go-acoustic/Tealeaf/blob/master/Licenses/License)
