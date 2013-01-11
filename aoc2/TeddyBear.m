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
        [self setName:@"The Crusher"];
        [self setContractYears:3];
        [self setAnnualValue:275000];
        [self setContractBonus:100000];
        [self setIsBonusYearly:TRUE];
    }
    return self;
}

//Overriding the original Value of Contract method since this wrestler has a bonus as well
-(void)valueOfContract
{
    int baseValue = self.contractYears * self.annualValue;
    int bonusValue;
    if (isBonusYearly == TRUE)
    {
        bonusValue = self.contractYears * contractBonus;
    }
    else
    {
        bonusValue = contractBonus;
    }
    int totalValue = baseValue + bonusValue;
    NSLog(@"This wrestler's contract will cost the company %i dollars over the next %i years.",totalValue,self.contractYears);
}

@end
