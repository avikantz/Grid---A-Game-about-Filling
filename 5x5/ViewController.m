//
//  ViewController.m
//  5x5
//
//  Created by Avikant on 07/17/14.
//  Copyright (c) 2014 Avikant. All rights reserved.
//

#import "ViewController.h"
#import <MessageUI/MessageUI.h>

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    
	
    [[NSUserDefaults standardUserDefaults] setInteger:0 forKey:@"ChallengeNo"];
    
    int Solve4 = (int)[[NSUserDefaults standardUserDefaults] integerForKey:@"4Solved"];
    
    if(Solve4 >= 3){
        _Cover5x5.hidden = YES;
        _Cover6x6.hidden = YES;
    }
    else{
        _Cover5x5.hidden = NO;
        _Cover6x6.hidden = NO;
    }
    
    int Solve5 = (int)[[NSUserDefaults standardUserDefaults] integerForKey:@"5Solved"];
    
    if(Solve5 >= 4){
        _Cover6x6.hidden = YES;
    }
    else{
        _Cover6x6.hidden = NO;
    }
    
    int Solve6 = (int)[[NSUserDefaults standardUserDefaults] integerForKey:@"6Solved"];
    
    if((Solve4+Solve5+Solve6) == 100){
        UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Congrats!" message:@"You've solved the puzzle 100 times now." delegate:nil cancelButtonTitle:@"I Know, Right!" otherButtonTitles: nil];
        
        [alert show];
    }
    if((Solve4+Solve5+Solve6) > 500){
        UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Woo-Hoo!!" message:@"You've solved the puzzle over 500 times now." delegate:nil cancelButtonTitle:@"Whoa!" otherButtonTitles: nil];
        
        [alert show];
    }
    
    if((Solve4+Solve5+Solve6) > 1000){
        UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"You da Real MVP!" message:@"You've solved the puzzle over 1000 times now. If you're seeing this dialog box, just know that, GGG, you've made the developer smile." delegate:nil cancelButtonTitle:@"Whoa!" otherButtonTitles: nil];
        
        [alert show];
    }
    
    
    
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)About:(id)sender {
    
    UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"About"
                                                    message:@"Created with love by Avikant Saini.\nPlease leave a feedback, and/or Rate it on the App Store."
                                                   delegate:self
                                          cancelButtonTitle:@"Okie-Dokie!"
                                          otherButtonTitles:@"Contact",nil];
    [alert show];
    
}

- (IBAction)HowTo:(id)sender {
    UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"How-To!" message:@"Really!, four, no five, counting 'About' more buttons, and a self explainatory game, and you decided to tap this button. Seriously, are you a rules first type of a person? Who reads rules of a really simple game? Sigh!\n\nSince you're here, I might just tell you how to play.\n\nThe objective of the normal mode is to fill the Grid with Green squares, tapping a Grid Block inverses (Turns Red to Green and vice-versa) the attached blocks (not diagonally), so you get it, right?\n\nThe Objective of Challenge mode is to recreate a predefined Pattern, as written at the bottom of a Challenge Mode Game Window.\n\nPlease leave a feedback, and/or Rate it on the App Store." delegate:nil cancelButtonTitle:@"Okie-Dokie!" otherButtonTitles: nil];
    
    [alert show];
}

- (void)alertView:(UIAlertView *)alertView clickedButtonAtIndex:(NSInteger)buttonIndex
{
    NSString *title = [alertView buttonTitleAtIndex:buttonIndex];
    if([title isEqualToString:@"Contact"])
    {
        if ([MFMailComposeViewController canSendMail]) {
            
            //2
            MFMailComposeViewController *mail = [[MFMailComposeViewController alloc] init];
            
            //3
            mail.mailComposeDelegate = self;
            //4
            [mail setSubject:@"Feedback..."];
            
            //5
            NSArray *toRecipients = [NSArray arrayWithObjects:@"avikantsainidbz@gmail.com", nil];
            
            //6
            [mail setToRecipients:toRecipients];
            
            //7
            NSString *emailBody = @"Hey Developer...\n\n";
            
            //8
            [mail setMessageBody:emailBody isHTML:NO];
            
            //9
            mail.modalPresentationStyle = UIModalPresentationPageSheet;
            [self presentViewController:mail animated:YES completion:nil];
            
        }
        
        else {
            
            //10
            UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Alert! Alert!" message:@"Your mail client doesn't work, you will be exterminated.\nExterminate! Exterminate!\nEXTERMINATE!" delegate:nil cancelButtonTitle:@"Bloody Dalek!" otherButtonTitles: nil];
            
            [alert show];
            
        }
    }
}

-(void)mailComposeController:(MFMailComposeViewController *)controller didFinishWithResult:(MFMailComposeResult)result error:(NSError *)error {
    
    //We create a switch that responds to the four messages our MFMailComposeViewController object will send.
    
    switch (result) {
        case MFMailComposeResultCancelled:
            NSLog(@"Cancelled");
            break;
        case MFMailComposeResultSaved:
            NSLog(@"Saved");
            break;
        case MFMailComposeResultFailed:
            NSLog(@"Failed");
            break;
        case MFMailComposeResultSent:
            NSLog(@"Sent");
            break;
        default:
            NSLog(@"Default");
            break;
    }
    
    //Finally we dismiss the view controller.
    [self dismissViewControllerAnimated:YES completion:nil];
    
}



- (IBAction)Cover5x5:(id)sender {
    UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Sorry, Locked!" message:@"Solve 4x4 Grid Puzzle atleast 3 times to unlock." delegate:nil cancelButtonTitle:@"Argh!, Fine!" otherButtonTitles: nil];
    
    [alert show];
}

- (IBAction)Cover6x6:(id)sender {
    UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Sorry, Locked!" message:@"Solve 5x5 Grid Puzzle atleast 4 times to unlock." delegate:nil cancelButtonTitle:@"Argh!, Fine!" otherButtonTitles: nil];
    
    [alert show];
}
@end
