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

//property to determine any bonus the wrestler is paid
@property int contractBonus;
//property to determine if bonus is yearly or one lump sump. TRUE = yearly
@property bool isBonusYearly;

//override the actualweight calculation with billed weight instead
-(void)valueOfContract;


@end
