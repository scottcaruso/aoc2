//
//  TeddyBear.m
//  aoc2
//
//  Created by Scott Caruso on 1/10/13.
//  Copyright (c) 2013 Scott Caruso. All rights reserved.
//

#import "TeddyBear.h"

@implementation TeddyBear;
@synthesize contractBonus,isBonusYearly;

//Base "The Crusher" init
-(id)init
{
    self = [super init];
    if (self != nil)
    {
    }
    return self;
}

//Overriding the original Value of Contract method since this wrestler has a bonus as well
-(void)valueOfContract
{
}

@end
