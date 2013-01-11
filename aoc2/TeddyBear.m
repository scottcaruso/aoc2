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
        [self setRetailPrice:9.99];
        [self setIsOnSale:TRUE];
    }
    return self;
}

//Overriding the original Purchase Toy method since this toy is on sale
-(void)costToPurchaseToy
{
    float salePercentage;
    if (self.isOnSale == TRUE)
    {
        salePercentage = .80;
    }
    else
    {
        salePercentage = 1.00;
    }
    float totalCost;
    totalCost = (self.retailPrice * salePercentage) + self.priceToShip;
    float salePrice;
    salePrice = (self.retailPrice * salePercentage);
    NSString *formattedPrice = [NSString stringWithFormat:@"%.02f",salePrice];
    NSString *formattedShipping = [NSString stringWithFormat:@"%.02f",self.priceToShip];
    NSString *formattedCost = [NSString stringWithFormat:@"%.02f",totalCost];
    NSLog(@"This toy is on sale for %@, with a shipping cost of %@. The total customer cost is %@.",formattedPrice,formattedShipping,formattedCost);
}

@end
