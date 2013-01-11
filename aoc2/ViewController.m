//
//  ViewController.m
//  aoc2
//
//  Created by Scott Caruso on 1/8/13.
//  Copyright (c) 2013 Scott Caruso. All rights reserved.
//

#import "ViewController.h"
#import "Toys.h"
#import "TeddyBear.h"
#import "Blocks.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    Toys *toys = [[Toys alloc] init];
    toys.costToPurchaseToy;
    TeddyBear *teddyBear = [[TeddyBear alloc] init];
    teddyBear.costToPurchaseToy;
    Blocks *blocks = [[Blocks alloc] init];
    blocks.costToPurchaseToy;
    
    [super viewDidLoad];
    
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
