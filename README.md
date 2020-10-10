# iCider

[![CI Status](https://img.shields.io/travis/tobwithu/iCider.svg?style=flat)](https://travis-ci.org/tobwithu/iCider)
[![Version](https://img.shields.io/cocoapods/v/iCider.svg?style=flat)](https://cocoapods.org/pods/iCider)
[![License](https://img.shields.io/cocoapods/l/iCider.svg?style=flat)](https://cocoapods.org/pods/iCider)
[![Platform](https://img.shields.io/cocoapods/p/iCider.svg?style=flat)](https://cocoapods.org/pods/iCider)

Helper library for conversion from Android to iOS.

I encountered many problems while converting an Android app to an iOS app.
I made a library with the solutions to these problems.

## How to use

UIScrollView does not scroll when it has UIButton

+ UIScrollView -> ICScrollView

UITableView is not showing in UIStackView

+ UITableView -> ICTableView

UICollectionView is not showing in UIStackView

+ UICollectionView -> ICCollectionView

Fit embedded UIViewController to its contents

+ UIViewController -> ICViewController

## Example

To run the example project, clone the repo, and run `pod install` from the Example directory first.

## Requirements

## Installation

iCider is available through [CocoaPods](https://cocoapods.org). To install
it, simply add the following line to your Podfile:

```ruby
pod 'iCider'
```

## Author

tobwithu

## License

iCider is available under the MIT license. See the LICENSE file for more info.
