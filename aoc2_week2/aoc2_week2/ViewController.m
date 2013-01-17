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

-(IBAction)onClick:(id)sender
{
    //Initialize all of the fields in the UI.
    //Teddy Bear buttons/fields
    UIButton *teddyBear = (UIButton*)teddyBearButton;
    UITextField *teddyBearText = (UITextField*)teddyBearTextField;
    UITextView *teddyBearView = (UITextView*)teddyBearTextView;
    UIStepper *teddyBearNumber = (UIStepper*)teddyBearNumberStepper;
    UIStepper *teddyBearSale = (UIStepper*)teddyBearSaleStepper;
    UILabel *teddyBearNumberLabel = (UILabel*)teddyBearNumberStepperLabel;
    UILabel *teddyBearSaleLabel = (UILabel*)teddyBearSaleStepperLabel;
    //Blocks buttons/fields
    UIButton *blocks = (UIButton*)blocksButton;
    UITextField *blocksText = (UITextField*)blocksTextField;
    UITextView *blocksView = (UITextView*)blocksTextView;
    UIStepper *blocksNumber = (UIStepper*)blocksNumberStepper;
    UITextField *blocksWeight = (UITextField*)blocksWeightEntry;
    UILabel *blocksNumberLabel = (UILabel*)blocksNumberStepperLabel;
    UILabel *blocksWeightLabel = (UILabel*)blocksWeightEntryLabel;
    //Cars buttons/fields
    UIButton *cars = (UIButton*)carsButton;
    UITextField *carsText = (UITextField*)carsTextField;
    UITextView *carsView = (UITextView*)carsTextView;
    UIStepper *carsNumber = (UIStepper*)carsNumberStepper;
    UIButton *carsEdition = (UIButton*)carsEditionButton;
    UILabel *carsNumberLabel = (UILabel*)carsNumberStepperLabel;
    UILabel *carsEditionLabel = (UILabel*)carsEditionButtonLabel;
    
    UIButton *button = (UIButton*)sender;
    if (button != nil)
    {
        if (button.tag == 0) //TeddyBear
        {
            //hide any fields that are currently showing and reactivate other buttons
            if (blocks.enabled == FALSE)
            {
                blocksText.hidden = TRUE;
                blocksView.hidden = TRUE;
                blocksNumber.hidden = TRUE;
                blocksWeight.hidden = TRUE;
                blocksNumberLabel.hidden = TRUE;
                blocksWeightLabel.hidden = TRUE;
                blocks.enabled = TRUE;
            } else if (cars.enabled == FALSE)
            {
                carsText.hidden = TRUE;
                carsView.hidden = TRUE;
                carsNumber.hidden = TRUE;
                carsEdition.hidden = TRUE;
                carsNumberLabel.hidden = TRUE;
                carsEditionLabel.hidden = TRUE;
                cars.enabled = TRUE;
            } else
            {
                //Nothing happens
            }
            //unhide the hidden Teddy Bear fields
            teddyBearText.hidden = FALSE;
            teddyBearView.hidden = FALSE;
            teddyBearNumber.hidden = FALSE;
            teddyBearSale.hidden = FALSE;
            teddyBearNumberLabel.hidden = FALSE;
            teddyBearSaleLabel.hidden = FALSE;
            //disable the Teddy Bear button
            teddyBear.enabled = FALSE;
        }
        else if (button.tag == 1) //Blocks
        {
            if (teddyBear.enabled == FALSE)
            {
                teddyBearTextField.hidden = TRUE;
                teddyBearView.hidden = TRUE;
                teddyBearNumber.hidden = TRUE;
                teddyBearSale.hidden = TRUE;
                teddyBearNumberLabel.hidden = TRUE;
                teddyBearSaleLabel.hidden = TRUE;
                teddyBear.enabled = TRUE;
            } else if (cars.enabled == FALSE)
            {
                carsText.hidden = TRUE;
                carsView.hidden = TRUE;
                carsNumber.hidden = TRUE;
                carsEdition.hidden = TRUE;
                carsNumberLabel.hidden = TRUE;
                carsEditionLabel.hidden = TRUE;
                cars.enabled = TRUE;
            } else
            {
                //Nothing happens
            }
            //unhide the Blocks fields
            blocksText.hidden = FALSE;
            blocksView.hidden = FALSE;
            blocksNumber.hidden = FALSE;
            blocksWeight.hidden = FALSE;
            blocksNumberLabel.hidden = FALSE;
            blocksWeightLabel.hidden = FALSE;
            blocks.enabled = FALSE;

        }
        else if (button.tag == 2) //Cars
        {
            if (teddyBear.enabled == FALSE)
            {
                teddyBearTextField.hidden = TRUE;
                teddyBearView.hidden = TRUE;
                teddyBearNumber.hidden = TRUE;
                teddyBearSale.hidden = TRUE;
                teddyBearNumberLabel.hidden = TRUE;
                teddyBearSaleLabel.hidden = TRUE;
                teddyBear.enabled = TRUE;
            } else if (blocks.enabled == FALSE)
            {
                blocksText.hidden = TRUE;
                blocksView.hidden = TRUE;
                blocksNumber.hidden = TRUE;
                blocksWeight.hidden = TRUE;
                blocksNumberLabel.hidden = TRUE;
                blocksWeightLabel.hidden = TRUE;
                blocks.enabled = TRUE;
            } else
            {
                //Nothing happens
            }
            //unhide the Cars fields
            carsText.hidden = FALSE;
            carsView.hidden = FALSE;
            carsNumber.hidden = FALSE;
            carsEdition.hidden = FALSE;
            carsNumberLabel.hidden = FALSE;
            carsEditionLabel.hidden = FALSE;
            cars.enabled = FALSE;
        }
        else
        {
            //Nothing happens!
        }
    }
}

@end
