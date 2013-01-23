//
//  ViewController.h
//  aoc2_week3
//
//  Created by Scott Caruso on 1/22/13.
//  Copyright (c) 2013 Scott Caruso. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "AddEvent.h"

@protocol thisEvent <NSObject>

@required
-(void)grabEventText:(NSString *)textEntered date:(NSDate*)dateEntered;

@end

@interface ViewController : UIViewController <thisEvent>
{

}

-(IBAction)openSecondView: (id)sender;

@end
