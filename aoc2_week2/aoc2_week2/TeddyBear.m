//
//  TeddyBear.m
//  aoc2
//
//  Created by Scott Caruso on 1/10/13.
//  Copyright (c) 2013 Scott Caruso. All rights reserved.
//

#import "TeddyBear.h"

@implementation TeddyBear;
@synthesize isOnSale;

//Base "Bear" init
-(id)init
{
    self = [super init];
    if (self != nil)
    {
        [self setName:@"Teddy Bear"];
        [self setRetailPrice:9.99];
        [self setIsOnSale:FALSE];
    }
    return self;
}

//Overriding the original Purchase Toy method since this toy is on sale
-(NSString *)costToPurchaseToy: (float)salePercentage :(float)numberOfToys
{
    float totalCost;
    float percentOff;
    percentOff = salePercentage/100.;
    totalCost = numberOfToys*(self.retailPrice * (1.-percentOff) + self.priceToShip);
    float salePrice;
    salePrice = self.retailPrice * (1.-percentOff);
    NSString *formattedNumberOfToys = [NSString stringWithFormat:@"%.f",numberOfToys];
    NSString *formattedPrice = [NSString stringWithFormat:@"%.02f",salePrice];
    NSString *formattedShipping = [NSString stringWithFormat:@"%.02f",self.priceToShip];
    NSString *formattedCost = [NSString stringWithFormat:@"%.02f",totalCost];
    NSString *result = [NSString stringWithFormat:@"%@ %@ toys on sale for $%@, with a shipping cost of $%@. The total customer cost is $%@.",formattedNumberOfToys,self.name,formattedPrice,formattedShipping,formattedCost];
    return result;
}

@end
