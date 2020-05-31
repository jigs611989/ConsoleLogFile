# ConsoleLogFile

<!-- [![Version](https://img.shields.io/cocoapods/v/ConsoleLog.svg?style=flat)](https://cocoapods.org/pods/ConsoleLog)
[![License](https://img.shields.io/cocoapods/l/ConsoleLog.svg?style=flat)](https://cocoapods.org/pods/ConsoleLog)
[![Platform](https://img.shields.io/cocoapods/p/ConsoleLog.svg?style=flat)](https://cocoapods.org/pods/ConsoleLog)
[![Swift 4.0](https://img.shields.io/badge/Swift-4.0-orange.svg?style=flat)](https://developer.apple.com/swift/) -->

## Introduce

You can easily create a log file from the print statement in the project without changing print or anything else.

![demo](./demo.gif)

## Installation
Simply add the following line to your Podfile:

```ruby
pod 'ConsoleLogFile'
```

## Usage

```swift
import ConsoleLogFile
```

```swift
ConsoleLogFile.shared.createLog()
```

## Share

```swift
ConsoleLogFile.shared.shareFile(viewController: self)
```

## Customize

* ***fileName***: change log file name (default value is 'Console')
* ***maxFileSizeInMB***: if file size reach to max then it will be deleted (default value 5 MB)
* ***shouldOverrideOldFile***: if true then every time ConsoleLogFile.shared.createLog() execute it will override

```swift
ConsoleLogFile.shared.createLog(fileName: "Debug", maxFileSizeInMB: 10, shouldOverrideOldFile: true)
```

## TODO
* Use REST API to enable/disable log file creation

## Author

Jignesh, jigs.patelit@gmail.com

## License

ConsoleLogFile is available under the MIT license. See the LICENSE file for more info.
