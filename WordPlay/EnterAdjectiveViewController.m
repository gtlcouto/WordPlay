//
//  EnterAdjectiveViewController.m
//  WordPlay
//
//  Created by Yi-Chin Sun and Gustavo Couto on 1/6/15.
//  Copyright (c) 2015 Yi-Chin Sun and Gustavo Couto. All rights reserved.
//

#import "EnterAdjectiveViewController.h"
#import "EnterVerbViewController.h"

@interface EnterAdjectiveViewController ()
@property (strong, nonatomic) IBOutlet UITextField *adjectiveTextField;
@property (weak, nonatomic) IBOutlet UIButton *nextButton;


@end

@implementation EnterAdjectiveViewController

- (void)viewDidLoad {
    [super viewDidLoad];

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

//preparing for segue to -> verb
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    EnterVerbViewController *vc = segue.destinationViewController;
    vc.name = self.name;
    vc.adjective = self.adjectiveTextField.text;
}

//wont let the segue go through if the condition is not met
- (BOOL)shouldPerformSegueWithIdentifier:(NSString *)identifier sender:(id)sender
{
    if ([identifier isEqualToString:@"toVerbSegue"])
    {
        //if its NOT null or empty dont go through
        if (!(self.adjectiveTextField.text && self.adjectiveTextField.text.length > 0))
        {
            return NO;
        }
    }
    return YES;
    
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
