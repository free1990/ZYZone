//
//  ClassItem.h
//  ZYZone
//
//  Created by John on 14/12/11.
//  Copyright (c) 2014年 WorkMac. All rights reserved.
//
#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

extern NSString *const kDemoPlots;
extern NSString *const kPieCharts;
extern NSString *const kLinePlots;
extern NSString *const kBarPlots;
extern NSString *const kFinancialPlots;

#import <Foundation/Foundation.h>

@interface ClassItem : NSObject

@property (nonatomic, strong) NSString *className;
@property (nonatomic, strong) NSString *sectionName;

+(void)registerClassItem:(id)item;

-(NSComparisonResult)titleCompare:(ClassItem *)other;
@end
