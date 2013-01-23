//
//  AddEvent.h
//  aoc2_week3
//
//  Created by Scott Caruso on 1/22/13.
//  Copyright (c) 2013 Scott Caruso. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol thisEvent <NSObject>

-(void)grabEventText:(NSString*)textEntered date:(NSDate*)dateEntered;

@end

@interface AddEvent : UIViewController <UITextFieldDelegate>
{
    id<thisEvent> delegate;
    IBOutlet UITextField *eventDescription;
    IBOutlet UIButton *dateButton;
    IBOutlet UIDatePicker *datePicker;
}

-(IBAction)saveAndClose:(id)sender;
-(IBAction)showDateSpinner:(id)sender;
-(IBAction)changeButtonText:(id)sender;

@property (strong)id<thisEvent> delegate;

@end
