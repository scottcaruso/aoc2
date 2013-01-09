//
//  TextClass.m
//  aoc2
//
//  Created by Scott Caruso on 1/8/13.
//  Copyright (c) 2013 Scott Caruso. All rights reserved.
//

#import "TextClass.h"

@implementation TextClass
//id means Object of Objective-C type!
-(id)init
{
    self = [super init];
    if (self != nil);
    {
        //ant init for this object
        intValue = 4;
        floatValue = 10.3f;
    }

    return self;
}

-(NSString*)getText
{
    text = [NSString stringWithFormat:@"int = %d, float = %f",intValue,floatValue];
    if (text != nil)
    {
        return text;
    }
    return nil;
}
@end
