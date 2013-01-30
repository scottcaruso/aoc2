//
//  ViewController.h
//  aoc2_week3
//
//  Created by Scott Caruso on 1/22/13.
//  Copyright (c) 2013 Scott Caruso. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "AddEvent.h"

@interface ViewController : UIViewController <thisEvent>
{
    IBOutlet UITextView *mainView;
    IBOutlet UILabel *swipeRightToOpen;
    
    UISwipeGestureRecognizer *swipeRight;
}

//What to do when the Save button is clicked
-(IBAction)onSaveButton: (id)sender;

//Does what it sounds like - appends a new event to the main view
-(void)appendNewEvent:(NSString *)description date:(NSString *)dateString;

//See the implementation file; this essentially makes the date a friendly string.
-(NSString *)convertTimeToLocalRegion:(NSDate *)dateEntered;

@end
