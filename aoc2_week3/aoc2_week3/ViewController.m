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

-(void)viewWillAppear:(BOOL)animated
{
    //initiatilize the swiper label at the bottom
    swipeRight = [[UISwipeGestureRecognizer alloc] initWithTarget:self action:@selector(openSecondView:)];
    swipeRight.direction = UISwipeGestureRecognizerDirectionRight;
    [swipeRightToOpen addGestureRecognizer:swipeRight];
    
    [super viewWillAppear:animated];
}

-(void)viewDidAppear:(BOOL)animated
{
    //verifies if the mainView display is in its default state [i.e. the application is first loaded]
    if (mainView.tag == 0)
    {
        NSUserDefaults *loadEvents = [NSUserDefaults standardUserDefaults];
        if (loadEvents != nil)
        {
            NSString *savedData = [loadEvents objectForKey:@"Event List"];
            //Determines if savedData exactly exists in the user defaults.
            if (savedData != nil)
            { //if saved data does exist, set the text view
                mainView.text = savedData;
                mainView.tag = 1; //increment the tag so that the application knows it is no longer dealing with a "default" view
            }
        }
    }
    
    [super viewDidAppear:animated];
}

//This function opens the AddEvent view.
-(void)openSecondView:(UISwipeGestureRecognizer*)recognizer
{
    if (recognizer.direction == UISwipeGestureRecognizerDirectionRight)
    {
        AddEvent *addEvent = [[AddEvent alloc] initWithNibName:@"AddEvent" bundle:nil];
        if (addEvent != nil);
        {
            addEvent.delegate = self;
            [self presentViewController:addEvent animated:TRUE completion:nil];
        }
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

//Sends the current text view to the User Defaults
-(IBAction)onSaveButton:(id)sender
{
    if (mainView.tag != 0)
    {
        NSUserDefaults *saveEvents = [NSUserDefaults standardUserDefaults];
        if (saveEvents != nil)
        {
            NSString *dataToSave = mainView.text;
            [saveEvents setObject:dataToSave forKey:@"Event List"];
            [saveEvents synchronize];
        }
    } else
    {
        //if there is no data to save, the user gets an error message
        UIAlertView *warning = [[UIAlertView alloc] initWithTitle:@"No data." message:@"Please enter at least one event before attempting to save." delegate:nil cancelButtonTitle:@"OK" otherButtonTitles:nil];
        [warning show];
    }
}

@end
