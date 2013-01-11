//
//  Cars.h
//  aoc2
//
//  Created by Scott Caruso on 1/10/13.
//  Copyright (c) 2013 Scott Caruso. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Toys.h"

@interface Cars: Toys

//property to determine if this is a special edition or not
@property NSString* whichEditionIsThis;

//override the cost if a special edition is being sold
-(NSString *)costToPurchaseToy;

@end
