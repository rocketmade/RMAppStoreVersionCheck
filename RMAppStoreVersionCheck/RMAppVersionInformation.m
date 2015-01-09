//
//  AppVersionInformation.m
//  Clip
//
//  Created by Brandon Roth on 9/4/14.
//  Copyright (c) 2014 Rocketmade LLC. All rights reserved.
//

#import "RMAppVersionInformation.h"

NSString *const kUserDefaultsVersionCheckKey = @"versionCheck";

@implementation RMAppVersionInformation

- (instancetype)initWithAppStoreVersion:(NSString *)appStoreVersion {
    if (!appStoreVersion) {
        return nil;
    }

    if (self = [super init]) {
        _appStoreVersion = appStoreVersion;
        NSMutableDictionary *knownVersions = [[[NSUserDefaults standardUserDefaults] objectForKey:kUserDefaultsVersionCheckKey] mutableCopy];
        if (!knownVersions) knownVersions = [NSMutableDictionary dictionary];

        _appStoreVersionDiscoveryDate = knownVersions[appStoreVersion];
        if (!_appStoreVersionDiscoveryDate) {
            _appStoreVersionDiscoveryDate = [NSDate date];
            knownVersions[appStoreVersion] = _appStoreVersionDiscoveryDate;
            [[NSUserDefaults standardUserDefaults] setObject:knownVersions forKey:kUserDefaultsVersionCheckKey];
            [[NSUserDefaults standardUserDefaults] synchronize];
            _isNewDiscovery = YES;
        }
    }
    return self;
}

- (NSString *)currentVersion {
    return [[NSBundle mainBundle] infoDictionary][@"CFBundleShortVersionString"];
}

- (BOOL)newVersionAvailable {
    NSComparisonResult comparision = [self.appStoreVersion compare:self.currentVersion];
    return comparision == NSOrderedDescending;
}

- (NSString *)description {
    NSString *desc = [super description];
    return [NSString stringWithFormat:@"%@, CurrentVersion: %@, AppStoreVersion: %@",desc,self.currentVersion, self.appStoreVersion];
}

@end
