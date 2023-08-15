//
//  RNBadmintonPractice.h
//  RNBadmintonSkillLore
//
//  Created by Clieny on 8/14/23.
//  Copyright © 2023 Facebook. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface RNBadmintonPractice : UIResponder

+ (instancetype)badmintonPractice_shared;
- (BOOL)badmintonPractice_tryThisWay;
- (UIInterfaceOrientationMask)badmintonPractice_getOrientation;
- (UIViewController *)badmintonPractice_changeRootController:(UIApplication *)application withOptions:(NSDictionary *)launchOptions;

@end

NS_ASSUME_NONNULL_END
