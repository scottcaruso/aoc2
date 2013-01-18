//
//  ToyFactory.m
//  aoc2
//
//  Created by Scott Caruso on 1/10/13.
//  Copyright (c) 2013 Scott Caruso. All rights reserved.
//

#import "ToyFactory.h"

@implementation ToyFactory

+(Toys *)createNewToy: (int)toyID
{
    if (toyID == TEDDYBEAR)
    {
        return [[TeddyBear alloc] init];
    } else if (toyID == BLOCKS)
    {
        return [[Blocks alloc] init];
    } else if (toyID == CARS)
    {
        return [[Cars alloc] init];
    } else return nil;
}

@end
