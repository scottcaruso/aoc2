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
    NSString *text;
    
    int intValue;
    
    float floatValue;
}

-(NSString*)getText;

@end
