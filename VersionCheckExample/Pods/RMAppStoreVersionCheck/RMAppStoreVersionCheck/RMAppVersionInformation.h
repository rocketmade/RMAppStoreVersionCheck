//
//  AppVersionInformation.h
//  Rocketmade
//
//  Created by Brandon Roth on 9/4/14.
//  Copyright (c) 2014 Rocketmade LLC. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface RMAppVersionInformation : NSObject

@property (copy, readonly, nonatomic) NSString *appStoreVersion;
@property (copy, readonly, nonatomic) NSString *currentVersion;
@property (copy, readonly, nonatomic) NSDate *appStoreVersionDiscoveryDate;
@property (assign, readonly, nonatomic) BOOL isNewDiscovery;

- (instancetype)initWithAppStoreVersion:(NSString *)appStoreVersion;
- (BOOL)newVersionAvailable;

@end
