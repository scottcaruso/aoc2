//
//  Wrestlers.h
//  aoc2
//
//  Created by Scott Caruso on 1/10/13.
//  Copyright (c) 2013 Scott Caruso. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Wrestlers : NSObject
{
    int wrestlerEnum;
}

typedef enum {
    THECRUSHER,
    MACHODUDE,
    KIDKAOS
} wrestlerEnum;

//various data properties for the wrestlers
@property NSString *name; //what is the wrestler's real name?
@property bool *currentlyActive; //is the wrestler currently active on the roster?
@property int actualWeight; //the number of pounds the wrestler actually is

// initialize the data
-(id) init;

// what is the wrestler's weight?
-(void)howMuchDoesHeWeigh;

@end
