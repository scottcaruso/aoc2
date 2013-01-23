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
        [self grabEventText:eventDescription.text date:[datePicker date]];
    }
}

//Show the Date Spinner and set the minimum date to the current date/time
-(IBAction)showDateSpinner:(id)sender
{
    datePicker.hidden = FALSE;
    NSString* date = [NSString stringWithFormat:@"%@",[datePicker date]];
    NSString* modifiedDateString = [date substringToIndex:10];
    [dateButton setTitle:modifiedDateString forState:0];
    [dateButton setTitle:modifiedDateString forState:1];
    [dateButton setTitle:modifiedDateString forState:2];
    NSDate* thisDate = [datePicker date];
    datePicker.minimumDate = thisDate;
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

-(BOOL)textFieldShouldBeginEditing:(UITextField *)eventEntry
{
    eventEntry.text = @"";
    
    return TRUE;
}

-(void)grabEventText:(NSString *)textEntered date:(NSDate*)dateEntered
{
    NSString* newEvent = textEntered;
    NSDate* newDate = dateEntered;
    NSLog(@"%@,%@",newEvent,newDate);
}

@end
