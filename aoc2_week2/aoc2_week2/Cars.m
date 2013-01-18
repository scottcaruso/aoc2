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

-(NSString*)costToPurchaseToy: (int)numberOfToys;
{
    if (whichEditionIsThis == @"Regular")
    {
        //NSLog(@"There is no additional charge for %@ edition toys.",whichEditionIsThis);
        return [super costToPurchaseToy];
    }
    else if (whichEditionIsThis == @"Limited")
    {
        float totalPrice;
        totalPrice = self.retailPrice + 9.99;
        float totalCost;
        totalCost = numberOfToys*(totalPrice + self.priceToShip);
        NSString *priceWithInsurance = [NSString stringWithFormat:@"%.02f",totalPrice];
        NSString *formattedShipping = [NSString stringWithFormat:@"%.02f",self.priceToShip];
        NSString *formattedCost = [NSString stringWithFormat:@"%.02f",totalCost];
        NSString *result = [NSString stringWithFormat:@"With the mandatory %@ edition insurance purchase, the total price of the %@ is $%@. The total cost of %i car(s) to the customer is $%@, after a $%@ shipping cost.",whichEditionIsThis,self.name,priceWithInsurance,numberOfToys,formattedCost,formattedShipping];
        return result;
    }
    else if (whichEditionIsThis == @"Special")
    {
        float totalPrice;
        totalPrice = self.retailPrice + 3.99;
        float totalCost;
        totalCost = numberOfToys*(totalPrice + self.priceToShip);
        NSString *priceWithInsurance = [NSString stringWithFormat:@"%.02f",totalPrice];
        NSString *formattedShipping = [NSString stringWithFormat:@"%.02f",self.priceToShip];
        NSString *formattedCost = [NSString stringWithFormat:@"%.02f",totalCost];
        NSString *result = [NSString stringWithFormat:@"With the mandatory %@ edition insurance purchase, the total price of the %@ is $%@. The total cost of %i car(s) to the customer is $%@, after a $%@ shipping cost.",whichEditionIsThis,self.name,priceWithInsurance,numberOfToys,formattedCost,formattedShipping];
        return result;
    }
    else if (whichEditionIsThis == @"Standard")
    {
        float totalPrice;
        totalPrice = self.retailPrice;
        float totalCost;
        totalCost = numberOfToys*(totalPrice + self.priceToShip);
        NSString *priceWithInsurance = [NSString stringWithFormat:@"%.02f",totalPrice];
        NSString *formattedShipping = [NSString stringWithFormat:@"%.02f",self.priceToShip];
        NSString *formattedCost = [NSString stringWithFormat:@"%.02f",totalCost];
        NSString *result = [NSString stringWithFormat:@"No insurance is required with the %@ edition purchase. The total price of the %@ is $%@. The total cost of %i car(s) to the customer is $%@, after a $%@ shipping cost.",whichEditionIsThis,self.name,priceWithInsurance,numberOfToys,formattedCost,formattedShipping];
        return result;
    }
    return nil;
}

@end
