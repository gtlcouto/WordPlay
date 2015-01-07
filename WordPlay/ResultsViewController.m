//
// ResultsViewController.m
// WordPlay
//
// Created by Yi-Chin Sun on 1/6/15.
// Copyright (c) 2015 Yi-Chin Sun. All rights reserved.
//

#import "ResultsViewController.h"

@interface ResultsViewController ()
@property (strong, nonatomic) IBOutlet UITextView *resultsTextView;

@end

@implementation ResultsViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    self.resultsTextView.attributedText = [self createStory];

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(NSMutableAttributedString *)makeAttributed:(NSString *)replacedString{
    NSMutableAttributedString * attString = [[NSMutableAttributedString alloc] initWithString:replacedString];

    [attString addAttribute:NSFontAttributeName
                      value:[UIFont fontWithName:@"Helvetica-Bold" size:16.0]
                      range:NSMakeRange(0,replacedString.length)];

    return attString;

}


-(NSMutableAttributedString *)makeAttributedSimple:(NSString *)replacedString{
    NSMutableAttributedString * attString = [[NSMutableAttributedString alloc] initWithString:replacedString];

    return attString;
}



-(NSMutableAttributedString *)createStory {

    NSMutableAttributedString *story = [[NSMutableAttributedString alloc] initWithAttributedString:[self makeAttributedSimple:@"This morning "]];
    [story appendAttributedString:[self makeAttributed:self.name]];
    [story appendAttributedString:[self makeAttributedSimple:@" checked tomorrow's "]];
    [story appendAttributedString:[self makeAttributed:self.adjective]];
    [story appendAttributedString:[self makeAttributedSimple:@" coding challenge to "]];
    [story appendAttributedString:[self makeAttributed:self.verb]];
    [story appendAttributedString:[self makeAttributedSimple:@" if programming "]];
    [story appendAttributedString:[self makeAttributed:self.adverb]];
    [story appendAttributedString:[self makeAttributedSimple:@" would help."]];

    return story;
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
