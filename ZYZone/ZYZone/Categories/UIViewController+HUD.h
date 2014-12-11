//
//  UIViewController+HUD.h
//  ZYZone
//
//  Created by John on 14/12/11.
//  Copyright (c) 2014年 WorkMac. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIViewController (HUD)

- (void)showHudInView:(UIView *)view hint:(NSString *)hint;

- (void)hideHud;

- (void)showHint:(NSString *)hint;

@end
