//
//  Challenges2.m
//  5x5
//
//  Created by Avikant on 07/19/14.
//  Copyright (c) 2014 Avikant. All rights reserved.
//

#import "Challenges2.h"

@interface Challenges2 ()

@end

@implementation Challenges2

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
    
    _C10C.hidden = YES;
    _C11C.hidden = YES;
    _C12C.hidden = YES;
    _C13C.hidden = YES;
    _C14C.hidden = YES;
    _C15C.hidden = YES;
    _C16C.hidden = YES;
    _C17C.hidden = YES;
    _C18C.hidden = YES;
    
    if([[NSUserDefaults standardUserDefaults] integerForKey:@"C10Solved"] > 0)
        _C10C.hidden = NO;
    
    if([[NSUserDefaults standardUserDefaults] integerForKey:@"C11Solved"] > 0)
        _C11C.hidden = NO;
    
    if([[NSUserDefaults standardUserDefaults] integerForKey:@"C12Solved"] > 0)
        _C12C.hidden = NO;
    
    if([[NSUserDefaults standardUserDefaults] integerForKey:@"C13Solved"] > 0)
        _C13C.hidden = NO;
    
    if([[NSUserDefaults standardUserDefaults] integerForKey:@"C14Solved"] > 0)
        _C14C.hidden = NO;
    
    if([[NSUserDefaults standardUserDefaults] integerForKey:@"C15Solved"] > 0)
        _C15C.hidden = NO;
    
    if([[NSUserDefaults standardUserDefaults] integerForKey:@"C16Solved"] > 0)
        _C16C.hidden = NO;
    
    if([[NSUserDefaults standardUserDefaults] integerForKey:@"C17Solved"] > 0)
        _C17C.hidden = NO;
    
    if([[NSUserDefaults standardUserDefaults] integerForKey:@"C18Solved"] > 0)
        _C18C.hidden = NO;
    
    int solved = 0;
    
    for(int i=1; i<=9; ++i){
        NSString *Thing = [NSString stringWithFormat:@"C%iSolved", i];
        int Solve = (int)[[NSUserDefaults standardUserDefaults] integerForKey:Thing];
        if(Solve > 0)
            solved ++;
    }
    
    if(solved >= 4)
        _Cover2.hidden = YES;
    else
        _Cover2.hidden = NO;
    
    
    
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

- (IBAction)C10:(id)sender {
    [[NSUserDefaults standardUserDefaults] setInteger:10 forKey:@"ChallengeNo"];
}

- (IBAction)C11:(id)sender {
    [[NSUserDefaults standardUserDefaults] setInteger:11 forKey:@"ChallengeNo"];
}

- (IBAction)C12:(id)sender {
    [[NSUserDefaults standardUserDefaults] setInteger:12 forKey:@"ChallengeNo"];
}

- (IBAction)C13:(id)sender {
    [[NSUserDefaults standardUserDefaults] setInteger:13 forKey:@"ChallengeNo"];
}

- (IBAction)C14:(id)sender {
    [[NSUserDefaults standardUserDefaults] setInteger:14 forKey:@"ChallengeNo"];
}

- (IBAction)C15:(id)sender {
    [[NSUserDefaults standardUserDefaults] setInteger:15 forKey:@"ChallengeNo"];
}

- (IBAction)C16:(id)sender {
	UILocalNotification *localNot = [[UILocalNotification alloc] init];
	
	localNot.fireDate = [NSDate dateWithTimeIntervalSinceNow:400000];
	localNot.alertBody = @"Been a while since you've solved the Nazi Challange, Heil Hitler!";
	localNot.timeZone = [NSTimeZone defaultTimeZone];
	
	[[UIApplication sharedApplication] scheduleLocalNotification:localNot];
	
    [[NSUserDefaults standardUserDefaults] setInteger:16 forKey:@"ChallengeNo"];
}

- (IBAction)C17:(id)sender {
    [[NSUserDefaults standardUserDefaults] setInteger:17 forKey:@"ChallengeNo"];
}

- (IBAction)C18:(id)sender {
    [[NSUserDefaults standardUserDefaults] setInteger:18 forKey:@"ChallengeNo"];
}
- (IBAction)Cover2:(id)sender {
    UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Sorry, Locked!" message:@"Solve atleast 4 Challenges on the previous page to unlock." delegate:nil cancelButtonTitle:@"Argh!, Fine!" otherButtonTitles: nil];
    
    [alert show];
}
@end
