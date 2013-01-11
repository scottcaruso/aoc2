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

//Base "Cars" init
-(id)init
{
    self = [super init];
    if (self != nil)
    {
        [self setName:@"Toy Cars"];
        [self setRetailPrice:19.95];
        [self setWhichEditionIsThis:@"Limited"];
    }
    return self;
}

-(NSString*)costToPurchaseToy;
{
    if (whichEditionIsThis == @"Regular")
    {
        //NSLog(@"There is no additional charge for %@ edition toys.",whichEditionIsThis);
        return [super costToPurchaseToy];
    }
    else if (whichEditionIsThis == @"Limited")
    {
        //NSLog(@"We require insurance of $9.99 be purchased for all Limited edition shipments.");
        float totalPrice;
        totalPrice = self.retailPrice + 9.99;
        float totalCost;
        totalCost = totalPrice + self.priceToShip;
        NSString *priceWithInsurance = [NSString stringWithFormat:@"%.02f",totalPrice];
        NSString *formattedShipping = [NSString stringWithFormat:@"%.02f",self.priceToShip];
        NSString *formattedCost = [NSString stringWithFormat:@"%.02f",totalCost];
        NSString *result = [NSString stringWithFormat:@"With the mandatory %@ edition insurance purchase, the total price of the %@ is $%@. The total cost to the customer is $%@, after a $%@ shipping cost.",whichEditionIsThis,self.name,priceWithInsurance,formattedCost,formattedShipping];
        return result;
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
        NSString *result = [NSString stringWithFormat:@"With the mandatory %@ edition insurance purchase, the total price of the %@ is $%@. The total cost to the customer is $%@, after a $%@ shipping cost.",whichEditionIsThis,self.name,priceWithInsurance,formattedCost,formattedShipping];
        return result;
    }
    else
    {
        //NSLog(@"A valid edition was not entered. Reverted to standard shipping rates.");
        return [super costToPurchaseToy];
    }
    return nil;
}

@end
