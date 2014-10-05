//
//  Challenges.m
//  5x5
//
//  Created by Avikant on 07/19/14.
//  Copyright (c) 2014 Avikant. All rights reserved.
//

#import "Challenges.h"

@interface Challenges ()

@end

@implementation Challenges

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
	UILocalNotification *localNot = [[UILocalNotification alloc] init];
	
	localNot.fireDate = [NSDate dateWithTimeIntervalSinceNow:345600];
	localNot.alertBody = @"Been a while since you've solved a challange, get back here right now!";
	localNot.timeZone = [NSTimeZone defaultTimeZone];
	
	[[UIApplication sharedApplication] scheduleLocalNotification:localNot];
	
    _C1C.hidden = YES;
    _C2C.hidden = YES;
    _C3C.hidden = YES;
    _C4C.hidden = YES;
    _C5C.hidden = YES;
    _C6C.hidden = YES;
    _C7C.hidden = YES;
    _C8C.hidden = YES;
    _C9C.hidden = YES;
    
    if([[NSUserDefaults standardUserDefaults] integerForKey:@"C1Solved"] > 0)
        _C1C.hidden = NO;

    if([[NSUserDefaults standardUserDefaults] integerForKey:@"C2Solved"] > 0)
        _C2C.hidden = NO;

    if([[NSUserDefaults standardUserDefaults] integerForKey:@"C3Solved"] > 0)
        _C3C.hidden = NO;

    if([[NSUserDefaults standardUserDefaults] integerForKey:@"C4Solved"] > 0)
        _C4C.hidden = NO;

    if([[NSUserDefaults standardUserDefaults] integerForKey:@"C5Solved"] > 0)
        _C5C.hidden = NO;

    if([[NSUserDefaults standardUserDefaults] integerForKey:@"C6Solved"] > 0)
        _C6C.hidden = NO;

    if([[NSUserDefaults standardUserDefaults] integerForKey:@"C7Solved"] > 0)
        _C7C.hidden = NO;
    
    if([[NSUserDefaults standardUserDefaults] integerForKey:@"C8Solved"] > 0)
        _C8C.hidden = NO;

    if([[NSUserDefaults standardUserDefaults] integerForKey:@"C9Solved"] > 0)
        _C9C.hidden = NO;

    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

- (IBAction)C1:(id)sender {
    [[NSUserDefaults standardUserDefaults] setInteger:1 forKey:@"ChallengeNo"];
}

- (IBAction)C2:(id)sender {
    [[NSUserDefaults standardUserDefaults] setInteger:2 forKey:@"ChallengeNo"];
}

- (IBAction)C3:(id)sender {
    [[NSUserDefaults standardUserDefaults] setInteger:3 forKey:@"ChallengeNo"];
}

- (IBAction)C4:(id)sender {
    [[NSUserDefaults standardUserDefaults] setInteger:4 forKey:@"ChallengeNo"];
}

- (IBAction)C5:(id)sender {
    [[NSUserDefaults standardUserDefaults] setInteger:5 forKey:@"ChallengeNo"];
}

- (IBAction)C6:(id)sender {
    [[NSUserDefaults standardUserDefaults] setInteger:6 forKey:@"ChallengeNo"];
}

- (IBAction)C7:(id)sender {
    [[NSUserDefaults standardUserDefaults] setInteger:7 forKey:@"ChallengeNo"];
}

- (IBAction)C8:(id)sender {
    [[NSUserDefaults standardUserDefaults] setInteger:8 forKey:@"ChallengeNo"];
}

- (IBAction)C9:(id)sender {
    [[NSUserDefaults standardUserDefaults] setInteger:9 forKey:@"ChallengeNo"];
}
@end
