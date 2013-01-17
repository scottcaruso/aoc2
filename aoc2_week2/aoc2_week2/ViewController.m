//
//  ViewController.m
//  aoc2_week2
//
//  Created by Scott Caruso on 1/16/13.
//  Copyright (c) 2013 Scott Caruso. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    /*
    //Setting up for week 2.
    //This is dummy code to test Github.
    
    //Create the base teddy bear toy
    TeddyBear *teddyBear = (TeddyBear*)[ToyFactory createNewToy:TEDDYBEAR];
    
    //Create the modified teddy bear toy
    TeddyBear *onSaleTeddyBear = (TeddyBear*)[ToyFactory createNewToy:TEDDYBEAR];
    //set a base retail price for the Teddy Bear
    [onSaleTeddyBear setRetailPrice:15.99];
    //set whether or not the bear is on sale
    [teddyBear setIsOnSale:TRUE];
    
    //Create the base blocks toy
    Blocks *blockToy = (Blocks*)[ToyFactory createNewToy:BLOCKS];
    
    //Create the modified blocks toy
    Blocks *oversizedBlockToy = (Blocks*)[ToyFactory createNewToy:BLOCKS];
    //set a base retail price for the Blocks
    [oversizedBlockToy setRetailPrice:49.95];
    //set the overweight/size parameters for the Blocks
    [oversizedBlockToy setIsOverweight:TRUE];
    [oversizedBlockToy setWeightOfToy:4];
    
    //Create the base cars toy
    Cars *carToy = (Cars*)[ToyFactory createNewToy:CARS];
    
    //Create the modified cars toy
    Cars *specialEditionCarToy = (Cars*)[ToyFactory createNewToy:CARS];
    //set a base retail price for the Car
    [specialEditionCarToy setRetailPrice:92.95];
    //set the edition for the Car
    [specialEditionCarToy setWhichEditionIsThis:@"Special"];
    [specialEditionCarToy setName:@"Ford Thunderbird toy"];
    
    //Calculate the various costs
    NSString* baseTeddyBearText = [teddyBear costToPurchaseToy];
    NSString* onSaleTeddyBearText = [onSaleTeddyBear costToPurchaseToy];
    NSString* baseBlockToyText = [blockToy costToPurchaseToy];
    NSString* oversizedBlockToyText = [oversizedBlockToy costToPurchaseToy];
    NSString* baseCarToyText = [carToy costToPurchaseToy];
    NSString* specialEditionCarToyText = [specialEditionCarToy costToPurchaseToy];
    
    //Text labels
    baseClasses = [[UILabel alloc] initWithFrame:CGRectMake(320.0f, 20.0f, 155.0f, 30.0f)];
    if (baseClasses != nil)
    {
        baseClasses.text = @"Base subclasses";
        [self.view addSubview:baseClasses];
    }
    teddyBearBase = [[UILabel alloc] initWithFrame:CGRectMake(70.0f, 55.0f, 610.0f, 80.0f)];
    if (teddyBearBase != nil)
    {
        teddyBearBase.text = baseTeddyBearText;
        teddyBearBase.numberOfLines = 2;
        [teddyBearBase setTextAlignment:NSTextAlignmentCenter];
        [teddyBearBase setBackgroundColor:[UIColor lightGrayColor]];
        [teddyBearBase setTextColor:[UIColor whiteColor]];
        [self.view addSubview:teddyBearBase];
    }
    blocksBase = [[UILabel alloc] initWithFrame:CGRectMake(70.0f, 155.0f, 610.0f, 80.0f)];
    if (blocksBase != nil)
    {
        blocksBase.text = baseBlockToyText;
        blocksBase.numberOfLines = 3;
        [blocksBase setTextAlignment:NSTextAlignmentCenter];
        [blocksBase setBackgroundColor:[UIColor lightGrayColor]];
        [blocksBase setTextColor:[UIColor whiteColor]];
        [self.view addSubview:blocksBase];
    }
    carsBase = [[UILabel alloc] initWithFrame:CGRectMake(70.0f, 255.0f, 610.0f, 80.0f)];
    if (carsBase != nil)
    {
        carsBase.text = baseCarToyText;
        carsBase.numberOfLines = 3;
        [carsBase setTextAlignment:NSTextAlignmentCenter];
        [carsBase setBackgroundColor:[UIColor lightGrayColor]];
        [carsBase setTextColor:[UIColor whiteColor]];
        [self.view addSubview:carsBase];
    }
    //Modified classes
    modifiedClasses = [[UILabel alloc] initWithFrame:CGRectMake(300.0f, 335.0f, 155.0f, 30.0f)];
    if (modifiedClasses != nil)
    {
        modifiedClasses.text = @"Modified subclasses";
        [self.view addSubview:modifiedClasses];
    }
    teddyBearModified = [[UILabel alloc] initWithFrame:CGRectMake(70.0f, 370.0f, 610.0f, 80.0f)];
    if (teddyBearModified != nil)
    {
        teddyBearModified.text = onSaleTeddyBearText;
        teddyBearModified.numberOfLines = 3;
        [teddyBearModified setTextAlignment:NSTextAlignmentCenter];
        [teddyBearModified setBackgroundColor:[UIColor blueColor]];
        [teddyBearModified setTextColor:[UIColor whiteColor]];
        [self.view addSubview:teddyBearModified];
    }
    blocksModified = [[UILabel alloc] initWithFrame:CGRectMake(70.0f, 470.0f, 610.0f, 80.0f)];
    if (blocksModified != nil)
    {
        blocksModified.text = oversizedBlockToyText;
        blocksModified.numberOfLines = 3;
        [blocksModified setTextAlignment:NSTextAlignmentCenter];
        [blocksModified setBackgroundColor:[UIColor blueColor]];
        [blocksModified setTextColor:[UIColor whiteColor]];
        [self.view addSubview:blocksModified];
    }
    carsModified = [[UILabel alloc] initWithFrame:CGRectMake(70.0f, 570.0f, 610.0f, 80.0f)];
    if (carsModified != nil)
    {
        carsModified.text = specialEditionCarToyText;
        carsModified.numberOfLines = 3;
        [carsModified setTextAlignment:NSTextAlignmentCenter];
        [carsModified setBackgroundColor:[UIColor blueColor]];
        [carsModified setTextColor:[UIColor whiteColor]];
        [self.view addSubview:carsModified];
    }*/
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
    //toyFactoryHeader.text = @"Test text";
}

-(IBAction)buttonClick:(id)sender
{    
    UIButton *button = (UIButton*)sender;
    if (button != nil)
    {
        if (button.tag == 0) //TeddyBear
        {
            //hide any fields that are currently showing and reactivate other buttons
            if (blocksButton.enabled == FALSE)
            {
                blocksTextField.hidden = TRUE;
                blocksTextView.hidden = TRUE;
                blocksNumberStepper.hidden = TRUE;
                blocksWeightEntry.hidden = TRUE;
                blocksNumberStepperLabel.hidden = TRUE;
                blocksWeightEntryLabel.hidden = TRUE;
                blocksButton.enabled = TRUE;
            } else if (carsButton.enabled == FALSE)
            {
                carsTextField.hidden = TRUE;
                carsTextView.hidden = TRUE;
                carsNumberStepper.hidden = TRUE;
                carsEditionButton.hidden = TRUE;
                carsNumberStepperLabel.hidden = TRUE;
                carsEditionButtonLabel.hidden = TRUE;
                carsButton.enabled = TRUE;
            } else
            {
                //Nothing happens
            }
            //unhide the hidden Teddy Bear fields
            teddyBearTextField.hidden = FALSE;
            teddyBearTextView.hidden = FALSE;
            teddyBearNumberStepper.hidden = FALSE;
            teddyBearSaleStepper.hidden = FALSE;
            teddyBearNumberStepperLabel.hidden = FALSE;
            teddyBearSaleStepperLabel.hidden = FALSE;
            //disable the Teddy Bear button
            teddyBearButton.enabled = FALSE;
        }
        else if (button.tag == 1) //Blocks
        {
            if (teddyBearButton.enabled == FALSE)
            {
                teddyBearTextField.hidden = TRUE;
                teddyBearTextView.hidden = TRUE;
                teddyBearNumberStepper.hidden = TRUE;
                teddyBearSaleStepper.hidden = TRUE;
                teddyBearNumberStepperLabel.hidden = TRUE;
                teddyBearSaleStepperLabel.hidden = TRUE;
                teddyBearButton.enabled = TRUE;
            } else if (carsButton.enabled == FALSE)
            {
                carsTextField.hidden = TRUE;
                carsTextView.hidden = TRUE;
                carsNumberStepper.hidden = TRUE;
                carsEditionButton.hidden = TRUE;
                carsNumberStepperLabel.hidden = TRUE;
                carsEditionButtonLabel.hidden = TRUE;
                carsButton.enabled = TRUE;
            } else
            {
                //Nothing happens
            }
            //unhide the Blocks fields
            blocksTextField.hidden = FALSE;
            blocksTextView.hidden = FALSE;
            blocksNumberStepper.hidden = FALSE;
            blocksWeightEntry.hidden = FALSE;
            blocksNumberStepperLabel.hidden = FALSE;
            blocksWeightEntryLabel.hidden = FALSE;
            blocksButton.enabled = FALSE;
        }
        else if (button.tag == 2) //Cars
        {
            if (teddyBearButton.enabled == FALSE)
            {
                teddyBearTextField.hidden = FALSE;
                teddyBearTextView.hidden = FALSE;
                teddyBearNumberStepper.hidden = FALSE;
                teddyBearSaleStepper.hidden = FALSE;
                teddyBearNumberStepperLabel.hidden = FALSE;
                teddyBearSaleStepperLabel.hidden = FALSE;
                teddyBearButton.enabled = TRUE;
            } else if (blocksButton.enabled == FALSE)
            {
                blocksTextField.hidden = TRUE;
                blocksTextView.hidden = TRUE;
                blocksNumberStepper.hidden = TRUE;
                blocksWeightEntry.hidden = TRUE;
                blocksNumberStepperLabel.hidden = TRUE;
                blocksWeightEntryLabel.hidden = TRUE;
                blocksButton.enabled = TRUE;
            } else
            {
                //Nothing happens
            }
            //unhide the Cars fields
            carsTextField.hidden = FALSE;
            carsTextView.hidden = FALSE;
            carsNumberStepper.hidden = FALSE;
            carsEditionButton.hidden = FALSE;
            carsNumberStepperLabel.hidden = FALSE;
            carsEditionButtonLabel.hidden = FALSE;
            carsButton.enabled = FALSE;
        }
        else
        {
            //Nothing happens!
        }
    }
}

//click events for steppers
-(IBAction)stepperClick:(id)sender
{
    UIStepper *stepper = (UIStepper*)sender;
    if (stepper != nil)
    {
        int currentStepper = stepper.value;
        NSLog(@"%i",currentStepper);
        if (stepper.tag == 0)
        {
            NSLog(@"The Teddy Bear primary stepper just went up to %i",currentStepper);
        } else if (stepper.tag == 1)
        {
            NSLog(@"The Teddy Bear secondary stepper just went up to %i",currentStepper);
        } else if (stepper.tag == 2)
        {
            NSLog(@"The Blocks stepper just went up to %i",currentStepper);
        } else if (stepper.tag == 3)
        {
            NSLog(@"The Cars stepper just went up to %i",currentStepper);
        }
    }
}

@end
