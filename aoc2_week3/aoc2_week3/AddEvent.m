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
        [self grabEventText:eventDescription.text];
    }
}

-(BOOL)textFieldShouldBeginEditing:(UITextField *)eventEntry
{
    eventEntry.text = @"";
    
    return TRUE;
}

-(void)grabEventText:(NSString *)textEntered
{
    NSString* newEvent = textEntered;
    NSLog(@"%@",newEvent);
}

@end