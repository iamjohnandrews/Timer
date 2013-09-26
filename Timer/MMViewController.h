//
//  MMViewController.h
//  Timer
//
//  Created by John Andrews on 9/21/13.
//  Copyright (c) 2013 John Andrews. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface MMViewController : UIViewController
@property (weak, nonatomic) IBOutlet UIButton *startTimer;
@property (weak, nonatomic) IBOutlet UIButton *stopTimer;
@property (weak, nonatomic) IBOutlet UIButton *pauseTimer;
@property (weak, nonatomic) IBOutlet UITextField *textFieldToDisplayClock;

@property  NSTimer *clockDisplay;

- (IBAction)startTimerButton:(id)sender;
- (IBAction)stopTimerButton:(id)sender;
- (IBAction)pauseTimerButton:(id)sender;
-(void)updateClockDisplay;

@end
