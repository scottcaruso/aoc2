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
    IBOutlet UITextField *teddyBearSalePriceTextField;
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
    IBOutlet UISlider *blocksWeightEntry;
    IBOutlet UITextField *blocksWeightValue;
    IBOutlet UILabel *blocksNumberStepperLabel;
    IBOutlet UILabel *blocksWeightEntryLabel;
    //cars
    IBOutlet UIStepper *carsNumberStepper;
    IBOutlet UIButton *carsEditionButton;
    IBOutlet UITextField *carsEditionDisplay;
    IBOutlet UILabel *carsNumberStepperLabel;
    IBOutlet UILabel *carsEditionButtonLabel;
    
    //Calculate buttons
    IBOutlet UIButton *teddyBearCalculate;
    IBOutlet UIButton *blocksCalculate;
    IBOutlet UIButton *carsCalculate;
    
    //Background color control
    IBOutlet UISegmentedControl *mainSegmentControl;
    
    //Info button
    IBOutlet UIButton *infoImage;

}

//click events for main buttons
-(IBAction)buttonClick:(id)sender;

//click events for steppers
-(IBAction)stepperClick:(id)sender;

//actions for the weight sliders
-(IBAction)weightSlider:(id)sender;

//actions for the edition button
-(IBAction)onEditionClick:(id)sender;

//actions for the calculate buttons
-(IBAction)onCalculateClick:(id)sender;

//clicking Info button
-(IBAction)onInfoButtonClick:(id)sender;

//change background color
-(IBAction)onBackgroundColorChange:(id)sender;

@end
