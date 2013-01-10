//
//  ViewController.m
//  aoc2
//
//  Created by Scott Caruso on 1/8/13.
//  Copyright (c) 2013 Scott Caruso. All rights reserved.
//

#import "ViewController.h"
#import "TextClass.h"
#import "Shape.h"
#import "TriangleShape.h"
#import "SquareShape.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    TriangleShape *triangle = [[TriangleShape alloc] init];
    if (triangle != nil)
    {
        [triangle printNumSides];
    }
    SquareShape *square = [[SquareShape alloc] init];
    if (square != nil)
    {
        [square printNumSides];
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
