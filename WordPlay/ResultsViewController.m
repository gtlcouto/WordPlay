//
// ResultsViewController.m
// WordPlay
//
// Created by Yi-Chin Sun and Gustavo Couto on 1/6/15.
// Copyright (c) 2015 Yi-Chin Sun and Gustavo Couto. All rights reserved.
//

#import "ResultsViewController.h"

@interface ResultsViewController ()
@property (strong, nonatomic) IBOutlet UITextView *resultsTextView;
@property (weak, nonatomic) IBOutlet UIButton *startOverButton;

@end

@implementation ResultsViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    //creating the story - > go to createStory function
    self.resultsTextView.attributedText = [self createStory];

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

//name: makeBoldAttributed
//returns: NSAttributedString *
//takes: NSString *
//description: transforms a string into an attributed string BOLD
-(NSAttributedString *)makeBoldAttributed:(NSString *)replacedString{
    UIFont *boldFont = [UIFont fontWithName:@"Helvetica-Bold" size:20.0];
    NSAttributedString *atString = [[NSAttributedString alloc] initWithString:replacedString attributes:@{NSFontAttributeName:boldFont}];

    return atString;

}

//name: makeSimpleAttributed
//returns: NSAttributedString *
//takes: NSString *
//description: transforms a string into an attributed string NON BOLD
-(NSAttributedString *)makeSimpleAttributed:(NSString *)replacedString{
    UIFont *font = [UIFont fontWithName:@"Helvetica" size:20.0];
    NSAttributedString *atString = [[NSAttributedString alloc] initWithString:replacedString attributes:@{NSFontAttributeName:font}];

    return atString;
}



//Name: createStory
//returns: NSMutableAttributedString *
//takes: nothing
//description: append all of the attributed strings created by the helper methods makeAttributed and makeAttributedSimple
-(NSMutableAttributedString *)createStory {


    NSMutableAttributedString *story = [[NSMutableAttributedString alloc] initWithAttributedString:[self makeSimpleAttributed:@"This morning "]];
    [story appendAttributedString:[self makeBoldAttributed:self.name]];
    [story appendAttributedString:[self makeSimpleAttributed:@" checked tomorrow's "]];
    [story appendAttributedString:[self makeBoldAttributed:self.adjective]];
    [story appendAttributedString:[self makeSimpleAttributed:@" coding challenge to "]];
    [story appendAttributedString:[self makeBoldAttributed:self.verb]];
    [story appendAttributedString:[self makeSimpleAttributed:@" if programming "]];
    [story appendAttributedString:[self makeBoldAttributed:self.adverb]];
    [story appendAttributedString:[self makeSimpleAttributed:@" would help."]];

    return story;

}

//Useless function was used to replace strings with the correct ammount of "-"
//-(NSString* )stringReplacer:(NSRange)range {
//    NSString *returnString = [@"" stringByPaddingToLength:range.length withString:@"-" startingAtIndex:0];
//    return returnString;
//}

/*
 #pragma mark - Navigation

 // In a storyboard-based application, you will often want to do a little preparation before navigation
 - (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
 // Get the new view controller using [segue destinationViewController].
 // Pass the selected object to the new view controller.
 }
 */

@end
