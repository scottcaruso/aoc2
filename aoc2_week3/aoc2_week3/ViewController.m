//
//  ViewController.m
//  aoc2_week3
//
//  Created by Scott Caruso on 1/22/13.
//  Copyright (c) 2013 Scott Caruso. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

//This function opens the AddEvent view.
-(IBAction)openSecondView:(id)sender
{
    AddEvent *addEvent = [[AddEvent alloc] initWithNibName:@"AddEvent" bundle:nil];
    if (addEvent != nil);
    {
        addEvent.delegate = self;
        [self presentViewController:addEvent animated:TRUE completion:nil];
    }
    
}

//This function takes the information from the secondview and calls the append method against it.
-(void)grabEventText:(NSString *)textEntered date:(NSDate*)dateEntered
{
    NSString* newEvent = textEntered;
    NSDate* newDate = dateEntered;
    NSString* formattedDate = [self convertTimeToLocalRegion:newDate]; //calls the method to convert NSDate into something more user-friendly
    [self appendNewEvent:newEvent date:formattedDate];
}

//This function does the grunt work of appending to the main view.
-(void)appendNewEvent:(NSString *)description date:(NSString *)dateString
{
    if (mainView.tag == 0) //determines if the view is in its default state or not.
    {
        mainView.text = [NSString stringWithFormat:@"Event Description: %@\nEvent Date: %@",description,dateString];
        mainView.tag = 1; //increments the tag so that the view knows it is no longer default.
    }
    else
    {
        NSString *existingString = [NSString stringWithFormat:@"%@",mainView.text]; //captures the existing mainview string.
        NSString *newString = [NSString stringWithFormat:@"%@\n\nEvent Description: %@\nEvent Date: %@",existingString,description,dateString]; //appends the new string to the existing string
        mainView.text = newString; //sets the view
    }
}

//Converts the NSDate to something that's more readable by normal people.
-(NSString *)convertTimeToLocalRegion:(NSDate *)dateEntered
{
    NSDateFormatter *formatter = [[NSDateFormatter alloc] init];
    [formatter setDateFormat: @"EEEE, MM-dd-YYYY hh:mm a zzz"];
    NSString *stringFromDate = [formatter stringFromDate:dateEntered];
    return stringFromDate;
}

@end
