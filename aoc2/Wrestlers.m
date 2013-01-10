//
//  Wrestlers.m
//  aoc2
//
//  Created by Scott Caruso on 1/10/13.
//  Copyright (c) 2013 Scott Caruso. All rights reserved.
//

#import "Wrestlers.h"

@implementation Wrestlers

@synthesize name,actualWeight,currentlyActive;

-(id)init
{
    self = [super init];
    if (self != nil)
    {
        [self setName:nil];
        [self setActualWeight:0];
        [self setCurrentlyActive:FALSE];
    }
    return self;
}

-(void)howMuchDoesHeWeigh
{
    NSLog(@"This wrestler currently weighs %i pounds.",actualWeight);
}

@end
