//
//  ClassGallery.m
//  CoreClassGallery
//
//  Created by Jeff Buck on 7/31/10.
//  Copyright 2010 Jeff Buck. All rights reserved.
//

#import "ClassSet.h"

@implementation ClassSet

static ClassSet *sharedClassGallery = nil;

+(ClassSet *)sharedClassGallery
{
    @synchronized(self)
    {
        if ( sharedClassGallery == nil ) {
            sharedClassGallery = [[self alloc] init];
        }
    }
    return sharedClassGallery;
}

+(id)allocWithZone:(NSZone *)zone
{
    @synchronized(self)
    {
        if ( sharedClassGallery == nil ) {
            return [super allocWithZone:zone];
        }
    }
    return sharedClassGallery;
}

-(id)init
{
    Class thisClass = [self class];

    @synchronized(thisClass)
    {
        
        if ( sharedClassGallery == nil ) {
            if ( (self = [super init]) ) {
                sharedClassGallery = self;
                classItems         = [[NSMutableArray alloc] init];
                classSections      = [[NSCountedSet alloc] init];
            }
        }
    }

    return sharedClassGallery;
}

-(id)copyWithZone:(NSZone *)zone
{
    return self;
}


-(void)addClassItem:(ClassItem *)classItem
{
    [classItems addObject:classItem];

    NSString *sectionName = classItem.sectionName;
    if ( sectionName ) {
        [classSections addObject:sectionName];
    }
}

-(NSUInteger)count
{
    return classItems.count;
}

-(NSUInteger)numberOfSections
{
    return classSections.count;
}

-(NSInteger)numberOfRowsInSection:(NSInteger)section
{
    return [classSections countForObject:[self sectionTitles][section]];
}

-(ClassItem *)objectInSection:(NSInteger)section atIndex:(NSUInteger)index
{
    NSUInteger offset = 0;

    for ( NSUInteger i = 0; i < section; i++ ) {
        offset += [self numberOfRowsInSection:i];
    }

    return classItems[offset + index];
}

-(void)sortByTitle
{
    [classItems sortUsingSelector:@selector(titleCompare:)];
}


-(NSArray *)sectionTitles
{
    return [[classSections allObjects] sortedArrayUsingSelector:@selector(caseInsensitiveCompare:)];
}

@end
