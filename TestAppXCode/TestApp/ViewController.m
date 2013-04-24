//
//  ViewController.m
//  TestApp
//
//  Created by lucian on 4/17/13.
//  Copyright (c) 2013 lucian. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    [self.mySlider setMinimumValue:0];
    [self.mySlider setMaximumValue:10];
    [self.mySlider setValue:5 animated:NO];
    [self.myTextEdit setContentVerticalAlignment:UIControlContentVerticalAlignmentCenter];
    [self.myTextEdit setContentVerticalAlignment:UIControlContentVerticalAlignmentCenter];
    [self.myTextEdit setTextAlignment:UITextAlignmentCenter];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)valueChanged:(id)sender {
    
    int sliderValue = [self.mySlider value];
    int times = 2 * abs(5 - sliderValue);
    NSString *text1 = [@"" stringByPaddingToLength:times withString:@"+" startingAtIndex:0];
    NSString *text2 = [@"" stringByPaddingToLength:times withString:@" " startingAtIndex:0];
    
    NSString *text = nil;
    
    if (5 > sliderValue)
        text = [NSString stringWithFormat:@"%@%@",text1, text2];
    else
        text = [NSString stringWithFormat:@"%@%@",text2, text1];
    self.myTextEdit.text = text;
}
@end
