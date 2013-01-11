//
//  Blocks.m
//  aoc2
//
//  Created by Scott Caruso on 1/10/13.
//  Copyright (c) 2013 Scott Caruso. All rights reserved.
//

#import "Blocks.h"

@implementation Blocks
@synthesize isOverweight,weightOfToy;

//Base "Blocks" init
-(id)init
{
    self = [super init];
    if (self != nil)
    {
        //[self setRetailPrice:29.99];
        //[self setIsOverweight:TRUE];
        //[self setWeightOfToy:25];
    }
    return self;
}

//Overriding the original Purchase Toy method since this toy is on sale
-(void)costToPurchaseToy
{
    if (isOverweight == TRUE)
    {
        NSLog(@"Shipping on over-sized items costs an extra $.50 per pound over 5 pounds!");
        if (weightOfToy > 5)
        {
            int howManyPoundsOverweight;
            howManyPoundsOverweight = (weightOfToy - 5);
            float shippingCost;
            shippingCost = ((howManyPoundsOverweight) * .5) + super.priceToShip;
            float totalCost;
            totalCost = (self.retailPrice) + shippingCost;
            NSString *formattedPrice = [NSString stringWithFormat:@"%.02f",self.retailPrice];
            NSString *formattedShipping = [NSString stringWithFormat:@"%.02f",shippingCost];
            NSString *formattedCost = [NSString stringWithFormat:@"%.02f",totalCost];
            NSString *formattedBaseShipping = [NSString stringWithFormat:@"%.02f",super.priceToShip];
            NSLog(@"This toy is %i pounds overweight, which means that it costs $%@ to ship rather than the standard $%@. At a retail price of $%@, that brings the total cost to $%@.",howManyPoundsOverweight,formattedShipping,formattedBaseShipping,formattedPrice,formattedCost);
        }
        else
        {
            NSLog(@"Standard shipping rates apply to items under 5 pounds.");
            [super costToPurchaseToy];
        }
    }
    else
    {
        [super costToPurchaseToy];
    }
}

@end
