//
//  ClassItem.m
//  ZYZone
//
//  Created by John on 14/12/11.
//  Copyright (c) 2014年 WorkMac. All rights reserved.
//

#import "ClassItem.h"
#import "ClassSet.h"

NSString *const kDemoPlots      = @"Demos";
NSString *const kPieCharts      = @"Pie Charts";
NSString *const kLinePlots      = @"Line Plots";
NSString *const kBarPlots       = @"Bar Plots";
NSString *const kFinancialPlots = @"Financial Plots";

@implementation ClassItem
@synthesize className;
@synthesize sectionName;

+(void)registerClassItem:(id)item
{
    NSLog(@"registerPlotItem for class %@", [item class]);
    
    Class itemClass = [item class];
    
    if ( itemClass ) {
        // There's no autorelease pool here yet...
        ClassItem *classItem = [[itemClass alloc] init];
        
        if ( classItem ) {
            [[ClassSet sharedClassGallery] addClassItem:classItem];
        }
    }
}

-(id)init
{
    if ( (self = [super init]) ) {
    }
    return self;
}


@end
