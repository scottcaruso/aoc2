//
//  Shape.h
//  aoc2
//
//  Created by Scott Caruso on 1/9/13.
//  Copyright (c) 2013 Scott Caruso. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Shape : NSObject
{
@protected
    int numSides;
}

-(NSString*)printNumSides;
-(void)setNumSides:(int)shapeSides;

@end
