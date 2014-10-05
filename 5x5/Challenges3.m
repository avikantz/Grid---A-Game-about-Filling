//
//  Challenges3.m
//  5x5
//
//  Created by Avikant on 07/19/14.
//  Copyright (c) 2014 Avikant. All rights reserved.
//

#import "Challenges3.h"

@interface Challenges3 ()

@end

@implementation Challenges3

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
    _C19C.hidden = YES;
    _C20C.hidden = YES;
    _C21C.hidden = YES;
    _C22C.hidden = YES;
    _C23C.hidden = YES;
    _C24C.hidden = YES;
    _C25C.hidden = YES;
    _C26C.hidden = YES;
    _C27C.hidden = YES;
    
    if([[NSUserDefaults standardUserDefaults] integerForKey: @"C19Solved"] > 0)
        _C19C.hidden = NO;
    
    if([[NSUserDefaults standardUserDefaults] integerForKey: @"C20Solved"] > 0)
        _C20C.hidden = NO;
    
    if([[NSUserDefaults standardUserDefaults] integerForKey: @"C21Solved"] > 0)
        _C21C.hidden = NO;
    
    if([[NSUserDefaults standardUserDefaults] integerForKey: @"C22Solved"] > 0)
        _C22C.hidden = NO;
    
    if([[NSUserDefaults standardUserDefaults] integerForKey: @"C23Solved"] > 0)
        _C23C.hidden = NO;
    
    if([[NSUserDefaults standardUserDefaults] integerForKey: @"C24Solved"] > 0)
        _C24C.hidden = NO;
    
    if([[NSUserDefaults standardUserDefaults] integerForKey: @"C25Solved"] > 0)
        _C25C.hidden = NO;
    
    if([[NSUserDefaults standardUserDefaults] integerForKey: @"C26Solved"] > 0)
        _C26C.hidden = NO;
    
    if([[NSUserDefaults standardUserDefaults] integerForKey: @"C27Solved"] > 0)
        _C27C.hidden = NO;
    
    int solved = 0;
    
    for(int i=10; i<=19; ++i){
        NSString *Thing = [NSString stringWithFormat:@"C%iSolved", i];
        int Solve = (int)[[NSUserDefaults standardUserDefaults] integerForKey:Thing];
        if(Solve > 0)
            solved ++;
    }
    
    if(solved >= 4)
        _Cover3.hidden = YES;
    else
        _Cover3.hidden = NO;
    
    
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

- (IBAction)C19:(id)sender {
    [[NSUserDefaults standardUserDefaults] setInteger:19 forKey:@"ChallengeNo"];
}

- (IBAction)C20:(id)sender {
    [[NSUserDefaults standardUserDefaults] setInteger:20 forKey:@"ChallengeNo"];
}

- (IBAction)C21:(id)sender {
    [[NSUserDefaults standardUserDefaults] setInteger:21 forKey:@"ChallengeNo"];
}

- (IBAction)C22:(id)sender {
    [[NSUserDefaults standardUserDefaults] setInteger:22 forKey:@"ChallengeNo"];
}

- (IBAction)C23:(id)sender {
    [[NSUserDefaults standardUserDefaults] setInteger:23 forKey:@"ChallengeNo"];
}

- (IBAction)C24:(id)sender {
    [[NSUserDefaults standardUserDefaults] setInteger:24 forKey:@"ChallengeNo"];
}

- (IBAction)C25:(id)sender {
    [[NSUserDefaults standardUserDefaults] setInteger:25 forKey:@"ChallengeNo"];
}

- (IBAction)C26:(id)sender {
    [[NSUserDefaults standardUserDefaults] setInteger:26 forKey:@"ChallengeNo"];
}

- (IBAction)C27:(id)sender {
    [[NSUserDefaults standardUserDefaults] setInteger:27 forKey:@"ChallengeNo"];
}

- (IBAction)Cover3:(id)sender {
    UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Sorry, Locked!" message:@"Solve atleast 4 Challenges on the previous page to unlock." delegate:nil cancelButtonTitle:@"Argh!, Fine!" otherButtonTitles: nil];
    
    [alert show];
}
@end
