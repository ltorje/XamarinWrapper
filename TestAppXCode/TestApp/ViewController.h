//
//  ViewController.h
//  TestApp
//
//  Created by lucian on 4/17/13.
//  Copyright (c) 2013 lucian. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
@property (weak, nonatomic) IBOutlet UISlider *mySlider;
@property (weak, nonatomic) IBOutlet UITextField *myTextEdit;
- (IBAction)valueChanged:(id)sender;

@end

