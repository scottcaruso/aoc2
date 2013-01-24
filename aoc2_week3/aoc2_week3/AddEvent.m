//
//  AddEvent.m
//  aoc2_week3
//
//  Created by Scott Caruso on 1/22/13.
//  Copyright (c) 2013 Scott Caruso. All rights reserved.
//

#import "AddEvent.h"

@interface AddEvent ()

@end

@implementation AddEvent
@synthesize delegate;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

//This is what gets called when the Save button is clicked.
-(IBAction)saveAndClose:(id)sender
{
    [self dismissViewControllerAnimated:TRUE completion:nil];
    if (delegate != nil)
    {
        [delegate grabEventText:eventDescription.text date:[datePicker date]];
    }
}

//Show the Date Spinner, set the minimum date to the current date/time, and change the button to display a value
-(IBAction)showDateSpinner:(id)sender
{
    datePicker.hidden = FALSE;
    NSString* date = [NSString stringWithFormat:@"%@",[datePicker date]];
    NSString* modifiedDateString = [date substringToIndex:10];
    [dateButton setTitle:modifiedDateString forState:0]; //sets the text on the button to the minimum date
    [dateButton setTitle:modifiedDateString forState:1];
    [dateButton setTitle:modifiedDateString forState:2];
    NSDate* thisDate = [datePicker date];
    datePicker.minimumDate = thisDate; //sets the minimum date for the picker
}

//When the spinner value changes, change the value of the button
-(IBAction)changeButtonText:(id)sender
{
    NSString* date = [NSString stringWithFormat:@"%@",[datePicker date]];
    NSString* modifiedDateString = [date substringToIndex:10];
    [dateButton setTitle:modifiedDateString forState:0];
    [dateButton setTitle:modifiedDateString forState:1];
    [dateButton setTitle:modifiedDateString forState:2];
}

//Calls the Hide Keyboard button to appear when the keyboard becomes active.
-(IBAction)showKeyboardButton:(id)sender
{
    closeKeyboard.hidden = FALSE;
}

//Closes the keyboard when the Hide Keyboard button is pressed
-(IBAction)closeKeyboard:(id)sender
{
    [eventDescription resignFirstResponder];
    closeKeyboard.hidden = TRUE;
}


@end
