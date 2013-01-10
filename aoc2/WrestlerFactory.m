//
//  WrestlerFactory.m
//  aoc2
//
//  Created by Scott Caruso on 1/10/13.
//  Copyright (c) 2013 Scott Caruso. All rights reserved.
//

#import "WrestlerFactory.h"

@implementation WrestlerFactory

+(Wrestlers *)createNewWrestler: (int)wrestlerID
{
    return [[WrestlerOne alloc] init];
}

@end
