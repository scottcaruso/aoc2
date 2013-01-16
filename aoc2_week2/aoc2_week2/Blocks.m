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
        [self setName:@"Building Blocks"];
        [self setRetailPrice:29.99];
        [self setIsOverweight:TRUE];
        [self setWeightOfToy:25];
    }
    return self;
}

//Overriding the original Purchase Toy method since this toy is on sale
-(NSString *)costToPurchaseToy
{
    if (isOverweight == TRUE)
    {
       //NSLog(@"Shipping on over-sized items costs an extra $.50 per pound over 5 pounds!");
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
            NSString *result = [NSString stringWithFormat:@"The %@ are %i pounds overweight, which means that it costs $%@ to ship rather than the standard $%@. At a retail price of $%@, that brings the total cost to $%@.",self.name,howManyPoundsOverweight,formattedShipping,formattedBaseShipping,formattedPrice,formattedCost];
            return result;
        }
        else
        {
            NSString *underWeight = [NSString stringWithFormat:@"Since this object only weighs %i pounds, it qualifies for standard shipping.",weightOfToy];
            NSString *costString = [super costToPurchaseToy];
            NSString *result = [NSString stringWithFormat:@"%@ %@",underWeight,costString];
        return result;
        }
    }
    else
    {
        return [super costToPurchaseToy];
    }
    return nil;
}

@end
