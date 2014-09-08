RMAppStoreVersionCheck
============================

A simple block based library used to query the app store for new versions of your app.  The library keeps track of new versions and remembers when they were first discovered.  The library uses reachability to ensure network access before checking for a new version.

###Installation

```ruby
pod 'RMAppStoreVersionCheck', '~> 1.0'
```

###Usage

```objectiv-c
    self.versionCheck = [[RMAppStoreVersionCheck alloc] init];
    [self.versionCheck checkAppStoreVersionForBundleID:@"your.bundle.id" completion:^(RMAppVersionInformation *versionInfo, NSError *error) {
        if (versionInfo) {
            if (versionInfo.newVersionAvailable && versionInfo.isNewDiscovery) {
                NSLog(@"New app version available");
            }
        }
        else if (error){
            NSLog(@"Error checking for new version: %@", error);
        }
    }];
```
