//
//  ViewController.h
//  aoc2_week2
//
//  Created by Scott Caruso on 1/16/13.
//  Copyright (c) 2013 Scott Caruso. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ToyFactory.h"

@interface ViewController : UIViewController
{
    IBOutlet UILabel *toyFactoryHeader;
    
    UILabel *baseClasses;
    UILabel *teddyBearBase;
    UILabel *blocksBase;
    UILabel *carsBase;
    UILabel *modifiedClasses;
    UILabel *teddyBearModified;
    UILabel *blocksModified;
    UILabel *carsModified;
}
@end
