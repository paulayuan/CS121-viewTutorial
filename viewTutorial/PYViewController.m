//
//  PYViewController.m
//  viewTutorial
//
//  Created by Paula Yuan on 9/10/14.
//  Copyright (c) 2014 Paula Yuan. All rights reserved.
//

#import "PYGrid.h"
#import "PYViewController.h"

@interface PYViewController () {
    UIButton* _button;
    UIView* _gridView;
}

@end

@implementation PYViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    self.view.backgroundColor = [UIColor whiteColor];
    
    // Create grid frame
    CGRect frame = self.view.frame;
    CGFloat x = CGRectGetWidth(frame)*.1;
    CGFloat y = CGRectGetHeight(frame)*.1;
    CGFloat size = MIN(CGRectGetWidth(frame), CGRectGetHeight(frame))*.80;
    
    CGRect gridFrame = CGRectMake(x, y, size, size);
    
    // Create grid view
    _gridView = [[PYGrid alloc] initWithFrame:gridFrame];
    _gridView.backgroundColor = [UIColor blackColor];
    [self.view addSubview:_gridView];

    // Create button
    CGFloat buttonSize = size/5.0;
    CGRect buttonFrame = CGRectMake(0,0,buttonSize,buttonSize);
    _button = [[UIButton alloc] initWithFrame:buttonFrame];
    _button.backgroundColor = [UIColor redColor];
    [_gridView addSubview:_button];
    
    // Create target for button
    [_button addTarget:self action:@selector(buttonPressed:) forControlEvents:UIControlEventTouchUpInside];
    
    // Add blue label "Hit me!" to button
    [_button setTitle:@"Hit me!" forState:UIControlStateNormal];
    [_button setTitleColor: [UIColor blueColor] forState:UIControlStateNormal];
    
    // Make button highlight when pressed
    _button.showsTouchWhenHighlighted = YES;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
