//
//  Toys.m
//  aoc2
//
//  Created by Scott Caruso on 1/10/13.
//  Copyright (c) 2013 Scott Caruso. All rights reserved.
//

#import "Toys.h"

@implementation Toys

@synthesize name,retailPrice,priceToShip;

-(id)init
{
    self = [super init];
    if (self != nil)
    {
        [self setName:nil];
        [self setRetailPrice:0.00];
        [self setPriceToShip:4.95];
    }
    return self;
}

-(NSString *)costToPurchaseToy;
{
    float totalCost;
    totalCost = retailPrice + priceToShip;
    NSString *formattedPrice = [NSString stringWithFormat:@"%.02f",retailPrice];
    NSString *formattedShipping = [NSString stringWithFormat:@"%.02f",priceToShip];
    NSString *formattedCost = [NSString stringWithFormat:@"%.02f",totalCost];
    NSString *result = [NSString stringWithFormat:@"The %@ costs $%@, with a shipping cost of $%@. The total customer cost is $%@.",self.name,formattedPrice,formattedShipping,formattedCost];
    return result;
}

@end
