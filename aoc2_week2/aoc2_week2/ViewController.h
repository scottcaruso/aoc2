//
//  ViewController.h
//  aoc2_week2
//
//  Created by Scott Caruso on 1/16/13.
//  Copyright (c) 2013 Scott Caruso. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ToyFactory.h"

@interface ViewController : UIViewController
{
    //creating IBOutlets for all Main UI elements
    //topheader
    IBOutlet UILabel *toyFactoryHeader;
    //Main left-side buttons
    IBOutlet UIButton *teddyBearButton;
    IBOutlet UIButton *blocksButton;
    IBOutlet UIButton *carsButton;
    //text fields
    IBOutlet UITextField *teddyBearTextField;
    IBOutlet UITextField *blocksTextField;
    IBOutlet UITextField *carsTextField;
    //textareas
    IBOutlet UITextView *teddyBearTextView;
    IBOutlet UITextView *blocksTextView;
    IBOutlet UITextView *carsTextView;
    //steppers & other modifiers & labels
    //teddy bears
    IBOutlet UIStepper *teddyBearNumberStepper;
    IBOutlet UIStepper *teddyBearSaleStepper;
    IBOutlet UILabel *teddyBearNumberStepperLabel;
    IBOutlet UILabel *teddyBearSaleStepperLabel;
    //blocks
    IBOutlet UIStepper *blocksNumberStepper;
    //weight accepts numbers only
    IBOutlet UITextField *blocksWeightEntry;
    IBOutlet UILabel *blocksNumberStepperLabel;
    IBOutlet UILabel *blocksWeightEntryLabel;
    //cars
    IBOutlet UIStepper *carsNumberStepper;
    IBOutlet UIButton *carsEditionButton;
    IBOutlet UILabel *carsNumberStepperLabel;
    IBOutlet UILabel *carsEditionButtonLabel;

    //UILabels for app Part 1
    UILabel *baseClasses;
    UILabel *teddyBearBase;
    UILabel *blocksBase;
    UILabel *carsBase;
    UILabel *modifiedClasses;
    UILabel *teddyBearModified;
    UILabel *blocksModified;
    UILabel *carsModified;
}

//click events for main buttons
-(IBAction)onClick:(id)sender;

@end
