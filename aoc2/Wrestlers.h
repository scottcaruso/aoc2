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
@property NSString *name;
@property NSString *hometown;
@property int *numberOfWins;
@property bool *currentlyActive;
@property int *weight;

// initialize the data
-(id) init;

@end
