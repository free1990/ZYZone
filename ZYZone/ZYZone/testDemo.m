//
//  testDemo.m
//  ZYZone
//
//  Created by John on 14/12/11.
//  Copyright (c) 2014年 WorkMac. All rights reserved.
//

#import "testDemo.h"

@implementation testDemo

+(void)load
{
    [super registerClassItem:self];
}

-(id)init
{
    if ( (self = [super init]) ) {
        self.className   = @"test Demo";
        self.sectionName = kDemoPlots;
    }
    
    return self;
}

@end
