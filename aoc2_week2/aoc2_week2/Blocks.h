//
//  Blocks.h
//  aoc2
//
//  Created by Scott Caruso on 1/10/13.
//  Copyright (c) 2013 Scott Caruso. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Toys.h"

@interface Blocks : Toys

//property to determine additional shipping charges
@property BOOL isOverweight;
@property int weightOfToy;

//override the cost if on sale
-(NSString *)costToPurchaseToy;

//Test edit

@end
