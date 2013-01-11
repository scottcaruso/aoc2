//
//  Wrestlers.m
//  aoc2
//
//  Created by Scott Caruso on 1/10/13.
//  Copyright (c) 2013 Scott Caruso. All rights reserved.
//

#import "Wrestlers.h"

@implementation Wrestlers

@synthesize name,contractYears,annualValue,currentlyActive;

-(id)init
{
    self = [super init];
    if (self != nil)
    {
        [self setName:nil];
        [self setContractYears:0];
        [self setAnnualValue:0];
        [self setCurrentlyActive:nil];
    }
    return self;
}

-(void)valueOfContract
{
    int totalValue = contractYears * annualValue;
    NSLog(@"This wrestler's contract will cost the company %i dollars over the next %i years.",totalValue,contractYears);
}

@end
