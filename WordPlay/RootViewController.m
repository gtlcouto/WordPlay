//
//  ViewController.m
//  WordPlay
//
//  Created by Yi-Chin Sun on 1/6/15.
//  Copyright (c) 2015 Yi-Chin Sun. All rights reserved.
//

#import "RootViewController.h"

@interface RootViewController ()
@property (weak, nonatomic) IBOutlet UIButton *startButton;

@end

@implementation RootViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    UIImage *buttonImage = [[UIImage imageNamed:@"blackButton.png"]
                            resizableImageWithCapInsets:UIEdgeInsetsMake(20, 20, 20, 20)];
    UIImage *buttonImageHighlight = [[UIImage imageNamed:@"blackButtonHighlight.png"]
                                     resizableImageWithCapInsets:UIEdgeInsetsMake(20, 20, 20, 20)];
    // Set the background for any states you plan to use
    [self.startButton setBackgroundImage:buttonImage forState:UIControlStateNormal];
    [self.startButton setBackgroundImage:buttonImageHighlight forState:UIControlStateHighlighted];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(IBAction)prepareForUnwind:(UIStoryboardSegue *)segue {
}

@end
