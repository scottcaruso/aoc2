//
//  WrestlerOne.h
//  aoc2
//
//  Created by Scott Caruso on 1/10/13.
//  Copyright (c) 2013 Scott Caruso. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Wrestlers.h"

@interface TheCrusher : Wrestlers

//property to determine "billed" weight of the wrestler - what the announcers say he weighs rather than what he actually weighs
@property int billedWeight;
//property to determine the stage name of hte wrestlier - what the wrestler is called rather than what his real life name is
@property NSString *stageName;

//override the actualweight calculation with billed weight instead
-(void)howMuchDoesHeWeigh;


@end
