# Specs
Repository for Rigi Swift Package and Cocoapod specs.

# Documentation

See https://github.com/HenkBoxma/rigi-ios for extensive instructions how to setup Rigi SDK in your project.


# Install the SDK

## Swift Package Manager

Install the Swift Package from this git repository

```
https://github.com/HenkBoxma/rigi-ios-pod.git
```

## CocoaPods

Use the following lines near the top of your `Podfile`:

```
source 'https://cdn.cocoapods.org/'
source 'https://github.com/HenkBoxma/rigi-ios-pod.git'
```

Specify the version you want to use, like so:

```
pod 'Rigi', '~> 1.0'
```

Once you update your sources, you will need to run either `pod update` or `pod install --repo-update` to update your repos.
