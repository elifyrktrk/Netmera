# Netmera

> You can quickly complete the integration by watching the our [*iOS Integration Video*](https://drive.google.com/file/d/1Gow03U6U-iudmLUDQb1FnC1VSQnGl-kS/view?usp=sharing)

<p align="center">
  <img src="https://www.netmera.com/wp-content/uploads/2019/10/netmera_logo-1.png"/>
</p>

Know & understand your app users, send them targeted push notification & popup campaigns, and analyze results with Netmera! Netmera iOS SDK provides you set of tools to work seamlessly with Netmera User Engagement platform. For details, please see https://developer.netmera.com


## Installation

Netmera will be compatible with the lastest public release of Swift.

### Requirements

* iOS 9.0+
* Xcode 11.0+
 
Analytics is available through [CocoaPods](http://cocoapods.org) 

### CocoaPods

```ruby
pod "Netmera"
```
For NotificationServiceExtension

```ruby
pod "Netmera/NotificationServiceExtension"
```

For NotificationContentExtension

```ruby
pod "Netmera/NotificationContentExtension"
```

For Without AdId Support

```ruby
pod 'Netmera/NetmeraWithoutAdId'
```


#### Usage
in Swift

```swift
import Netmera
```

```didFinishLaunchingWithOptions``` in AppDelegate

```swift
      Netmera.start()
      Netmera.setBaseURL("{BASE_URL}") // Optional
      Netmera.setAPIKey("{apiKey}")
      Netmera.setAppGroupName("{app.group.name}") // Optional if you want use notification content extension

      // Request notifcation authorization.
      Netmera.requestPushNotificationAuthorization(forTypes: [.alert, .sound, .badge])
      Netmera.setLogLevel(NetmeraLogLevel.debug)
```

in Objective-c

```objc
#import <Netmera/Netmera.h>
```

```didFinishLaunchingWithOptions``` in AppDelegate

```objc
    [Netmera setLogLevel:NetmeraLogLevelDebug];
    [Netmera start];
    [Netmera setAPIKey:@"{API_KEY}"];
    [Netmera setBaseURL:@"{BASE_URL}"]; // Optional
    [Netmera setAppGroupName:@"app.group.name"]; // Optional if you want use notification content extension
```


### Change Log
See Netmera's [iOS SDK Change Log](https://developer.netmera.com/en/IOS/sdk-versions).

#### Support
support@netmera.com

## License

Netmera is distributed under the Apache license. [See LICENSE](./LICENSE.md) for details.
