//
//  ResultsViewController.h
//  WordPlay
//
//  Created by Yi-Chin Sun and Gustavo Couto on 1/6/15.
//  Copyright (c) 2015 Yi-Chin Sun and Gustavo Couto. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ResultsViewController : UIViewController


//this properties will receive the name, adjective and verb from the adverb view controller object
@property NSString * name;
@property NSString * adjective;
@property NSString * verb;
//this property will receive the adverb from the adverb textfield via segue
@property NSString * adverb;

@end
