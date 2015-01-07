//
//  EnterVerbViewController.m
//  WordPlay
//
//  Created by Yi-Chin Sun and Gustavo Couto on 1/6/15.
//  Copyright (c) 2015 Yi-Chin Sun and Gustavo Couto. All rights reserved.
//

#import "EnterVerbViewController.h"
#import "EnterAdverbViewController.h"

@interface EnterVerbViewController ()
@property (strong, nonatomic) IBOutlet UITextField *verbTextField;
@property (weak, nonatomic) IBOutlet UIButton *nextButton;

@end

@implementation EnterVerbViewController

- (void)viewDidLoad {
    [super viewDidLoad];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

//preparing for segue to - > adverb
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    EnterAdverbViewController *vc = segue.destinationViewController;
    vc.name = self.name;
    vc.adjective = self.adjective;
    vc.verb = self.verbTextField.text;
}

//cancel the segue if condition is not met
- (BOOL)shouldPerformSegueWithIdentifier:(NSString *)identifier sender:(id)sender
{
    if ([identifier isEqualToString:@"toAdverbSegue"])
    {

        if (!(self.verbTextField.text && self.verbTextField.text.length > 0))
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
