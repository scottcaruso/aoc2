//
//  TeddyBear.h
//  aoc2
//
//  Created by Scott Caruso on 1/10/13.
//  Copyright (c) 2013 Scott Caruso. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Toys.h"

@interface TeddyBear : Toys

//property to determine if toy is on sale
@property BOOL isOnSale;

//override the cost if on sale
-(void)costToPurchaseToy;

@end
