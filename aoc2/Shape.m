//
//  Shape.m
//  aoc2
//
//  Created by Scott Caruso on 1/9/13.
//  Copyright (c) 2013 Scott Caruso. All rights reserved.
//

#import "Shape.h"

@implementation Shape

-(void)setNumSides:(int)shapeSides
{
    numSides = shapeSides;
}

-(NSString*)printNumSides
{
    NSLog(@"The number of sides is %d",numSides);
}

@end
