# Specs
Private CocoaPods repository for staging Rigi pod specs.

## How to use this repo

Use the following lines near the top of your `Podfile`:

```
source 'https://cdn.cocoapods.org/'
source 'https://github.com/Dimi70/rigi-ios-sdk-Specs.git'
```

Specify the version you want to use, like so:

```
pod 'Rigi', '~> 1.0'
```

Once you update your sources, you will need to run either `pod update` or `pod install --repo-update` to update your repos.
