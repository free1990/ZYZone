//
//  ClassSet.h
//  ZYZone
//
//  Created by John on 14/12/11.
//  Copyright (c) 2014年 WorkMac. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ClassItem.h"

@interface ClassSet : NSObject
{
    @private
    NSMutableArray *classItems;
    NSCountedSet *classSections;
}

@property (nonatomic, readonly) NSUInteger count;
@property (nonatomic, readonly) NSUInteger numberOfSections;
@property (nonatomic, readonly, retain) NSArray *sectionTitles;

+(ClassSet *)sharedClassGallery;

-(void)addClassItem:(ClassItem *)classItem;

-(void)sortByTitle;

-(ClassItem *)objectInSection:(NSInteger)section atIndex:(NSUInteger)index;
-(NSInteger)numberOfRowsInSection:(NSInteger)section;

@end
