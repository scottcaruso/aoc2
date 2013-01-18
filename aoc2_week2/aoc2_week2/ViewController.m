//
//  ViewController.m
//  aoc2_week2
//
//  Created by Scott Caruso on 1/16/13.
//  Copyright (c) 2013 Scott Caruso. All rights reserved.
//

#import "ViewController.h"
#import "infoViewController.h"

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
                blocksWeightValue.hidden = TRUE;
                blocksNumberStepperLabel.hidden = TRUE;
                blocksWeightEntryLabel.hidden = TRUE;
                blocksCalculate.hidden = TRUE;
                blocksButton.enabled = TRUE;
            } if (carsButton.enabled == FALSE)
            {
                carsTextField.hidden = TRUE;
                carsTextView.hidden = TRUE;
                carsNumberStepper.hidden = TRUE;
                carsEditionButton.hidden = TRUE;
                carsNumberStepperLabel.hidden = TRUE;
                carsEditionButtonLabel.hidden = TRUE;
                carsEditionDisplay.hidden = TRUE;
                carsCalculate.hidden = TRUE;
                carsButton.enabled = TRUE;
            }
            //unhide the hidden Teddy Bear fields
            teddyBearTextField.hidden = FALSE;
            teddyBearSalePriceTextField.hidden = FALSE;
            teddyBearTextView.hidden = FALSE;
            teddyBearNumberStepper.hidden = FALSE;
            teddyBearSaleStepper.hidden = FALSE;
            teddyBearNumberStepperLabel.hidden = FALSE;
            teddyBearSaleStepperLabel.hidden = FALSE;
            teddyBearCalculate.hidden = FALSE;
            //disable the Teddy Bear button
            teddyBearButton.enabled = FALSE;
        }
        else if (button.tag == 1) //Blocks
        {
            if (teddyBearButton.enabled == FALSE)
            {
                teddyBearTextField.hidden = TRUE;
                teddyBearSalePriceTextField.hidden = TRUE;
                teddyBearTextView.hidden = TRUE;
                teddyBearNumberStepper.hidden = TRUE;
                teddyBearSaleStepper.hidden = TRUE;
                teddyBearNumberStepperLabel.hidden = TRUE;
                teddyBearSaleStepperLabel.hidden = TRUE;
                teddyBearCalculate.hidden = TRUE;
                teddyBearButton.enabled = TRUE;
            } if (carsButton.enabled == FALSE)
            {
                carsTextField.hidden = TRUE;
                carsTextView.hidden = TRUE;
                carsNumberStepper.hidden = TRUE;
                carsEditionButton.hidden = TRUE;
                carsNumberStepperLabel.hidden = TRUE;
                carsEditionButtonLabel.hidden = TRUE;
                carsEditionDisplay.hidden = TRUE;
                carsCalculate.hidden = TRUE;
                carsButton.enabled = TRUE;
            }
            //unhide the Blocks fields
            blocksTextField.hidden = FALSE;
            blocksTextView.hidden = FALSE;
            blocksNumberStepper.hidden = FALSE;
            blocksWeightEntry.hidden = FALSE;
            blocksWeightValue.hidden = FALSE;
            blocksNumberStepperLabel.hidden = FALSE;
            blocksWeightEntryLabel.hidden = FALSE;
            blocksCalculate.hidden = FALSE;
            blocksButton.enabled = FALSE;
        }
        else if (button.tag == 2) //Cars
        {
            if (teddyBearButton.enabled == FALSE)
            {
                teddyBearTextField.hidden = TRUE;
                teddyBearSalePriceTextField.hidden = TRUE;
                teddyBearTextView.hidden = TRUE;
                teddyBearNumberStepper.hidden = TRUE;
                teddyBearSaleStepper.hidden = TRUE;
                teddyBearNumberStepperLabel.hidden = TRUE;
                teddyBearSaleStepperLabel.hidden = TRUE;
                teddyBearCalculate.hidden = TRUE;
                teddyBearButton.enabled = TRUE;
                
            } if (blocksButton.enabled == FALSE)
            {
                blocksTextField.hidden = TRUE;
                blocksTextView.hidden = TRUE;
                blocksNumberStepper.hidden = TRUE;
                blocksWeightEntry.hidden = TRUE;
                blocksWeightValue.hidden = TRUE;
                blocksNumberStepperLabel.hidden = TRUE;
                blocksWeightEntryLabel.hidden = TRUE;
                blocksCalculate.hidden = TRUE;
                blocksButton.enabled = TRUE;
            }
            //unhide the Cars fields
            carsTextField.hidden = FALSE;
            carsTextView.hidden = FALSE;
            carsNumberStepper.hidden = FALSE;
            carsEditionButton.hidden = FALSE;
            carsEditionDisplay.hidden = FALSE;
            carsEditionDisplay.text = @"Standard";
            carsNumberStepperLabel.hidden = FALSE;
            carsEditionButtonLabel.hidden = FALSE;
            carsCalculate.hidden = FALSE;
            carsButton.enabled = FALSE;
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
        //stepper tag 0 = teddy bear number; tag 1 = teddy bear sale; tag 2 = blocks number; tag 3 = cars number
        if (stepper.tag == 0)
        {
           teddyBearTextField.text = [NSString stringWithFormat:@"%i",currentStepper];
        } else if (stepper.tag == 1)
        {
            teddyBearSalePriceTextField.text = [NSString stringWithFormat:@"%i%% off",currentStepper];
        } else if (stepper.tag == 2)
        {
            blocksTextField.text = [NSString stringWithFormat:@"%i",currentStepper];
        } else if (stepper.tag == 3)
        {
            carsTextField.text = [NSString stringWithFormat:@"%i",currentStepper];
        }
    }
}

-(IBAction)weightSlider:(id)sender
{
    UISlider *weightEntry = (UISlider*)sender;
    if (weightEntry != nil)
    {
        int currentValue = weightEntry.value;
        blocksWeightValue.text = [NSString stringWithFormat:@"%ilbs",currentValue];
    }
}

-(IBAction)onEditionClick:(id)sender
{
    UIButton *editionButton = (UIButton*)sender;
    if (editionButton !=nil)
    {
        NSString *editionText = [carsEditionDisplay text];
        if (editionText == @"Standard")
        {
            carsEditionDisplay.text = @"Limited";
        } else if (editionText == @"Limited")
        {
            carsEditionDisplay.text = @"Special";
        } else if (editionText == @"Special")
        {
            carsEditionDisplay.text = @"Standard";
        }
    }
}

-(IBAction)onCalculateClick:(id)sender
{
    UIButton *calculateButton = (UIButton*)sender;
    //Calculate buttons are tagged 0 - Teddy Bear, 1 - Blocks, 2 - Cars
    if (calculateButton.tag == 0)
    {
        TeddyBear *onSaleTeddyBear = (TeddyBear*)[ToyFactory createNewToy:TEDDYBEAR];
        //set a base price for the Bear
        [onSaleTeddyBear setRetailPrice:15.99];
        NSString* onSaleTeddyBearText = [onSaleTeddyBear costToPurchaseToy:teddyBearSaleStepper.value:teddyBearNumberStepper.value];
        teddyBearTextView.text = onSaleTeddyBearText;
    } else if (calculateButton.tag == 1)
    {
        Blocks *oversizedBlockToy = (Blocks*)[ToyFactory createNewToy:BLOCKS];
        //set a base retail price for the Blocks
        [oversizedBlockToy setRetailPrice:49.95];
        //set the overweight/size parameters for the Blocks
        [oversizedBlockToy setIsOverweight:TRUE];
        int weightInt = (int)floorf(blocksWeightEntry.value);
        [oversizedBlockToy setWeightOfToy:weightInt];
        int numberOfToys = (int)floorf(blocksNumberStepper.value);
        NSString* oversizedBlockToyText = [oversizedBlockToy costToPurchaseToy:numberOfToys];
        blocksTextView.text = oversizedBlockToyText;
    } else if (calculateButton.tag == 2)
    {
        Cars *specialEditionCarToy = (Cars*)[ToyFactory createNewToy:CARS];
        //set a base retail price for the Car
        [specialEditionCarToy setRetailPrice:92.95];
        //set the edition for the Car
        [specialEditionCarToy setWhichEditionIsThis:carsEditionDisplay.text];
        [specialEditionCarToy setName:@"Ford Thunderbird toy"];
        int numberOfToys = (int)floorf(carsNumberStepper.value);
        NSString* specialEditionCarToyText = [specialEditionCarToy costToPurchaseToy:numberOfToys];
        carsTextView.text = specialEditionCarToyText;
    }
}

-(IBAction)onInfoButtonClick:(id)sender
{
    infoViewController *infoView = [[infoViewController alloc] initWithNibName:@"infoPage" bundle:nil];
    [self presentViewController:infoView animated:TRUE completion:nil];
}

-(IBAction)onBackgroundColorChange:(id)sender
{
    UISegmentedControl *backgroundControl = (UISegmentedControl*)sender;
    if (backgroundControl != nil)
    {
        int backgroundIndex = backgroundControl.selectedSegmentIndex;
        if (backgroundIndex == 0)
        {
            self.view.backgroundColor = [UIColor lightGrayColor];
        } else if (backgroundIndex == 1)
        {
            self.view.backgroundColor = [UIColor orangeColor];
        } else if (backgroundIndex == 2)
        {
            self.view.backgroundColor = [UIColor purpleColor];
        }
    }
}

@end
