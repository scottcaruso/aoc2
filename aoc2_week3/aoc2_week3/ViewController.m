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

-(IBAction)openSecondView:(id)sender
{
    AddEvent *addEvent = [[AddEvent alloc] initWithNibName:@"AddEvent" bundle:nil];
    if (addEvent != nil);
    {
        addEvent.delegate = self;
        [self presentViewController:addEvent animated:TRUE completion:nil];
    }
    
}

-(void)grabEventText:(NSString *)textEntered date:(NSDate*)dateEntered
{
    NSString* newEvent = textEntered;
    NSDate* newDate = dateEntered;
    mainView.text = [NSString stringWithFormat:@"%@,%@",newEvent,newDate];
    NSString* formattedDate = [self convertTimeToLocalRegion:newDate];
    NSLog(@"%@",formattedDate);
}

-(NSString *)appendNewEvent:(NSString *)description date:(NSString *)dateString
{
  //something will happen
    return nil;
}

-(NSString *)convertTimeToLocalRegion:(NSDate *)dateEntered
{
    NSDateFormatter *formatter = [[NSDateFormatter alloc] init];
    [formatter setDateFormat: @"EEEE, MM-dd-YYYY HH:mm zzz"];
    NSString *stringFromDate = [formatter stringFromDate:dateEntered];
    return stringFromDate;
}

@end
