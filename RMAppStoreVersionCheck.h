//
//  VersionCheck.h
//  Clip
//
//  Created by Brandon Roth on 8/28/14.
//  Copyright (c) 2014 Rockemade, LLC. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ENUM(NSUInteger, VersionCheckFailure)
{
    VersionCheckFailureItunesNotAvailble = 0,
    VersionCheckFailureMissingResponseData
};

@class RMAppVersionInformation;

typedef void (^appStoreCheckCallbackBlock)(RMAppVersionInformation *versionInfo, NSError *error);

@interface RMAppStoreVersionCheck : NSObject

/**
 *  Checks the app store for a more recent version of the app.  Searches using the main bundle id.
 *  The version check object uses SCNetworkReachability to determine if itunes is availble before checking
 *  So you must keep a reference to the VersionCheck object until the completion block is finished.
 *
 *  @param completion
 */
- (void)checkAppStoreVersion:(appStoreCheckCallbackBlock)completion;

/**
 *  Checkes the app store for a more recent version of the app using the specified bundle id.  Usefull if the bundle id is different
 *  For different types of releases but you still want to check the the app store version
 *
 *  @param bundleID   the apps bundle id.  Must not be nil.
 *  @param completion
 */
- (void)checkAppStoreVersionForBundleID:(NSString *)bundleID completion:(appStoreCheckCallbackBlock)completion;

@end
