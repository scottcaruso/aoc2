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
    IBOutlet UITextView *mainView;
    IBOutlet UILabel *swipeRightToOpen;
    
    UISwipeGestureRecognizer *swipeRight;
}

//-(IBAction)openSecondView: (id)sender;
-(IBAction)onSaveButton: (id)sender;

-(void)appendNewEvent:(NSString *)description date:(NSString *)dateString;

-(NSString *)convertTimeToLocalRegion:(NSDate *)dateEntered;

@end
