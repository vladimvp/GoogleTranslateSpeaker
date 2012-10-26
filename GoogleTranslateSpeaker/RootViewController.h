//
//  RootViewController.h
//  GoogleTranslateSpeaker
//
//  Created by SPIRIT user on 10/22/12.
//  Copyright (c) 2012 SPIRIT user. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface RootViewController : UIViewController


@property (strong, nonatomic) IBOutlet UITextField *inputText;
@property (strong, nonatomic) IBOutlet UIButton    *speakText;
@property (strong, nonatomic) IBOutlet UIButton    *translateText;


#pragma mark Actions

- (IBAction)makeSpeakTextAction:(id)sender;
- (IBAction)makeSpeakTextAction:(id)sender;

@end
