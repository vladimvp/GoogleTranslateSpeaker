//
//  RootViewController.m
//  GoogleTranslateSpeaker
//
//  Created by SPIRIT user on 10/22/12.
//  Copyright (c) 2012 SPIRIT user. All rights reserved.
//

#import "RootViewController.h"
#import <AVFoundation/AVFoundation.h>

@implementation RootViewController

@synthesize inputText;
@synthesize speakText;


- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}



#pragma mark Actions

- (IBAction)makeSpeakTextAction:(id)sender
{
    //[speakText setTitle:NSLocalizedString(@"Change", @"Изменить")  forState:UIControlStateNormal ];
    [speakText setTitle:inputText.text  forState:UIControlStateNormal ];
    
    NSString *strTextOfFilter = inputText.text;
    NSString *strCodeOfLanguage = @"en";
    
    NSString *soundURL = [NSString stringWithFormat:@"http://translate.google.com/translate_tts?q=%@&tl=%@",strTextOfFilter,strCodeOfLanguage];
    
    //NSString *soundURL = [NSString stringWithFormat:@"http://translate.google.com/translate_tts?q=%@&tl=%@&ie=UTF-8",strTextOfFilter,strCodeOfLanguage];
    
    
    NSLog(@"URL : %@",soundURL);
    
    NSData *soundData = [NSData dataWithContentsOfURL:[NSURL URLWithString:soundURL]];
    NSLog(@"returnSoundData:%@",[NSURL URLWithString:soundURL]);
    NSError *err = nil;
    AVAudioPlayer *player = [[AVAudioPlayer alloc] initWithData:soundData error: &err];
    [player play];
    
}






@end
