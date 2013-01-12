//
//  ViewController.m
//  aoc2
//
//  Created by Scott Caruso on 1/8/13.
//  Copyright (c) 2013 Scott Caruso. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{

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
    }
    [super viewDidLoad];
    
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
