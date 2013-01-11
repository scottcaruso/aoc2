//
//  Cars.m
//  aoc2
//
//  Created by Scott Caruso on 1/10/13.
//  Copyright (c) 2013 Scott Caruso. All rights reserved.
//

#import "Cars.h"

@implementation Cars

@synthesize whichEditionIsThis;

//Base "Blocks" init
-(id)init
{
    self = [super init];
    if (self != nil)
    {
        [self setRetailPrice:19.95];
        [self setWhichEditionIsThis:@"Limited"];
    }
    return self;
}

-(void)costToPurchaseToy;
{
    if (whichEditionIsThis == @"Regular")
    {
        NSLog(@"There is no additional charge for %@ edition toys.",whichEditionIsThis);
        [super costToPurchaseToy];
    }
    else if (whichEditionIsThis == @"Limited")
    {
        NSLog(@"We require insurance of $9.99 be purchased for all Limited edition shipments.");
        float totalPrice;
        totalPrice = self.retailPrice + 9.99;
        float totalCost;
        totalCost = totalPrice + self.priceToShip;
        NSString *priceWithInsurance = [NSString stringWithFormat:@"%.02f",totalPrice];
        NSString *formattedShipping = [NSString stringWithFormat:@"%.02f",self.priceToShip];
        NSString *formattedCost = [NSString stringWithFormat:@"%.02f",totalCost];
        NSLog(@"With the mandatory %@ edition insurance purchase, the total price of this item is $%@. The total cost to the customer is $%@, after a $%@ shipping cost.",whichEditionIsThis,priceWithInsurance,formattedCost,formattedShipping);
    }
    else if (whichEditionIsThis == @"Special")
    {
        NSLog(@"We require insurance of $3.99 be purchased for all %@ edition shipments.",whichEditionIsThis);
        float totalPrice;
        totalPrice = self.retailPrice + 3.99;
        float totalCost;
        totalCost = totalPrice + self.priceToShip;
        NSString *priceWithInsurance = [NSString stringWithFormat:@"%.02f",totalPrice];
        NSString *formattedShipping = [NSString stringWithFormat:@"%.02f",self.priceToShip];
        NSString *formattedCost = [NSString stringWithFormat:@"%.02f",totalCost];
        NSLog(@"With the mandatory %@ edition insurance purchase, the total price of this item is $%@. The total cost to the customer is $%@, after a $%@ shipping cost.",whichEditionIsThis,priceWithInsurance,formattedCost,formattedShipping);
    }
    else
    {
        NSLog(@"A valid edition was not entered. Reverted to standard shipping rates.");
        [super costToPurchaseToy];
    }
}

@end
