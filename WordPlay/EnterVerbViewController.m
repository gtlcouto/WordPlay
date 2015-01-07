//
//  EnterVerbViewController.m
//  WordPlay
//
//  Created by Yi-Chin Sun on 1/6/15.
//  Copyright (c) 2015 Yi-Chin Sun. All rights reserved.
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
    UIImage *buttonImage = [[UIImage imageNamed:@"blackButton.png"]
                            resizableImageWithCapInsets:UIEdgeInsetsMake(20, 20, 20, 20)];
    UIImage *buttonImageHighlight = [[UIImage imageNamed:@"blackButtonHighlight.png"]
                                     resizableImageWithCapInsets:UIEdgeInsetsMake(20, 20, 20, 20)];
    // Set the background for any states you plan to use
    [self.nextButton setBackgroundImage:buttonImage forState:UIControlStateNormal];
    [self.nextButton setBackgroundImage:buttonImageHighlight forState:UIControlStateHighlighted];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    EnterAdverbViewController *vc = segue.destinationViewController;
    vc.name = self.name;
    vc.adjective = self.adjective;
    vc.verb = self.verbTextField.text;
}

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
