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
    IBOutlet UIButton *closeKeyboard;
    IBOutlet UILabel *swipeLeftToClose;
    
    UISwipeGestureRecognizer *swipeLeft;
    
    NSString *defaultDescription;
}

//Actions for the various on-screen elements. All are self-explanatory.
-(IBAction)showDateSpinner:(id)sender;
-(IBAction)changeButtonText:(id)sender;
-(IBAction)showKeyboardButton:(id)sender;
-(IBAction)closeKeyboard:(id)sender;

//Takes the entered information, appends it to the main view, and closes this view
-(void)saveAndClose:(UISwipeGestureRecognizer*)recognizer;

//In the implementation file, this function returns the blank string that exists in the text field when the view first opens.
-(NSString*)getDefaultText;

@property (strong)id<thisEvent> delegate;

@end
