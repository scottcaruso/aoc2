//
//  Toys.h
//  aoc2
//
//  Created by Scott Caruso on 1/10/13.
//  Copyright (c) 2013 Scott Caruso. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Toys : NSObject
{
    int toyEnum;
}

typedef enum {
    TEDDYBEAR,
    BLOCKS,
    CARS
} toyEnum;

//various data properties for the wrestlers
@property NSString *name; //what is the toy called?
@property float retailPrice; //what is this toy's retail price?
@property float priceToShip; //how much does this toy cost to ship?

// initialize the data
-(id)init;

// how much does this toy cost a customer to order?
-(void)costToPurchaseToy;

@end
