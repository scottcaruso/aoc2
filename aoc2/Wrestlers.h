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
@property NSString *name; //what is the wrestler's name?
@property BOOL currentlyActive; //is the wrestler currently active on the roster?
@property int contractYears; //the number of years the wrestler has left on his contract
@property int annualValue; //the amount of money the wrestler costs per year

// initialize the data
-(id) init;

// how much does this wrestler cost to keep under contract?
-(void)valueOfContract;

@end
