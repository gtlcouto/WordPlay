//
//  ResultsViewController.m
//  WordPlay
//
//  Created by Yi-Chin Sun on 1/6/15.
//  Copyright (c) 2015 Yi-Chin Sun. All rights reserved.
//

#import "ResultsViewController.h"

@interface ResultsViewController ()
@property (strong, nonatomic) IBOutlet UITextView *resultsTextView;

@end

@implementation ResultsViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    NSString * story = [NSString stringWithFormat:@"One day, %@ was walking into Mobile Makers when he noticed how %@ his students were. They %@ very %@", self.name, self.adjective, self.verb, self.adverb];
    

    //trying to bold
    NSMutableAttributedString *string = [[NSMutableAttributedString alloc] initWithString:story];
    //NSRange nameRange = NSMakeRange(9, 5); // 4 characters, starting at index 22
    NSRange nameRange = [story rangeOfString:self.name];
    NSString * replacedStory = [story stringByReplacingCharactersInRange:nameRange withString:[self stringReplacer:nameRange]];
    NSRange adjectiveRange = [replacedStory rangeOfString:self.adjective];
    replacedStory = [replacedStory stringByReplacingCharactersInRange:adjectiveRange withString:[self stringReplacer:adjectiveRange]];

    NSRange verbRange = [replacedStory rangeOfString:self.verb];
    replacedStory = [replacedStory stringByReplacingCharactersInRange:verbRange withString:[self stringReplacer:verbRange]];

    NSRange adverbRange = [replacedStory rangeOfString:self.adverb];
    replacedStory = [replacedStory stringByReplacingCharactersInRange:adverbRange withString:[self stringReplacer:adverbRange]];


    [string beginEditing];

    [string addAttribute:NSFontAttributeName
                   value:[UIFont fontWithName:@"Helvetica-Bold" size:16.0]
                   range:nameRange];
    [string addAttribute:NSFontAttributeName
                   value:[UIFont fontWithName:@"Helvetica-Bold" size:16.0]
                   range:adjectiveRange];
    [string addAttribute:NSFontAttributeName
                   value:[UIFont fontWithName:@"Helvetica-Bold" size:16.0]
                   range:verbRange];
    [string addAttribute:NSFontAttributeName
                   value:[UIFont fontWithName:@"Helvetica-Bold" size:16.0]
                   range:adverbRange];
    
    
    [string endEditing];

    //setting textview
     self.resultsTextView.attributedText = string;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(NSString* )stringReplacer:(NSRange)range {
    NSString *returnString = [@"" stringByPaddingToLength:range.length withString:@"-" startingAtIndex:0];
    return returnString;
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
