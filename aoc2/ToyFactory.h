//
//  ToyFactory.h
//  aoc2
//
//  Created by Scott Caruso on 1/10/13.
//  Copyright (c) 2013 Scott Caruso. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Toys.h"
#import "TeddyBear.h"
#import "Blocks.h"
#import "Cars.h"

@interface ToyFactory : NSObject

+(Toys *)createNewToy: (int)toyID;

@end
