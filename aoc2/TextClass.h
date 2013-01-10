//
//  TextClass.h
//  aoc2
//
//  Created by Scott Caruso on 1/8/13.
//  Copyright (c) 2013 Scott Caruso. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface TextClass : NSObject
{
@private
    NSString *text;
@public
    NSInteger intValue;
    float floatValue;
}

-(void)setInt:(NSInteger)tempValue;
+(void)printInt:(NSInteger)value;

@end
