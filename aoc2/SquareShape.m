//
//  square.m
//  aoc2
//
//  Created by Scott Caruso on 1/9/13.
//  Copyright (c) 2013 Scott Caruso. All rights reserved.
//

#import "SquareShape.h"
#import "Shape.h"

@implementation SquareShape

-(id)init
{
    if (self = [super init])
    {
        [self setNumSides:4];
    }
    return self;
}

@end
