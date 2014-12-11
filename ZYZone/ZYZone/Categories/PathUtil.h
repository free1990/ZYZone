//
//  PathUtil.h
//  ZYZone
//
//  Created by John on 14/12/11.
//  Copyright (c) 2014年 WorkMac. All rights reserved.
//
#import <Foundation/Foundation.h>

@interface PathUtil : NSObject

/**
 * 获取documents路径
 */
+ (NSString *)documentsDirectory;

/**
 * 获取caches路径
 */
+ (NSString *)cachesDirectory;

@end
