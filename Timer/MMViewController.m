//
//  MMViewController.m
//  Timer
//
//  Created by John Andrews on 9/21/13.
//  Copyright (c) 2013 John Andrews. All rights reserved.
//

#import "MMViewController.h"

@interface MMViewController ()
@property (strong, nonatomic) NSTimer *stopWatchTimer;
@property (strong, nonatomic) NSDate *startDate;

@end

@implementation MMViewController

@synthesize startTimer;
@synthesize stopTimer;
@synthesize pauseTimer;
@synthesize textFieldToDisplayClock;
@synthesize clockDisplay;


- (void)updateClockDisplay {
    NSLog(@"hope this works");
}

- (void)viewDidLoad
{
    [super viewDidLoad];
}
- (void)updateTimer
    {
        static NSInteger counter = 0;
        self.textFieldToDisplayClock.text = [NSString stringWithFormat:@"Counter: %i", counter++];
    }
    
    - (IBAction) startTimer:(id)sender {
        self.startDate = [NSDate date];
        
        // Create the stop watch timer that fires every 100 ms
        self.stopWatchTimer = [NSTimer scheduledTimerWithTimeInterval:1.0/10.0
                                                               target:self
                                                             selector:@selector(updateTimer)
                                                             userInfo:nil
                                                              repeats:YES];
    }

    



- (IBAction)startTimerButton:(id)sender {
    //when user taps this button, time begins counting upward in text field

    
}

- (IBAction)stopTimerButton:(id)sender {
    //When user taps this button,
    
}

- (IBAction)pauseTimerButton:(id)sender {
//When user taps this button, time in text field stops and remains same, and user can start time again
}


@end
