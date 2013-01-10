//
//  triangle.m
//  aoc2
//
//  Created by Scott Caruso on 1/9/13.
//  Copyright (c) 2013 Scott Caruso. All rights reserved.
//

#import "TriangleShape.h"
#import "Shape.h"

@implementation TriangleShape

-(id)init
{
    if (self = [super init])
    {
        [self setNumSides:3];
    }
    return self;
}

@end
