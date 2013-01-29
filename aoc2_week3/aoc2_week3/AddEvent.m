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

-(void)viewWillAppear:(BOOL)animated
{
    //initiatilize the swiper label at the bottom
    swipeLeft = [[UISwipeGestureRecognizer alloc] initWithTarget:self action:@selector(saveAndClose:)];
    swipeLeft.direction = UISwipeGestureRecognizerDirectionLeft;
    [swipeLeftToClose addGestureRecognizer:swipeLeft];
    defaultDescription = [self getDefaultText]; //This gets the default string from the text field as the view loads. Used to determine if text has been entered later.
    
    //obtain the default Event Description
    
    [super viewWillAppear:animated];
}


//This is what gets called when the Save button is clicked.
-(void)saveAndClose:(UISwipeGestureRecognizer*)recognizer
{
    if (recognizer.direction == UISwipeGestureRecognizerDirectionLeft)
    {
        if (eventDescription.text == defaultDescription) //verifies if any text has been entered
        {
            UIAlertView *warning = [[UIAlertView alloc] initWithTitle:@"No text." message:@"Please enter some descriptive text for this event before saving." delegate:nil cancelButtonTitle:@"OK" otherButtonTitles:nil];
            [warning show];
        } else
        {
            [self dismissViewControllerAnimated:TRUE completion:nil];
            if (delegate != nil)
            {
                [delegate grabEventText:eventDescription.text date:[datePicker date]];
            }
        }
    }
}

-(NSString*)getDefaultText
{
    NSString *defaultText = eventDescription.text;
    return defaultText;
}

//Show the Date Spinner, set the minimum date to the current date/time, and change the button to display a value
-(IBAction)showDateSpinner:(id)sender
{
    datePicker.hidden = FALSE;
    NSDateFormatter *formatter = [[NSDateFormatter alloc] init];
    [formatter setDateFormat: @"MM-dd-YYYY"];
    NSString *stringFromDate = [formatter stringFromDate:[datePicker date]];
    [dateButton setTitle:stringFromDate forState:0]; //sets the text on the button to the minimum date
    [dateButton setTitle:stringFromDate forState:1];
    [dateButton setTitle:stringFromDate forState:2];
    NSDate* thisDate = [datePicker date];
    datePicker.minimumDate = thisDate; //sets the minimum date for the picker
}

//When the spinner value changes, change the value of the button
-(IBAction)changeButtonText:(id)sender
{
    NSDateFormatter *formatter = [[NSDateFormatter alloc] init];
    [formatter setDateFormat: @"MM-dd-YYYY"];
    NSString *stringFromDate = [formatter stringFromDate:[datePicker date]];
    [dateButton setTitle:stringFromDate forState:0];
    [dateButton setTitle:stringFromDate forState:1];
    [dateButton setTitle:stringFromDate forState:2];
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
