//
//  ViewController.m
//  WordPlay
//
//  Created by Yi-Chin Sun and Gustavo Couto on 1/6/15.
//  Copyright (c) 2015 Yi-Chin Sun and Gustavo Couto. All rights reserved.
//

#import "RootViewController.h"

@interface RootViewController ()
@property (weak, nonatomic) IBOutlet UIButton *startButton;

@end

@implementation RootViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    //testing git
    int zero = 0;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

//preparing for segue to - > name
-(IBAction)prepareForUnwind:(UIStoryboardSegue *)segue {
}

@end
