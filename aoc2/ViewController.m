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
    //Create the teddy bear toy
    TeddyBear *teddyBear = (TeddyBear*)[ToyFactory createNewToy:TEDDYBEAR];
    //set a base retail price for the Teddy Bear
    [teddyBear setRetailPrice:12.99];
    //set whether or not the bear is on sale
    [teddyBear setIsOnSale:TRUE];
    //Calculate the bear's cost
    [teddyBear costToPurchaseToy];
    
    //Create the Blocks toy
    Blocks *blockToy = (Blocks*)[ToyFactory createNewToy:BLOCKS];
    //set a base retail price for the Blocks
    [blockToy setRetailPrice:49.95];
    //set the overweight/size parameters for the Blocks
    [blockToy setIsOverweight:TRUE];
    [blockToy setWeightOfToy:35];
    //Calculate the shipping for the Blocks
    [blockToy costToPurchaseToy];
    
    //Create the Cars toy
    Cars *carToy = (Cars*)[ToyFactory createNewToy:CARS];
    //set a base retail price for the Car
    [carToy setRetailPrice:92.95];
    //set the edition for the Car
    [carToy setWhichEditionIsThis:@"Special"];
    //Calculate the shipping for the Cars
    [carToy costToPurchaseToy];
    
    [super viewDidLoad];
    
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
