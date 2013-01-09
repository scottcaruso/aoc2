//
//  ViewController.m
//  aoc2
//
//  Created by Scott Caruso on 1/8/13.
//  Copyright (c) 2013 Scott Caruso. All rights reserved.
//

#import "ViewController.h"
#import "TextClass.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    textClass = [[TextClass alloc] init];
    if (textClass != nil)
    {
        
    }
    //Week 1 - Practice work
    textLabel = [[UILabel alloc] initWithFrame:CGRectMake(0,0,320,100)];
    textLabel.text = [textClass getText];
    [self.view addSubview:textLabel];
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
