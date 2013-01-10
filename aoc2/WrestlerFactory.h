//
//  WrestlerFactory.h
//  aoc2
//
//  Created by Scott Caruso on 1/10/13.
//  Copyright (c) 2013 Scott Caruso. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Wrestlers.h"
#import "TheCrusher.h"
#import "MachoDude.h"
#import "KidKaos.h"

@interface WrestlerFactory : NSObject

+(Wrestlers *)createNewWrestler: (int)wrestlerID;

@end
