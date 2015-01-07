//
//  EnterAdverbViewController.h
//  WordPlay
//
//  Created by Yi-Chin Sun and Gustavo Couto on 1/6/15.
//  Copyright (c) 2015 Yi-Chin Sun and Gustavo Couto. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface EnterAdverbViewController : UIViewController
//this property will store the name and adjective form the verbviewcontroller object
@property NSString * name;
@property NSString * adjective;
//this property will store the verb from the textfield via segue
@property NSString * verb;

@end
