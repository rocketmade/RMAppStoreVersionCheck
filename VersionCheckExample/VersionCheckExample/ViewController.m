//
//  ViewController.m
//  RMAppStoreVersionCheck
//
//  Created by Brandon Roth on 9/4/14.
//  Copyright (c) 2014 Rocketmade. All rights reserved.
//

#import "ViewController.h"
//#import "RMAppStoreVersionCheck.h"
//#import "RMAppVersionInformation.h"

@interface ViewController ()

//@property (strong, nonatomic) RMAppStoreVersionCheck *versionCheck;
@property (weak, nonatomic) IBOutlet UILabel *checkingVersionLabel;
@property (weak, nonatomic) IBOutlet UIActivityIndicatorView *activityIndicator;
@property (weak, nonatomic) IBOutlet UILabel *appStoreVersionLabel;
@property (weak, nonatomic) IBOutlet UILabel *currentVersionLabel;
@property (weak, nonatomic) IBOutlet UIButton *checkButton;

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    //self.versionCheck = [[RMAppStoreVersionCheck alloc] init];
    self.currentVersionLabel.hidden = YES;
    self.appStoreVersionLabel.hidden = YES;
    self.checkingVersionLabel.hidden = YES;
    self.activityIndicator.hidden = YES;
}

- (IBAction)checkButtonPressed:(UIButton *)sender
{
    self.checkingVersionLabel.hidden = NO;
    self.activityIndicator.hidden = NO;
    [self.activityIndicator startAnimating];
    sender.hidden = YES;

//    [self.versionCheck checkAppStoreVersionForBundleID:@"com.payclip.Clip" completion:^(RMAppVersionInformation *versionInfo, NSError *error) {
//        self.checkingVersionLabel.hidden = YES;
//        self.activityIndicator.hidden = YES;
//        [self.activityIndicator stopAnimating];
//        sender.hidden = NO;
//
//        self.appStoreVersionLabel.hidden = NO;
//        self.currentVersionLabel.hidden = NO;
//        self.appStoreVersionLabel.text = [NSString stringWithFormat:@"App Store Version: %@", versionInfo.appStoreVersion];
//        self.currentVersionLabel.text = [NSString stringWithFormat:@"Current Version: %@", versionInfo.currentVersion];
//    }];
}

@end
