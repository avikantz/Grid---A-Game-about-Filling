//
//  FiveGrid.m
//  5x5
//
//  Created by Avikant on 07/17/14.
//  Copyright (c) 2014 Avikant. All rights reserved.
//

#import "FiveGrid.h"

@interface FiveGrid ()

@end

@implementation FiveGrid

BOOL Grid[5][5] = {
    {false, false, false, false, false},
    {false, false, false, false, false},
    {false, false, false, false, false},
    {false, false, false, false, false},
    {false, false, false, false, false}};

BOOL C1[5][5] = {
    {true, false, true, false, true},
    {false, true, false, true, false},
    {true, false, true, false, true},
    {false, true, false, true, false},
    {true, false, true, false, true}};

BOOL C2[5][5] = {
    {true, true, true, true, true},
    {true, false, false, false, true},
    {true, false, true, false, true},
    {true, false, false, false, true},
    {true, true, true, true, true}};

BOOL C3[5][5] = {
    {false, false, false, false, false},
    {false, true, false, true, false},
    {false, false, false, false, false},
    {false, true, false, true, false},
    {false, false, false, false, false}};

BOOL C4[5][5] = {
    {false, false, true, true, true},
    {false, false, false, true, true},
    {true, false, true, false, true},
    {true, true, false, false, false},
    {true, true, true, false, false}};

BOOL C5[5][5] = {
    {true, false, false, false, true},
    {true, true, true, true, true},
    {false, true, true, true, false},
    {true, true, true, true, true},
    {true, false, false, false, true}};

BOOL C6[5][5] = {
    {false, false, false, false, false},
    {false, true, false, true, false},
    {false, false, true, false, false},
    {false, true, false, true, false},
    {false, false, false, false, false}};

BOOL C7[5][5] = {
    {false, true, false, true, false},
    {true, false, false, false, true},
    {false, false, false, false, false},
    {true, false, false, false, true},
    {false, true, false, true, false}};

BOOL C8[5][5] = {
    {false, false, false, true, false},
    {true, true, true, true, false},
    {false, true, true, true, false},
    {false, true, true, true, true},
    {false, true, false, false, false}};

BOOL C9[5][5] = {
    {false, true, true, true, false},
    {true, true, false, true, true},
    {true, false, false, false, true},
    {true, true, false, true, true},
    {false, true, true, true, false}};

BOOL C10[5][5] = {
    {false, false, false, false, false},
    {false, false, false, false, false},
    {false, false, true, false, false},
    {false, false, false, false, false},
    {false, false, false, false, false}};

BOOL C11[5][5] = {
    {true, false, false, false, true},
    {false, true, false, true, false},
    {false, false, true, false, false},
    {false, true, false, true, false},
    {true, false, false, false, true}};

BOOL C12[5][5] = {
    {false, false, true, false, false},
    {false, true, false, true, false},
    {true, false, true, false, true},
    {false, true, false, true, false},
    {false, false, true, false, false}};

BOOL C13[5][5] = {
    {true, false, true, false, true},
    {false, true, true, true, false},
    {true, true, false, true, true},
    {false, true, true, true, false},
    {true, false, true, false, true}};

BOOL C14[5][5] = {
    {false, true, false, true, false},
    {true, true, false, true, true},
    {false, false, false, false, false},
    {true, true, false, true, true},
    {false, true, false, true, false}};

BOOL C15[5][5] = {
    {true, true, true, true, true},
    {true, false, true, false, true},
    {true, true, false, true, true},
    {true, false, true, false, true},
    {true, true, true, true, true}};

BOOL C16[5][5] = {
    {true, true, true, false, true},
    {false, false, true, false, true},
    {true, true, true, true, true},
    {true, false, true, false, false},
    {true, false, true, true, true}};



- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad{
	
	UILocalNotification *localNot = [[UILocalNotification alloc] init];
	
	localNot.fireDate = [NSDate dateWithTimeIntervalSinceNow:345600];
	localNot.alertBody = @"Been a while since you've solved a Grid filling puzzle, get back here right now.";
	localNot.timeZone = [NSTimeZone defaultTimeZone];
	
	[[UIApplication sharedApplication] scheduleLocalNotification:localNot];
    
    _BackToC1.hidden = YES;
    _BackToC2.hidden = YES;
    _BackToHome.hidden = YES;
    
    ChallengeID = (int)[[NSUserDefaults standardUserDefaults] integerForKey:@"ChallengeNo"];
    
    if(ChallengeID >= 1 && ChallengeID <= 9){
        _BackToC1.hidden = NO;
    }
    else if (ChallengeID >= 10 && ChallengeID <= 16){
        _BackToC2.hidden = NO;
    }
    else{
        _BackToHome.hidden = NO;
    }
    
    _Green1.hidden = YES;
    _Green2.hidden = YES;
    _Green3.hidden = YES;
    _Green4.hidden = YES;
    _Green5.hidden = YES;
    _Green6.hidden = YES;
    _Green7.hidden = YES;
    _Green8.hidden = YES;
    _Green9.hidden = YES;
    _Green10.hidden = YES;
    _Green11.hidden = YES;
    _Green12.hidden = YES;
    _Green13.hidden = YES;
    _Green14.hidden = YES;
    _Green15.hidden = YES;
    _Green16.hidden = YES;
    _Green17.hidden = YES;
    _Green18.hidden = YES;
    _Green19.hidden = YES;
    _Green20.hidden = YES;
    _Green21.hidden = YES;
    _Green22.hidden = YES;
    _Green23.hidden = YES;
    _Green24.hidden = YES;
    _Green25.hidden = YES;
    
    for(int i=0; i<5; ++i){
        for(int j=0; j<5; ++j)
            Grid[i][j] = false;
    }
    
    if(ChallengeID == 0){
        
        _ImageView.hidden = YES;
        
        _InfoLabel.text = [NSString stringWithFormat:@"Fill the Grid with Green Squares."];
        
        ttp = (int)[[NSUserDefaults standardUserDefaults] integerForKey:@"5Times"];
        
        switch(ttp%20){
            case 0:
                Grid[1][2] = true;
                Grid[2][1] = true;
                Grid[2][2] = true;
                Grid[2][3] = true;
                Grid[3][2] = true;
                _Green8.hidden = NO;
                _Green12.hidden = NO;
                _Green13.hidden = NO;
                _Green14.hidden = NO;
                _Green18.hidden = NO;
                break;
                
            case 1:
                Grid[1][0] = true;
                Grid[4][1] = true;
                Grid[3][4] = true;
                Grid[0][3] = true;
                Grid[2][2] = true;
                _Green6.hidden = NO;
                _Green22.hidden = NO;
                _Green20.hidden = NO;
                _Green4.hidden = NO;
                _Green13.hidden = NO;
                break;
                
            case 2:
                Grid[0][0] = true;
                Grid[4][0] = true;
                Grid[4][4] = true;
                Grid[0][4] = true;
                Grid[2][2] = true;
                _Green1.hidden = NO;
                _Green5.hidden = NO;
                _Green21.hidden = NO;
                _Green25.hidden = NO;
                _Green13.hidden = NO;
                break;
                
            case 3:
                Grid[1][1] = true;
                Grid[1][3] = true;
                Grid[2][2] = true;
                Grid[3][1] = true;
                Grid[3][3] = true;
                _Green7.hidden = NO;
                _Green9.hidden = NO;
                _Green13.hidden = NO;
                _Green17.hidden = NO;
                _Green19.hidden = NO;
                break;
                
            case 4:
                Grid[0][2] = true;
                Grid[2][0] = true;
                Grid[2][2] = true;
                Grid[2][4] = true;
                Grid[4][2] = true;
                _Green3.hidden = NO;
                _Green11.hidden = NO;
                _Green13.hidden = NO;
                _Green15.hidden = NO;
                _Green23.hidden = NO;
                break;
                
            case 5:
                Grid[0][0] = true;
                Grid[1][1] = true;
                Grid[2][2] = true;
                Grid[3][3] = true;
                Grid[4][4] = true;
                _Green1.hidden = NO;
                _Green7.hidden = NO;
                _Green13.hidden = NO;
                _Green19.hidden = NO;
                _Green25.hidden = NO;
                break;
                
            case 6:
                Grid[0][4] = true;
                Grid[1][3] = true;
                Grid[2][2] = true;
                Grid[3][1] = true;
                Grid[4][0] = true;
                _Green5.hidden = NO;
                _Green9.hidden = NO;
                _Green13.hidden = NO;
                _Green17.hidden = NO;
                _Green21.hidden = NO;
                break;
                
            case 7:
                Grid[0][0] = true;
                Grid[0][4] = true;
                Grid[4][0] = true;
                Grid[4][4] = true;
                _Green1.hidden = NO;
                _Green5.hidden = NO;
                _Green21.hidden = NO;
                _Green25.hidden = NO;
                break;
                
            case 8:
                Grid[0][4] = true;
                Grid[0][2] = true;
                Grid[2][4] = true;
                Grid[2][0] = true;
                Grid[4][2] = true;
                Grid[4][0] = true;
                _Green5.hidden = NO;
                _Green3.hidden = NO;
                _Green15.hidden = NO;
                _Green11.hidden = NO;
                _Green23.hidden = NO;
                _Green21.hidden = NO;
                break;
                
            case 9:
                Grid[3][0] = true;
                Grid[0][1] = true;
                Grid[1][4] = true;
                Grid[4][3] = true;
                Grid[2][2] = true;
                _Green16.hidden = NO;
                _Green2.hidden = NO;
                _Green10.hidden = NO;
                _Green24.hidden = NO;
                _Green13.hidden = NO;
                break;
                
            case 10:
                Grid[3][0] = true;
                Grid[0][1] = true;
                Grid[1][4] = true;
                Grid[4][3] = true;
                _Green16.hidden = NO;
                _Green2.hidden = NO;
                _Green10.hidden = NO;
                _Green24.hidden = NO;
                break;
                
            case 11:
                Grid[1][0] = true;
                Grid[0][1] = true;
                Grid[3][1] = true;
                Grid[1][3] = true;
                Grid[2][2] = true;
                Grid[4][3] = true;
                Grid[3][4] = true;
                _Green6.hidden = NO;
                _Green2.hidden = NO;
                _Green17.hidden = NO;
                _Green9.hidden = NO;
                _Green13.hidden = NO;
                _Green24.hidden = NO;
                _Green20.hidden = NO;
                break;
                
            case 12:
                Grid[0][0] = true;
                Grid[1][1] = true;
                Grid[3][3] = true;
                Grid[4][4] = true;
                Grid[0][4] = true;
                Grid[1][3] = true;
                Grid[3][1] = true;
                Grid[4][0] = true;
                _Green1.hidden = NO;
                _Green7.hidden = NO;
                _Green19.hidden = NO;
                _Green25.hidden = NO;
                _Green5.hidden = NO;
                _Green9.hidden = NO;
                _Green17.hidden = NO;
                _Green21.hidden = NO;
                break;
                
            case 13:
                Grid[0][2] = true;
                Grid[1][1] = true;
                Grid[1][3] = true;
                Grid[2][0] = true;
                Grid[2][2] = true;
                Grid[2][4] = true;
                Grid[3][1] = true;
                Grid[3][3] = true;
                Grid[4][2] = true;
                _Green3.hidden = NO;
                _Green7.hidden = NO;
                _Green9.hidden = NO;
                _Green11.hidden = NO;
                _Green13.hidden = NO;
                _Green15.hidden = NO;
                _Green17.hidden = NO;
                _Green19.hidden = NO;
                _Green23.hidden = NO;
                break;
                
            case 14:
                Grid[0][2] = true;
                Grid[1][1] = true;
                Grid[1][3] = true;
                Grid[2][0] = true;
                Grid[2][2] = true;
                Grid[2][4] = true;
                Grid[3][1] = true;
                Grid[3][3] = true;
                Grid[4][2] = true;
                Grid[0][0] = true;
                Grid[0][4] = true;
                Grid[4][0] = true;
                Grid[4][4] = true;
                _Green1.hidden = NO;
                _Green5.hidden = NO;
                _Green21.hidden = NO;
                _Green25.hidden = NO;
                _Green3.hidden = NO;
                _Green7.hidden = NO;
                _Green9.hidden = NO;
                _Green11.hidden = NO;
                _Green13.hidden = NO;
                _Green15.hidden = NO;
                _Green17.hidden = NO;
                _Green19.hidden = NO;
                _Green23.hidden = NO;
                break;
                
            case 15:
                Grid[2][2] = true;
                _Green13.hidden = NO;
                break;
                
            case 16:
                Grid[1][2] = true;
                Grid[2][1] = true;
                Grid[2][3] = true;
                Grid[3][2] = true;
                _Green8.hidden = NO;
                _Green12.hidden = NO;
                _Green14.hidden = NO;
                _Green18.hidden = NO;
                break;
                
            case 17:
                Grid[2][0] = true;
                Grid[2][1] = true;
                Grid[2][3] = true;
                Grid[2][4] = true;
                _Green11.hidden = NO;
                _Green12.hidden = NO;
                _Green14.hidden = NO;
                _Green15.hidden = NO;
                break;
                
            case 18:
                Grid[0][2] = true;
                Grid[1][2] = true;
                Grid[2][2] = true;
                Grid[3][2] = true;
                Grid[4][2] = true;
                Grid[4][1] = true;
                Grid[4][3] = true;
                _Green3.hidden = NO;
                _Green8.hidden = NO;
                _Green13.hidden = NO;
                _Green18.hidden = NO;
                _Green22.hidden = NO;
                _Green23.hidden = NO;
                _Green24.hidden = NO;
                break;
                
            case 19:
                _Green1.hidden = NO;
                _Green2.hidden = NO;
                _Green3.hidden = NO;
                _Green4.hidden = YES;
                _Green5.hidden = NO;
                _Green6.hidden = YES;
                _Green7.hidden = YES;
                _Green8.hidden = NO;
                _Green9.hidden = YES;
                _Green10.hidden = NO;
                _Green11.hidden = NO;
                _Green12.hidden = NO;
                _Green13.hidden = NO;
                _Green14.hidden = NO;
                _Green15.hidden = NO;
                _Green16.hidden = NO;
                _Green17.hidden = YES;
                _Green18.hidden = NO;
                _Green19.hidden = YES;
                _Green20.hidden = YES;
                _Green21.hidden = NO;
                _Green22.hidden = YES;
                _Green23.hidden = NO;
                _Green24.hidden = NO;
                _Green25.hidden = NO;
                
                for(int i=0; i<5; ++i){
                    for(int j=0; j<5; ++j)
                        Grid[i][j] = true;
                }
                
                Grid[1][0] = false;
                Grid[1][1] = false;
                Grid[0][3] = false;
                Grid[1][3] = false;
                Grid[3][3] = false;
                Grid[3][4] = false;
                Grid[3][1] = false;
                Grid[4][1] = false;
                break;
                
            default:
                Grid[1][2] = true;
                Grid[2][1] = true;
                Grid[2][2] = true;
                Grid[2][3] = true;
                Grid[3][2] = true;
                _Green8.hidden = NO;
                _Green12.hidden = NO;
                _Green13.hidden = NO;
                _Green14.hidden = NO;
                _Green18.hidden = NO;
                break;
        }
    }
    
    else{
        
        _ImageView.hidden = NO;
        _InfoLabel.text = [NSString stringWithFormat:@"Fill the Grid with the same pattern as shown above."];
        
        switch (ChallengeID) {
            case 1:
                _ImageView.image = [UIImage imageNamed:@"Challenge1.png"];
                break;
                
            case 2:
                _ImageView.image = [UIImage imageNamed:@"Challenge2.png"];
                break;

            case 3:
                _ImageView.image = [UIImage imageNamed:@"Challenge3.png"];
                break;

            case 4:
                _ImageView.image = [UIImage imageNamed:@"Challenge4.png"];
                break;

            case 5:
                _ImageView.image = [UIImage imageNamed:@"Challenge5.png"];
                break;
            
            case 6:
                _ImageView.image = [UIImage imageNamed:@"Challenge6.png"];
                break;

            case 7:
                _ImageView.image = [UIImage imageNamed:@"Challenge7.png"];
                break;

            case 8:
                _ImageView.image = [UIImage imageNamed:@"Challenge8.png"];
                break;

            case 9:
                _ImageView.image = [UIImage imageNamed:@"Challenge9.png"];
                break;

            case 10:
                _ImageView.image = [UIImage imageNamed:@"Challenge10.png"];
                break;

            case 11:
                _ImageView.image = [UIImage imageNamed:@"Challenge11.png"];
                break;

            case 12:
                _ImageView.image = [UIImage imageNamed:@"Challenge12.png"];
                break;

            case 13:
                _ImageView.image = [UIImage imageNamed:@"Challenge13.png"];
                break;

            case 14:
                _ImageView.image = [UIImage imageNamed:@"Challenge14.png"];
                break;

            case 15:
                _ImageView.image = [UIImage imageNamed:@"Challenge15.png"];
                break;

            case 16:
                _ImageView.image = [UIImage imageNamed:@"Challenge16.png"];
                break;
                
            default:
                _ImageView.hidden = YES;
                
                _InfoLabel.text = [NSString stringWithFormat:@"Fill the Grid with Green Squares."];
                
                ttp = (int)[[NSUserDefaults standardUserDefaults] integerForKey:@"5Times"];
                
                switch(ttp%20){
                    case 0:
                        Grid[1][2] = true;
                        Grid[2][1] = true;
                        Grid[2][2] = true;
                        Grid[2][3] = true;
                        Grid[3][2] = true;
                        _Green8.hidden = NO;
                        _Green12.hidden = NO;
                        _Green13.hidden = NO;
                        _Green14.hidden = NO;
                        _Green18.hidden = NO;
                        break;
                        
                    case 1:
                        Grid[1][0] = true;
                        Grid[4][1] = true;
                        Grid[3][4] = true;
                        Grid[0][3] = true;
                        Grid[2][2] = true;
                        _Green6.hidden = NO;
                        _Green22.hidden = NO;
                        _Green20.hidden = NO;
                        _Green4.hidden = NO;
                        _Green13.hidden = NO;
                        break;
                        
                    case 2:
                        Grid[0][0] = true;
                        Grid[4][0] = true;
                        Grid[4][4] = true;
                        Grid[0][4] = true;
                        Grid[2][2] = true;
                        _Green1.hidden = NO;
                        _Green5.hidden = NO;
                        _Green21.hidden = NO;
                        _Green25.hidden = NO;
                        _Green13.hidden = NO;
                        break;
                        
                    case 3:
                        Grid[1][1] = true;
                        Grid[1][3] = true;
                        Grid[2][2] = true;
                        Grid[3][1] = true;
                        Grid[3][3] = true;
                        _Green7.hidden = NO;
                        _Green9.hidden = NO;
                        _Green13.hidden = NO;
                        _Green17.hidden = NO;
                        _Green19.hidden = NO;
                        break;
                        
                    case 4:
                        Grid[0][2] = true;
                        Grid[2][0] = true;
                        Grid[2][2] = true;
                        Grid[2][4] = true;
                        Grid[4][2] = true;
                        _Green3.hidden = NO;
                        _Green11.hidden = NO;
                        _Green13.hidden = NO;
                        _Green15.hidden = NO;
                        _Green23.hidden = NO;
                        break;
                        
                    case 5:
                        Grid[0][0] = true;
                        Grid[1][1] = true;
                        Grid[2][2] = true;
                        Grid[3][3] = true;
                        Grid[4][4] = true;
                        _Green1.hidden = NO;
                        _Green7.hidden = NO;
                        _Green13.hidden = NO;
                        _Green19.hidden = NO;
                        _Green25.hidden = NO;
                        break;
                        
                    case 6:
                        Grid[0][4] = true;
                        Grid[1][3] = true;
                        Grid[2][2] = true;
                        Grid[3][1] = true;
                        Grid[4][0] = true;
                        _Green5.hidden = NO;
                        _Green9.hidden = NO;
                        _Green13.hidden = NO;
                        _Green17.hidden = NO;
                        _Green21.hidden = NO;
                        break;
                        
                    case 7:
                        Grid[0][0] = true;
                        Grid[0][4] = true;
                        Grid[4][0] = true;
                        Grid[4][4] = true;
                        _Green1.hidden = NO;
                        _Green5.hidden = NO;
                        _Green21.hidden = NO;
                        _Green25.hidden = NO;
                        break;
                        
                    case 8:
                        Grid[0][4] = true;
                        Grid[0][2] = true;
                        Grid[2][4] = true;
                        Grid[2][0] = true;
                        Grid[4][2] = true;
                        Grid[4][0] = true;
                        _Green5.hidden = NO;
                        _Green3.hidden = NO;
                        _Green15.hidden = NO;
                        _Green11.hidden = NO;
                        _Green23.hidden = NO;
                        _Green21.hidden = NO;
                        break;
                        
                    case 9:
                        Grid[3][0] = true;
                        Grid[0][1] = true;
                        Grid[1][4] = true;
                        Grid[4][3] = true;
                        Grid[2][2] = true;
                        _Green16.hidden = NO;
                        _Green2.hidden = NO;
                        _Green10.hidden = NO;
                        _Green24.hidden = NO;
                        _Green13.hidden = NO;
                        break;
                        
                    case 10:
                        Grid[3][0] = true;
                        Grid[0][1] = true;
                        Grid[1][4] = true;
                        Grid[4][3] = true;
                        _Green16.hidden = NO;
                        _Green2.hidden = NO;
                        _Green10.hidden = NO;
                        _Green24.hidden = NO;
                        break;
                        
                    case 11:
                        Grid[1][0] = true;
                        Grid[0][1] = true;
                        Grid[3][1] = true;
                        Grid[1][3] = true;
                        Grid[2][2] = true;
                        Grid[4][3] = true;
                        Grid[3][4] = true;
                        _Green6.hidden = NO;
                        _Green2.hidden = NO;
                        _Green17.hidden = NO;
                        _Green9.hidden = NO;
                        _Green13.hidden = NO;
                        _Green24.hidden = NO;
                        _Green20.hidden = NO;
                        break;
                        
                    case 12:
                        Grid[0][0] = true;
                        Grid[1][1] = true;
                        Grid[3][3] = true;
                        Grid[4][4] = true;
                        Grid[0][4] = true;
                        Grid[1][3] = true;
                        Grid[3][1] = true;
                        Grid[4][0] = true;
                        _Green1.hidden = NO;
                        _Green7.hidden = NO;
                        _Green19.hidden = NO;
                        _Green25.hidden = NO;
                        _Green5.hidden = NO;
                        _Green9.hidden = NO;
                        _Green17.hidden = NO;
                        _Green21.hidden = NO;
                        break;
                        
                    case 13:
                        Grid[0][2] = true;
                        Grid[1][1] = true;
                        Grid[1][3] = true;
                        Grid[2][0] = true;
                        Grid[2][2] = true;
                        Grid[2][4] = true;
                        Grid[3][1] = true;
                        Grid[3][3] = true;
                        Grid[4][2] = true;
                        _Green3.hidden = NO;
                        _Green7.hidden = NO;
                        _Green9.hidden = NO;
                        _Green11.hidden = NO;
                        _Green13.hidden = NO;
                        _Green15.hidden = NO;
                        _Green17.hidden = NO;
                        _Green19.hidden = NO;
                        _Green23.hidden = NO;
                        break;
                        
                    case 14:
                        Grid[0][2] = true;
                        Grid[1][1] = true;
                        Grid[1][3] = true;
                        Grid[2][0] = true;
                        Grid[2][2] = true;
                        Grid[2][4] = true;
                        Grid[3][1] = true;
                        Grid[3][3] = true;
                        Grid[4][2] = true;
                        Grid[0][0] = true;
                        Grid[0][4] = true;
                        Grid[4][0] = true;
                        Grid[4][4] = true;
                        _Green1.hidden = NO;
                        _Green5.hidden = NO;
                        _Green21.hidden = NO;
                        _Green25.hidden = NO;
                        _Green3.hidden = NO;
                        _Green7.hidden = NO;
                        _Green9.hidden = NO;
                        _Green11.hidden = NO;
                        _Green13.hidden = NO;
                        _Green15.hidden = NO;
                        _Green17.hidden = NO;
                        _Green19.hidden = NO;
                        _Green23.hidden = NO;
                        break;
                        
                    case 15:
                        Grid[2][2] = true;
                        _Green13.hidden = NO;
                        break;
                        
                    case 16:
                        Grid[1][2] = true;
                        Grid[2][1] = true;
                        Grid[2][3] = true;
                        Grid[3][2] = true;
                        _Green8.hidden = NO;
                        _Green12.hidden = NO;
                        _Green14.hidden = NO;
                        _Green18.hidden = NO;
                        break;
                        
                    case 17:
                        Grid[2][0] = true;
                        Grid[2][1] = true;
                        Grid[2][3] = true;
                        Grid[2][4] = true;
                        _Green11.hidden = NO;
                        _Green12.hidden = NO;
                        _Green14.hidden = NO;
                        _Green15.hidden = NO;
                        break;
                        
                    case 18:
                        Grid[0][2] = true;
                        Grid[1][2] = true;
                        Grid[2][2] = true;
                        Grid[3][2] = true;
                        Grid[4][2] = true;
                        Grid[4][1] = true;
                        Grid[4][3] = true;
                        _Green3.hidden = NO;
                        _Green8.hidden = NO;
                        _Green13.hidden = NO;
                        _Green18.hidden = NO;
                        _Green22.hidden = NO;
                        _Green23.hidden = NO;
                        _Green24.hidden = NO;
                        break;
                        
                    case 19:
                        _Green1.hidden = NO;
                        _Green2.hidden = NO;
                        _Green3.hidden = NO;
                        _Green4.hidden = YES;
                        _Green5.hidden = NO;
                        _Green6.hidden = YES;
                        _Green7.hidden = YES;
                        _Green8.hidden = NO;
                        _Green9.hidden = YES;
                        _Green10.hidden = NO;
                        _Green11.hidden = NO;
                        _Green12.hidden = NO;
                        _Green13.hidden = NO;
                        _Green14.hidden = NO;
                        _Green15.hidden = NO;
                        _Green16.hidden = NO;
                        _Green17.hidden = YES;
                        _Green18.hidden = NO;
                        _Green19.hidden = YES;
                        _Green20.hidden = YES;
                        _Green21.hidden = NO;
                        _Green22.hidden = YES;
                        _Green23.hidden = NO;
                        _Green24.hidden = NO;
                        _Green25.hidden = NO;
                        
                        for(int i=0; i<5; ++i){
                            for(int j=0; j<5; ++j)
                                Grid[i][j] = true;
                        }
                        
                        Grid[1][0] = false;
                        Grid[1][1] = false;
                        Grid[0][3] = false;
                        Grid[1][3] = false;
                        Grid[3][3] = false;
                        Grid[3][4] = false;
                        Grid[3][1] = false;
                        Grid[4][1] = false;
                        break;
                        
                    default:
                        Grid[1][2] = true;
                        Grid[2][1] = true;
                        Grid[2][2] = true;
                        Grid[2][3] = true;
                        Grid[3][2] = true;
                        _Green8.hidden = NO;
                        _Green12.hidden = NO;
                        _Green13.hidden = NO;
                        _Green14.hidden = NO;
                        _Green18.hidden = NO;
                        break;
                }
                break;
        }
        
    }
    
        
    
    
    ScoreNo = 0;
    
    for(int i=0; i<5; ++i){
        for(int j=0; j<5; ++j){
            if(Grid[i][j])
                ScoreNo++;
        }
    }
    
    ttp ++;
    [[NSUserDefaults standardUserDefaults] setInteger:ttp forKey:@"5Times"];
    
    _Score.text = [NSString stringWithFormat:@"%i", ScoreNo];
    
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

- (IBAction)TopLeft:(id)sender {
    
    if(Grid[0][0] == false){
        Grid[0][0] = true;
        _Green1.hidden = NO;
    }
    else{
        Grid[0][0] = false;
        _Green1.hidden = YES;
    }

    if(Grid[0][1] == false){
        Grid[0][1] = true;
        _Green2.hidden = NO;
    }
    else{
        Grid[0][1] = false;
        _Green2.hidden = YES;
    }
    
    if(Grid[1][0] == false){
        Grid[1][0] = true;
        _Green6.hidden = NO;
    }
    else{
        Grid[1][0] = false;
        _Green6.hidden = YES;
    }
    
    ScoreNo = 0;
    for(int i=0; i<5; ++i){
        for(int j=0; j<5; ++j){
            if(Grid[i][j])
                ScoreNo++;
        }
    }
    
    if(ChallengeID == 0){
        if(ScoreNo == 25){
            int Solve5 = (int)[[NSUserDefaults standardUserDefaults] integerForKey:@"5Solved"];
            Solve5++;
            [[NSUserDefaults standardUserDefaults] setInteger:Solve5 forKey:@"5Solved"];
            UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"You Won!"
                                                            message:@"Yeah, you won, big deal!"
                                                           delegate:self
                                                  cancelButtonTitle:@"Dismiss"
                                                  otherButtonTitles:@"Again!",nil];
            [alert show];
        }
    }
    else{
        switch (ChallengeID) {
            case 1:
                checker = 0;
                for(int i=0; i<5; ++i){
                    for(int j=0; j<5; ++j){
                        if(Grid[i][j] != C1[i][j])
                            checker ++;
                    }
                }
                if(checker == 0){
                    NSString *Thing = [NSString stringWithFormat:@"C%iSolved", ChallengeID];
                    int Solve = (int)[[NSUserDefaults standardUserDefaults] integerForKey:Thing];
                    Solve ++;
                    [[NSUserDefaults standardUserDefaults] setInteger:Solve forKey:Thing];
                    UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Challenge Completed" message:@"Yeah! Ok! You have completed Challenge 1, Good Job!." delegate:nil cancelButtonTitle:@"Phone-Five!" otherButtonTitles: nil];
                    
                    [alert show];
                }
                break;

            case 2:
                checker = 0;
                for(int i=0; i<5; ++i){
                    for(int j=0; j<5; ++j){
                        if(Grid[i][j] != C2[i][j])
                            checker ++;
                    }
                }
                if(checker == 0){
                    NSString *Thing = [NSString stringWithFormat:@"C%iSolved", ChallengeID];
                    int Solve = (int)[[NSUserDefaults standardUserDefaults] integerForKey:Thing];
                    Solve ++;
                    [[NSUserDefaults standardUserDefaults] setInteger:Solve forKey:Thing];
                    UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Challenge Completed" message:@"Yeah! Ok! You have completed Challenge 2, Good Job!." delegate:nil cancelButtonTitle:@"Phone-Five!" otherButtonTitles: nil];
                    
                    [alert show];
                }
                break;

            case 3:
                checker = 0;
                for(int i=0; i<5; ++i){
                    for(int j=0; j<5; ++j){
                        if(Grid[i][j] != C3[i][j])
                            checker ++;
                    }
                }
                if(checker == 0){
                    NSString *Thing = [NSString stringWithFormat:@"C%iSolved", ChallengeID];
                    int Solve = (int)[[NSUserDefaults standardUserDefaults] integerForKey:Thing];
                    Solve ++;
                    [[NSUserDefaults standardUserDefaults] setInteger:Solve forKey:Thing];
                    UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Challenge Completed" message:@"Yeah! Ok! You have completed Challenge 3, Good Job!." delegate:nil cancelButtonTitle:@"Phone-Five!" otherButtonTitles: nil];
                    
                    [alert show];
                }
                break;

            case 4:
                checker = 0;
                for(int i=0; i<5; ++i){
                    for(int j=0; j<5; ++j){
                        if(Grid[i][j] != C4[i][j])
                            checker ++;
                    }
                }
                if(checker == 0){
                    NSString *Thing = [NSString stringWithFormat:@"C%iSolved", ChallengeID];
                    int Solve = (int)[[NSUserDefaults standardUserDefaults] integerForKey:Thing];
                    Solve ++;
                    [[NSUserDefaults standardUserDefaults] setInteger:Solve forKey:Thing];
                    UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Challenge Completed" message:@"Yeah! Ok! You have completed Challenge 4, Good Job!." delegate:nil cancelButtonTitle:@"Phone-Five!" otherButtonTitles: nil];
                    
                    [alert show];
                }
                break;

            case 5:
                checker = 0;
                for(int i=0; i<5; ++i){
                    for(int j=0; j<5; ++j){
                        if(Grid[i][j] != C5[i][j])
                            checker ++;
                    }
                }
                if(checker == 0){
                    NSString *Thing = [NSString stringWithFormat:@"C%iSolved", ChallengeID];
                    int Solve = (int)[[NSUserDefaults standardUserDefaults] integerForKey:Thing];
                    Solve ++;
                    [[NSUserDefaults standardUserDefaults] setInteger:Solve forKey:Thing];
                    UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Challenge Completed" message:@"Yeah! Ok! You have completed Challenge 5, Good Job!." delegate:nil cancelButtonTitle:@"Phone-Five!" otherButtonTitles: nil];
                    
                    [alert show];
                }
                break;

            case 6:
                checker = 0;
                for(int i=0; i<5; ++i){
                    for(int j=0; j<5; ++j){
                        if(Grid[i][j] != C6[i][j])
                            checker ++;
                    }
                }
                if(checker == 0){
                    NSString *Thing = [NSString stringWithFormat:@"C%iSolved", ChallengeID];
                    int Solve = (int)[[NSUserDefaults standardUserDefaults] integerForKey:Thing];
                    Solve ++;
                    [[NSUserDefaults standardUserDefaults] setInteger:Solve forKey:Thing];
                    UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Challenge Completed" message:@"Yeah! Ok! You have completed Challenge 6, Good Job!." delegate:nil cancelButtonTitle:@"Phone-Five!" otherButtonTitles: nil];
                    
                    [alert show];
                }
                break;

            case 7:
                checker = 0;
                for(int i=0; i<5; ++i){
                    for(int j=0; j<5; ++j){
                        if(Grid[i][j] != C7[i][j])
                            checker ++;
                    }
                }
                if(checker == 0){
                    NSString *Thing = [NSString stringWithFormat:@"C%iSolved", ChallengeID];
                    int Solve = (int)[[NSUserDefaults standardUserDefaults] integerForKey:Thing];
                    Solve ++;
                    [[NSUserDefaults standardUserDefaults] setInteger:Solve forKey:Thing];
                    UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Challenge Completed" message:@"Yeah! Ok! You have completed Challenge 7, Good Job!." delegate:nil cancelButtonTitle:@"Phone-Five!" otherButtonTitles: nil];
                    
                    [alert show];
                }
                break;

            case 8:
                checker = 0;
                for(int i=0; i<5; ++i){
                    for(int j=0; j<5; ++j){
                        if(Grid[i][j] != C8[i][j])
                            checker ++;
                    }
                }
                if(checker == 0){
                    NSString *Thing = [NSString stringWithFormat:@"C%iSolved", ChallengeID];
                    int Solve = (int)[[NSUserDefaults standardUserDefaults] integerForKey:Thing];
                    Solve ++;
                    [[NSUserDefaults standardUserDefaults] setInteger:Solve forKey:Thing];
                    UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Challenge Completed" message:@"Yeah! Ok! You have completed Challenge 8, Good Job!." delegate:nil cancelButtonTitle:@"Phone-Five!" otherButtonTitles: nil];
                    
                    [alert show];
                }
                break;

            case 9:
                checker = 0;
                for(int i=0; i<5; ++i){
                    for(int j=0; j<5; ++j){
                        if(Grid[i][j] != C9[i][j])
                            checker ++;
                    }
                }
                if(checker == 0){
                    NSString *Thing = [NSString stringWithFormat:@"C%iSolved", ChallengeID];
                    int Solve = (int)[[NSUserDefaults standardUserDefaults] integerForKey:Thing];
                    Solve ++;
                    [[NSUserDefaults standardUserDefaults] setInteger:Solve forKey:Thing];
                    UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Challenge Completed" message:@"Yeah! Ok! You have completed Challenge 9, Good Job!." delegate:nil cancelButtonTitle:@"Phone-Five!" otherButtonTitles: nil];
                    
                    [alert show];
                }
                break;

            case 10:
                checker = 0;
                for(int i=0; i<5; ++i){
                    for(int j=0; j<5; ++j){
                        if(Grid[i][j] != C10[i][j])
                            checker ++;
                    }
                }
                if(checker == 0){
                    NSString *Thing = [NSString stringWithFormat:@"C%iSolved", ChallengeID];
                    int Solve = (int)[[NSUserDefaults standardUserDefaults] integerForKey:Thing];
                    Solve ++;
                    [[NSUserDefaults standardUserDefaults] setInteger:Solve forKey:Thing];
                    UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Challenge Completed" message:@"Yeah! Ok! You have completed Challenge 10, Good Job!." delegate:nil cancelButtonTitle:@"Phone-Five!" otherButtonTitles: nil];
                    
                    [alert show];
                }
                break;

            case 11:
                checker = 0;
                for(int i=0; i<5; ++i){
                    for(int j=0; j<5; ++j){
                        if(Grid[i][j] != C11[i][j])
                            checker ++;
                    }
                }
                if(checker == 0){
                    NSString *Thing = [NSString stringWithFormat:@"C%iSolved", ChallengeID];
                    int Solve = (int)[[NSUserDefaults standardUserDefaults] integerForKey:Thing];
                    Solve ++;
                    [[NSUserDefaults standardUserDefaults] setInteger:Solve forKey:Thing];
                    UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Challenge Completed" message:@"Yeah! Ok! You have completed Challenge 11, Good Job!." delegate:nil cancelButtonTitle:@"Phone-Five!" otherButtonTitles: nil];
                    
                    [alert show];
                }
                break;

            case 12:
                checker = 0;
                for(int i=0; i<5; ++i){
                    for(int j=0; j<5; ++j){
                        if(Grid[i][j] != C12[i][j])
                            checker ++;
                    }
                }
                if(checker == 0){
                    NSString *Thing = [NSString stringWithFormat:@"C%iSolved", ChallengeID];
                    int Solve = (int)[[NSUserDefaults standardUserDefaults] integerForKey:Thing];
                    Solve ++;
                    [[NSUserDefaults standardUserDefaults] setInteger:Solve forKey:Thing];
                    UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Challenge Completed" message:@"Yeah! Ok! You have completed Challenge 12, Good Job!." delegate:nil cancelButtonTitle:@"Phone-Five!" otherButtonTitles: nil];
                    
                    [alert show];
                }
                break;

            case 13:
                checker = 0;
                for(int i=0; i<5; ++i){
                    for(int j=0; j<5; ++j){
                        if(Grid[i][j] != C13[i][j])
                            checker ++;
                    }
                }
                if(checker == 0){
                    NSString *Thing = [NSString stringWithFormat:@"C%iSolved", ChallengeID];
                    int Solve = (int)[[NSUserDefaults standardUserDefaults] integerForKey:Thing];
                    Solve ++;
                    [[NSUserDefaults standardUserDefaults] setInteger:Solve forKey:Thing];
                    UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Challenge Completed" message:@"Yeah! Ok! You have completed Challenge 13, Good Job!." delegate:nil cancelButtonTitle:@"Phone-Five!" otherButtonTitles: nil];
                    
                    [alert show];
                }
                break;

            case 14:
                checker = 0;
                for(int i=0; i<5; ++i){
                    for(int j=0; j<5; ++j){
                        if(Grid[i][j] != C14[i][j])
                            checker ++;
                    }
                }
                if(checker == 0){
                    NSString *Thing = [NSString stringWithFormat:@"C%iSolved", ChallengeID];
                    int Solve = (int)[[NSUserDefaults standardUserDefaults] integerForKey:Thing];
                    Solve ++;
                    [[NSUserDefaults standardUserDefaults] setInteger:Solve forKey:Thing];
                    UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Challenge Completed" message:@"Yeah! Ok! You have completed Challenge 14, Good Job!." delegate:nil cancelButtonTitle:@"Phone-Five!" otherButtonTitles: nil];
                    
                    [alert show];
                }
                break;

            case 15:
                checker = 0;
                for(int i=0; i<5; ++i){
                    for(int j=0; j<5; ++j){
                        if(Grid[i][j] != C15[i][j])
                            checker ++;
                    }
                }
                if(checker == 0){
                    NSString *Thing = [NSString stringWithFormat:@"C%iSolved", ChallengeID];
                    int Solve = (int)[[NSUserDefaults standardUserDefaults] integerForKey:Thing];
                    Solve ++;
                    [[NSUserDefaults standardUserDefaults] setInteger:Solve forKey:Thing];
                    UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Challenge Completed" message:@"Yeah! Ok! You have completed Challenge 15, Good Job!." delegate:nil cancelButtonTitle:@"Phone-Five!" otherButtonTitles: nil];
                    
                    [alert show];
                }
                break;

            case 16:
                checker = 0;
                for(int i=0; i<5; ++i){
                    for(int j=0; j<5; ++j){
                        if(Grid[i][j] != C16[i][j])
                            checker ++;
                    }
                }
                if(checker == 0){
                    NSString *Thing = [NSString stringWithFormat:@"C%iSolved", ChallengeID];
                    int Solve = (int)[[NSUserDefaults standardUserDefaults] integerForKey:Thing];
                    Solve ++;
                    [[NSUserDefaults standardUserDefaults] setInteger:Solve forKey:Thing];
                    UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Challenge Completed" message:@"Yeah! Ok! You have completed Challenge 16, Good Job!." delegate:nil cancelButtonTitle:@"Phone-Five!" otherButtonTitles: nil];
                    
                    [alert show];
                }
                break;

                
            default:
                if(ScoreNo == 25){
                    UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"You Won!"
                                                                    message:@"Yeah, you won, big deal!"
                                                                   delegate:self
                                                          cancelButtonTitle:@"Dismiss"
                                                          otherButtonTitles:@"Again!",nil];
                    [alert show];
                }
                break;
        }
    }
    
    _Score.text = [NSString stringWithFormat:@"%i", ScoreNo];
}

- (IBAction)TopRight:(id)sender {
    
    if(Grid[0][4] == false){
        Grid[0][4] = true;
        _Green5.hidden = NO;
    }
    else{
        Grid[0][4] = false;
        _Green5.hidden = YES;
    }
    
    if(Grid[0][3] == false){
        Grid[0][3] = true;
        _Green4.hidden = NO;
    }
    else{
        Grid[0][3] = false;
        _Green4.hidden = YES;
    }
    
    if(Grid[1][4] == false){
        Grid[1][4] = true;
        _Green10.hidden = NO;
    }
    else{
        Grid[1][4] = false;
        _Green10.hidden = YES;
    }

    
    ScoreNo = 0;
    for(int i=0; i<5; ++i){
        for(int j=0; j<5; ++j){
            if(Grid[i][j])
                ScoreNo++;
        }
    }
    
    if(ChallengeID == 0){
        if(ScoreNo == 25){
            int Solve5 = (int)[[NSUserDefaults standardUserDefaults] integerForKey:@"5Solved"];
            Solve5++;
            [[NSUserDefaults standardUserDefaults] setInteger:Solve5 forKey:@"5Solved"];
            UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"You Won!"
                                                            message:@"Yeah, you won, big deal!"
                                                           delegate:self
                                                  cancelButtonTitle:@"Dismiss"
                                                  otherButtonTitles:@"Again!",nil];
            [alert show];
        }
    }
    else{
        switch (ChallengeID) {
            case 1:
                checker = 0;
                for(int i=0; i<5; ++i){
                    for(int j=0; j<5; ++j){
                        if(Grid[i][j] != C1[i][j])
                            checker ++;
                    }
                }
                if(checker == 0){
                    NSString *Thing = [NSString stringWithFormat:@"C%iSolved", ChallengeID];
                    int Solve = (int)[[NSUserDefaults standardUserDefaults] integerForKey:Thing];
                    Solve ++;
                    [[NSUserDefaults standardUserDefaults] setInteger:Solve forKey:Thing];
                    UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Challenge Completed" message:@"Yeah! Ok! You have completed Challenge 1, Good Job!." delegate:nil cancelButtonTitle:@"Phone-Five!" otherButtonTitles: nil];
                    
                    [alert show];
                }
                break;
                
            case 2:
                checker = 0;
                for(int i=0; i<5; ++i){
                    for(int j=0; j<5; ++j){
                        if(Grid[i][j] != C2[i][j])
                            checker ++;
                    }
                }
                if(checker == 0){
                    NSString *Thing = [NSString stringWithFormat:@"C%iSolved", ChallengeID];
                    int Solve = (int)[[NSUserDefaults standardUserDefaults] integerForKey:Thing];
                    Solve ++;
                    [[NSUserDefaults standardUserDefaults] setInteger:Solve forKey:Thing];
                    UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Challenge Completed" message:@"Yeah! Ok! You have completed Challenge 2, Good Job!." delegate:nil cancelButtonTitle:@"Phone-Five!" otherButtonTitles: nil];
                    
                    [alert show];
                }
                break;
                
            case 3:
                checker = 0;
                for(int i=0; i<5; ++i){
                    for(int j=0; j<5; ++j){
                        if(Grid[i][j] != C3[i][j])
                            checker ++;
                    }
                }
                if(checker == 0){
                    NSString *Thing = [NSString stringWithFormat:@"C%iSolved", ChallengeID];
                    int Solve = (int)[[NSUserDefaults standardUserDefaults] integerForKey:Thing];
                    Solve ++;
                    [[NSUserDefaults standardUserDefaults] setInteger:Solve forKey:Thing];
                    UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Challenge Completed" message:@"Yeah! Ok! You have completed Challenge 3, Good Job!." delegate:nil cancelButtonTitle:@"Phone-Five!" otherButtonTitles: nil];
                    
                    [alert show];
                }
                break;
                
            case 4:
                checker = 0;
                for(int i=0; i<5; ++i){
                    for(int j=0; j<5; ++j){
                        if(Grid[i][j] != C4[i][j])
                            checker ++;
                    }
                }
                if(checker == 0){
                    NSString *Thing = [NSString stringWithFormat:@"C%iSolved", ChallengeID];
                    int Solve = (int)[[NSUserDefaults standardUserDefaults] integerForKey:Thing];
                    Solve ++;
                    [[NSUserDefaults standardUserDefaults] setInteger:Solve forKey:Thing];
                    UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Challenge Completed" message:@"Yeah! Ok! You have completed Challenge 4, Good Job!." delegate:nil cancelButtonTitle:@"Phone-Five!" otherButtonTitles: nil];
                    
                    [alert show];
                }
                break;
                
            case 5:
                checker = 0;
                for(int i=0; i<5; ++i){
                    for(int j=0; j<5; ++j){
                        if(Grid[i][j] != C5[i][j])
                            checker ++;
                    }
                }
                if(checker == 0){
                    NSString *Thing = [NSString stringWithFormat:@"C%iSolved", ChallengeID];
                    int Solve = (int)[[NSUserDefaults standardUserDefaults] integerForKey:Thing];
                    Solve ++;
                    [[NSUserDefaults standardUserDefaults] setInteger:Solve forKey:Thing];
                    UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Challenge Completed" message:@"Yeah! Ok! You have completed Challenge 5, Good Job!." delegate:nil cancelButtonTitle:@"Phone-Five!" otherButtonTitles: nil];
                    
                    [alert show];
                }
                break;
                
            case 6:
                checker = 0;
                for(int i=0; i<5; ++i){
                    for(int j=0; j<5; ++j){
                        if(Grid[i][j] != C6[i][j])
                            checker ++;
                    }
                }
                if(checker == 0){
                    NSString *Thing = [NSString stringWithFormat:@"C%iSolved", ChallengeID];
                    int Solve = (int)[[NSUserDefaults standardUserDefaults] integerForKey:Thing];
                    Solve ++;
                    [[NSUserDefaults standardUserDefaults] setInteger:Solve forKey:Thing];
                    UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Challenge Completed" message:@"Yeah! Ok! You have completed Challenge 6, Good Job!." delegate:nil cancelButtonTitle:@"Phone-Five!" otherButtonTitles: nil];
                    
                    [alert show];
                }
                break;
                
            case 7:
                checker = 0;
                for(int i=0; i<5; ++i){
                    for(int j=0; j<5; ++j){
                        if(Grid[i][j] != C7[i][j])
                            checker ++;
                    }
                }
                if(checker == 0){
                    NSString *Thing = [NSString stringWithFormat:@"C%iSolved", ChallengeID];
                    int Solve = (int)[[NSUserDefaults standardUserDefaults] integerForKey:Thing];
                    Solve ++;
                    [[NSUserDefaults standardUserDefaults] setInteger:Solve forKey:Thing];
                    UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Challenge Completed" message:@"Yeah! Ok! You have completed Challenge 7, Good Job!." delegate:nil cancelButtonTitle:@"Phone-Five!" otherButtonTitles: nil];
                    
                    [alert show];
                }
                break;
                
            case 8:
                checker = 0;
                for(int i=0; i<5; ++i){
                    for(int j=0; j<5; ++j){
                        if(Grid[i][j] != C8[i][j])
                            checker ++;
                    }
                }
                if(checker == 0){
                    NSString *Thing = [NSString stringWithFormat:@"C%iSolved", ChallengeID];
                    int Solve = (int)[[NSUserDefaults standardUserDefaults] integerForKey:Thing];
                    Solve ++;
                    [[NSUserDefaults standardUserDefaults] setInteger:Solve forKey:Thing];
                    UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Challenge Completed" message:@"Yeah! Ok! You have completed Challenge 8, Good Job!." delegate:nil cancelButtonTitle:@"Phone-Five!" otherButtonTitles: nil];
                    
                    [alert show];
                }
                break;
                
            case 9:
                checker = 0;
                for(int i=0; i<5; ++i){
                    for(int j=0; j<5; ++j){
                        if(Grid[i][j] != C9[i][j])
                            checker ++;
                    }
                }
                if(checker == 0){
                    NSString *Thing = [NSString stringWithFormat:@"C%iSolved", ChallengeID];
                    int Solve = (int)[[NSUserDefaults standardUserDefaults] integerForKey:Thing];
                    Solve ++;
                    [[NSUserDefaults standardUserDefaults] setInteger:Solve forKey:Thing];
                    UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Challenge Completed" message:@"Yeah! Ok! You have completed Challenge 9, Good Job!." delegate:nil cancelButtonTitle:@"Phone-Five!" otherButtonTitles: nil];
                    
                    [alert show];
                }
                break;
                
            case 10:
                checker = 0;
                for(int i=0; i<5; ++i){
                    for(int j=0; j<5; ++j){
                        if(Grid[i][j] != C10[i][j])
                            checker ++;
                    }
                }
                if(checker == 0){
                    NSString *Thing = [NSString stringWithFormat:@"C%iSolved", ChallengeID];
                    int Solve = (int)[[NSUserDefaults standardUserDefaults] integerForKey:Thing];
                    Solve ++;
                    [[NSUserDefaults standardUserDefaults] setInteger:Solve forKey:Thing];
                    UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Challenge Completed" message:@"Yeah! Ok! You have completed Challenge 10, Good Job!." delegate:nil cancelButtonTitle:@"Phone-Five!" otherButtonTitles: nil];
                    
                    [alert show];
                }
                break;
                
            case 11:
                checker = 0;
                for(int i=0; i<5; ++i){
                    for(int j=0; j<5; ++j){
                        if(Grid[i][j] != C11[i][j])
                            checker ++;
                    }
                }
                if(checker == 0){
                    NSString *Thing = [NSString stringWithFormat:@"C%iSolved", ChallengeID];
                    int Solve = (int)[[NSUserDefaults standardUserDefaults] integerForKey:Thing];
                    Solve ++;
                    [[NSUserDefaults standardUserDefaults] setInteger:Solve forKey:Thing];
                    UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Challenge Completed" message:@"Yeah! Ok! You have completed Challenge 11, Good Job!." delegate:nil cancelButtonTitle:@"Phone-Five!" otherButtonTitles: nil];
                    
                    [alert show];
                }
                break;
                
            case 12:
                checker = 0;
                for(int i=0; i<5; ++i){
                    for(int j=0; j<5; ++j){
                        if(Grid[i][j] != C12[i][j])
                            checker ++;
                    }
                }
                if(checker == 0){
                    NSString *Thing = [NSString stringWithFormat:@"C%iSolved", ChallengeID];
                    int Solve = (int)[[NSUserDefaults standardUserDefaults] integerForKey:Thing];
                    Solve ++;
                    [[NSUserDefaults standardUserDefaults] setInteger:Solve forKey:Thing];
                    UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Challenge Completed" message:@"Yeah! Ok! You have completed Challenge 12, Good Job!." delegate:nil cancelButtonTitle:@"Phone-Five!" otherButtonTitles: nil];
                    
                    [alert show];
                }
                break;
                
            case 13:
                checker = 0;
                for(int i=0; i<5; ++i){
                    for(int j=0; j<5; ++j){
                        if(Grid[i][j] != C13[i][j])
                            checker ++;
                    }
                }
                if(checker == 0){
                    NSString *Thing = [NSString stringWithFormat:@"C%iSolved", ChallengeID];
                    int Solve = (int)[[NSUserDefaults standardUserDefaults] integerForKey:Thing];
                    Solve ++;
                    [[NSUserDefaults standardUserDefaults] setInteger:Solve forKey:Thing];
                    UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Challenge Completed" message:@"Yeah! Ok! You have completed Challenge 13, Good Job!." delegate:nil cancelButtonTitle:@"Phone-Five!" otherButtonTitles: nil];
                    
                    [alert show];
                }
                break;
                
            case 14:
                checker = 0;
                for(int i=0; i<5; ++i){
                    for(int j=0; j<5; ++j){
                        if(Grid[i][j] != C14[i][j])
                            checker ++;
                    }
                }
                if(checker == 0){
                    NSString *Thing = [NSString stringWithFormat:@"C%iSolved", ChallengeID];
                    int Solve = (int)[[NSUserDefaults standardUserDefaults] integerForKey:Thing];
                    Solve ++;
                    [[NSUserDefaults standardUserDefaults] setInteger:Solve forKey:Thing];
                    UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Challenge Completed" message:@"Yeah! Ok! You have completed Challenge 14, Good Job!." delegate:nil cancelButtonTitle:@"Phone-Five!" otherButtonTitles: nil];
                    
                    [alert show];
                }
                break;
                
            case 15:
                checker = 0;
                for(int i=0; i<5; ++i){
                    for(int j=0; j<5; ++j){
                        if(Grid[i][j] != C15[i][j])
                            checker ++;
                    }
                }
                if(checker == 0){
                    NSString *Thing = [NSString stringWithFormat:@"C%iSolved", ChallengeID];
                    int Solve = (int)[[NSUserDefaults standardUserDefaults] integerForKey:Thing];
                    Solve ++;
                    [[NSUserDefaults standardUserDefaults] setInteger:Solve forKey:Thing];
                    UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Challenge Completed" message:@"Yeah! Ok! You have completed Challenge 15, Good Job!." delegate:nil cancelButtonTitle:@"Phone-Five!" otherButtonTitles: nil];
                    
                    [alert show];
                }
                break;
                
            case 16:
                checker = 0;
                for(int i=0; i<5; ++i){
                    for(int j=0; j<5; ++j){
                        if(Grid[i][j] != C16[i][j])
                            checker ++;
                    }
                }
                if(checker == 0){
                    NSString *Thing = [NSString stringWithFormat:@"C%iSolved", ChallengeID];
                    int Solve = (int)[[NSUserDefaults standardUserDefaults] integerForKey:Thing];
                    Solve ++;
                    [[NSUserDefaults standardUserDefaults] setInteger:Solve forKey:Thing];
                    UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Challenge Completed" message:@"Yeah! Ok! You have completed Challenge 16, Good Job!." delegate:nil cancelButtonTitle:@"Phone-Five!" otherButtonTitles: nil];
                    
                    [alert show];
                }
                break;
                
                
            default:
                if(ScoreNo == 25){
                    int Solve5 = (int)[[NSUserDefaults standardUserDefaults] integerForKey:@"5Solved"];
                    Solve5++;
                    [[NSUserDefaults standardUserDefaults] setInteger:Solve5 forKey:@"5Solved"];
                    UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"You Won!"
                                                                    message:@"Yeah, you won, big deal!"
                                                                   delegate:self
                                                          cancelButtonTitle:@"Dismiss"
                                                          otherButtonTitles:@"Again!",nil];
                    [alert show];
                }
                break;
        }
    }
    
    _Score.text = [NSString stringWithFormat:@"%i", ScoreNo];
}

- (IBAction)BottomLeft:(id)sender {
    
    if(Grid[4][0] == false){
        Grid[4][0] = true;
        _Green21.hidden = NO;
    }
    else{
        Grid[4][0] = false;
        _Green21.hidden = YES;
    }
    
    if(Grid[4][1] == false){
        Grid[4][1] = true;
        _Green22.hidden = NO;
    }
    else{
        Grid[4][1] = false;
        _Green22.hidden = YES;
    }
    
    if(Grid[3][0] == false){
        Grid[3][0] = true;
        _Green16.hidden = NO;
    }
    else{
        Grid[3][0] = false;
        _Green16.hidden = YES;
    }

    
    ScoreNo = 0;
    for(int i=0; i<5; ++i){
        for(int j=0; j<5; ++j){
            if(Grid[i][j])
                ScoreNo++;
        }
    }
    
    if(ChallengeID == 0){
        if(ScoreNo == 25){
            int Solve5 = (int)[[NSUserDefaults standardUserDefaults] integerForKey:@"5Solved"];
            Solve5++;
            [[NSUserDefaults standardUserDefaults] setInteger:Solve5 forKey:@"5Solved"];
            UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"You Won!"
                                                            message:@"Yeah, you won, big deal!"
                                                           delegate:self
                                                  cancelButtonTitle:@"Dismiss"
                                                  otherButtonTitles:@"Again!",nil];
            [alert show];
        }
    }
    else{
        switch (ChallengeID) {
            case 1:
                checker = 0;
                for(int i=0; i<5; ++i){
                    for(int j=0; j<5; ++j){
                        if(Grid[i][j] != C1[i][j])
                            checker ++;
                    }
                }
                if(checker == 0){
                    NSString *Thing = [NSString stringWithFormat:@"C%iSolved", ChallengeID];
                    int Solve = (int)[[NSUserDefaults standardUserDefaults] integerForKey:Thing];
                    Solve ++;
                    [[NSUserDefaults standardUserDefaults] setInteger:Solve forKey:Thing];
                    UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Challenge Completed" message:@"Yeah! Ok! You have completed Challenge 1, Good Job!." delegate:nil cancelButtonTitle:@"Phone-Five!" otherButtonTitles: nil];
                    
                    [alert show];
                }
                break;
                
            case 2:
                checker = 0;
                for(int i=0; i<5; ++i){
                    for(int j=0; j<5; ++j){
                        if(Grid[i][j] != C2[i][j])
                            checker ++;
                    }
                }
                if(checker == 0){
                    NSString *Thing = [NSString stringWithFormat:@"C%iSolved", ChallengeID];
                    int Solve = (int)[[NSUserDefaults standardUserDefaults] integerForKey:Thing];
                    Solve ++;
                    [[NSUserDefaults standardUserDefaults] setInteger:Solve forKey:Thing];
                    UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Challenge Completed" message:@"Yeah! Ok! You have completed Challenge 2, Good Job!." delegate:nil cancelButtonTitle:@"Phone-Five!" otherButtonTitles: nil];
                    
                    [alert show];
                }
                break;
                
            case 3:
                checker = 0;
                for(int i=0; i<5; ++i){
                    for(int j=0; j<5; ++j){
                        if(Grid[i][j] != C3[i][j])
                            checker ++;
                    }
                }
                if(checker == 0){
                    NSString *Thing = [NSString stringWithFormat:@"C%iSolved", ChallengeID];
                    int Solve = (int)[[NSUserDefaults standardUserDefaults] integerForKey:Thing];
                    Solve ++;
                    [[NSUserDefaults standardUserDefaults] setInteger:Solve forKey:Thing];
                    UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Challenge Completed" message:@"Yeah! Ok! You have completed Challenge 3, Good Job!." delegate:nil cancelButtonTitle:@"Phone-Five!" otherButtonTitles: nil];
                    
                    [alert show];
                }
                break;
                
            case 4:
                checker = 0;
                for(int i=0; i<5; ++i){
                    for(int j=0; j<5; ++j){
                        if(Grid[i][j] != C4[i][j])
                            checker ++;
                    }
                }
                if(checker == 0){
                    NSString *Thing = [NSString stringWithFormat:@"C%iSolved", ChallengeID];
                    int Solve = (int)[[NSUserDefaults standardUserDefaults] integerForKey:Thing];
                    Solve ++;
                    [[NSUserDefaults standardUserDefaults] setInteger:Solve forKey:Thing];
                    UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Challenge Completed" message:@"Yeah! Ok! You have completed Challenge 4, Good Job!." delegate:nil cancelButtonTitle:@"Phone-Five!" otherButtonTitles: nil];
                    
                    [alert show];
                }
                break;
                
            case 5:
                checker = 0;
                for(int i=0; i<5; ++i){
                    for(int j=0; j<5; ++j){
                        if(Grid[i][j] != C5[i][j])
                            checker ++;
                    }
                }
                if(checker == 0){
                    NSString *Thing = [NSString stringWithFormat:@"C%iSolved", ChallengeID];
                    int Solve = (int)[[NSUserDefaults standardUserDefaults] integerForKey:Thing];
                    Solve ++;
                    [[NSUserDefaults standardUserDefaults] setInteger:Solve forKey:Thing];
                    UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Challenge Completed" message:@"Yeah! Ok! You have completed Challenge 5, Good Job!." delegate:nil cancelButtonTitle:@"Phone-Five!" otherButtonTitles: nil];
                    
                    [alert show];
                }
                break;
                
            case 6:
                checker = 0;
                for(int i=0; i<5; ++i){
                    for(int j=0; j<5; ++j){
                        if(Grid[i][j] != C6[i][j])
                            checker ++;
                    }
                }
                if(checker == 0){
                    NSString *Thing = [NSString stringWithFormat:@"C%iSolved", ChallengeID];
                    int Solve = (int)[[NSUserDefaults standardUserDefaults] integerForKey:Thing];
                    Solve ++;
                    [[NSUserDefaults standardUserDefaults] setInteger:Solve forKey:Thing];
                    UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Challenge Completed" message:@"Yeah! Ok! You have completed Challenge 6, Good Job!." delegate:nil cancelButtonTitle:@"Phone-Five!" otherButtonTitles: nil];
                    
                    [alert show];
                }
                break;
                
            case 7:
                checker = 0;
                for(int i=0; i<5; ++i){
                    for(int j=0; j<5; ++j){
                        if(Grid[i][j] != C7[i][j])
                            checker ++;
                    }
                }
                if(checker == 0){
                    NSString *Thing = [NSString stringWithFormat:@"C%iSolved", ChallengeID];
                    int Solve = (int)[[NSUserDefaults standardUserDefaults] integerForKey:Thing];
                    Solve ++;
                    [[NSUserDefaults standardUserDefaults] setInteger:Solve forKey:Thing];
                    UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Challenge Completed" message:@"Yeah! Ok! You have completed Challenge 7, Good Job!." delegate:nil cancelButtonTitle:@"Phone-Five!" otherButtonTitles: nil];
                    
                    [alert show];
                }
                break;
                
            case 8:
                checker = 0;
                for(int i=0; i<5; ++i){
                    for(int j=0; j<5; ++j){
                        if(Grid[i][j] != C8[i][j])
                            checker ++;
                    }
                }
                if(checker == 0){
                    NSString *Thing = [NSString stringWithFormat:@"C%iSolved", ChallengeID];
                    int Solve = (int)[[NSUserDefaults standardUserDefaults] integerForKey:Thing];
                    Solve ++;
                    [[NSUserDefaults standardUserDefaults] setInteger:Solve forKey:Thing];
                    UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Challenge Completed" message:@"Yeah! Ok! You have completed Challenge 8, Good Job!." delegate:nil cancelButtonTitle:@"Phone-Five!" otherButtonTitles: nil];
                    
                    [alert show];
                }
                break;
                
            case 9:
                checker = 0;
                for(int i=0; i<5; ++i){
                    for(int j=0; j<5; ++j){
                        if(Grid[i][j] != C9[i][j])
                            checker ++;
                    }
                }
                if(checker == 0){
                    NSString *Thing = [NSString stringWithFormat:@"C%iSolved", ChallengeID];
                    int Solve = (int)[[NSUserDefaults standardUserDefaults] integerForKey:Thing];
                    Solve ++;
                    [[NSUserDefaults standardUserDefaults] setInteger:Solve forKey:Thing];
                    UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Challenge Completed" message:@"Yeah! Ok! You have completed Challenge 9, Good Job!." delegate:nil cancelButtonTitle:@"Phone-Five!" otherButtonTitles: nil];
                    
                    [alert show];
                }
                break;
                
            case 10:
                checker = 0;
                for(int i=0; i<5; ++i){
                    for(int j=0; j<5; ++j){
                        if(Grid[i][j] != C10[i][j])
                            checker ++;
                    }
                }
                if(checker == 0){
                    NSString *Thing = [NSString stringWithFormat:@"C%iSolved", ChallengeID];
                    int Solve = (int)[[NSUserDefaults standardUserDefaults] integerForKey:Thing];
                    Solve ++;
                    [[NSUserDefaults standardUserDefaults] setInteger:Solve forKey:Thing];
                    UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Challenge Completed" message:@"Yeah! Ok! You have completed Challenge 10, Good Job!." delegate:nil cancelButtonTitle:@"Phone-Five!" otherButtonTitles: nil];
                    
                    [alert show];
                }
                break;
                
            case 11:
                checker = 0;
                for(int i=0; i<5; ++i){
                    for(int j=0; j<5; ++j){
                        if(Grid[i][j] != C11[i][j])
                            checker ++;
                    }
                }
                if(checker == 0){
                    NSString *Thing = [NSString stringWithFormat:@"C%iSolved", ChallengeID];
                    int Solve = (int)[[NSUserDefaults standardUserDefaults] integerForKey:Thing];
                    Solve ++;
                    [[NSUserDefaults standardUserDefaults] setInteger:Solve forKey:Thing];
                    UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Challenge Completed" message:@"Yeah! Ok! You have completed Challenge 11, Good Job!." delegate:nil cancelButtonTitle:@"Phone-Five!" otherButtonTitles: nil];
                    
                    [alert show];
                }
                break;
                
            case 12:
                checker = 0;
                for(int i=0; i<5; ++i){
                    for(int j=0; j<5; ++j){
                        if(Grid[i][j] != C12[i][j])
                            checker ++;
                    }
                }
                if(checker == 0){
                    NSString *Thing = [NSString stringWithFormat:@"C%iSolved", ChallengeID];
                    int Solve = (int)[[NSUserDefaults standardUserDefaults] integerForKey:Thing];
                    Solve ++;
                    [[NSUserDefaults standardUserDefaults] setInteger:Solve forKey:Thing];
                    UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Challenge Completed" message:@"Yeah! Ok! You have completed Challenge 12, Good Job!." delegate:nil cancelButtonTitle:@"Phone-Five!" otherButtonTitles: nil];
                    
                    [alert show];
                }
                break;
                
            case 13:
                checker = 0;
                for(int i=0; i<5; ++i){
                    for(int j=0; j<5; ++j){
                        if(Grid[i][j] != C13[i][j])
                            checker ++;
                    }
                }
                if(checker == 0){
                    NSString *Thing = [NSString stringWithFormat:@"C%iSolved", ChallengeID];
                    int Solve = (int)[[NSUserDefaults standardUserDefaults] integerForKey:Thing];
                    Solve ++;
                    [[NSUserDefaults standardUserDefaults] setInteger:Solve forKey:Thing];
                    UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Challenge Completed" message:@"Yeah! Ok! You have completed Challenge 13, Good Job!." delegate:nil cancelButtonTitle:@"Phone-Five!" otherButtonTitles: nil];
                    
                    [alert show];
                }
                break;
                
            case 14:
                checker = 0;
                for(int i=0; i<5; ++i){
                    for(int j=0; j<5; ++j){
                        if(Grid[i][j] != C14[i][j])
                            checker ++;
                    }
                }
                if(checker == 0){
                    NSString *Thing = [NSString stringWithFormat:@"C%iSolved", ChallengeID];
                    int Solve = (int)[[NSUserDefaults standardUserDefaults] integerForKey:Thing];
                    Solve ++;
                    [[NSUserDefaults standardUserDefaults] setInteger:Solve forKey:Thing];
                    UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Challenge Completed" message:@"Yeah! Ok! You have completed Challenge 14, Good Job!." delegate:nil cancelButtonTitle:@"Phone-Five!" otherButtonTitles: nil];
                    
                    [alert show];
                }
                break;
                
            case 15:
                checker = 0;
                for(int i=0; i<5; ++i){
                    for(int j=0; j<5; ++j){
                        if(Grid[i][j] != C15[i][j])
                            checker ++;
                    }
                }
                if(checker == 0){
                    NSString *Thing = [NSString stringWithFormat:@"C%iSolved", ChallengeID];
                    int Solve = (int)[[NSUserDefaults standardUserDefaults] integerForKey:Thing];
                    Solve ++;
                    [[NSUserDefaults standardUserDefaults] setInteger:Solve forKey:Thing];
                    UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Challenge Completed" message:@"Yeah! Ok! You have completed Challenge 15, Good Job!." delegate:nil cancelButtonTitle:@"Phone-Five!" otherButtonTitles: nil];
                    
                    [alert show];
                }
                break;
                
            case 16:
                checker = 0;
                for(int i=0; i<5; ++i){
                    for(int j=0; j<5; ++j){
                        if(Grid[i][j] != C16[i][j])
                            checker ++;
                    }
                }
                if(checker == 0){
                    NSString *Thing = [NSString stringWithFormat:@"C%iSolved", ChallengeID];
                    int Solve = (int)[[NSUserDefaults standardUserDefaults] integerForKey:Thing];
                    Solve ++;
                    [[NSUserDefaults standardUserDefaults] setInteger:Solve forKey:Thing];
                    UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Challenge Completed" message:@"Yeah! Ok! You have completed Challenge 16, Good Job!." delegate:nil cancelButtonTitle:@"Phone-Five!" otherButtonTitles: nil];
                    
                    [alert show];
                }
                break;
                
                
            default:
                if(ScoreNo == 25){
                    UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"You Won!"
                                                                    message:@"Yeah, you won, big deal!"
                                                                   delegate:self
                                                          cancelButtonTitle:@"Dismiss"
                                                          otherButtonTitles:@"Again!",nil];
                    [alert show];
                }
                break;
        }
    }
    
    _Score.text = [NSString stringWithFormat:@"%i", ScoreNo];
}

- (IBAction)BottomRight:(id)sender {
    
    if(Grid[4][4] == false){
        Grid[4][4] = true;
        _Green25.hidden = NO;
    }
    else{
        Grid[4][4] = false;
        _Green25.hidden = YES;
    }
    
    if(Grid[4][3] == false){
        Grid[4][3] = true;
        _Green24.hidden = NO;
    }
    else{
        Grid[4][3] = false;
        _Green24.hidden = YES;
    }
    
    if(Grid[3][4] == false){
        Grid[3][4] = true;
        _Green20.hidden = NO;
    }
    else{
        Grid[3][4] = false;
        _Green20.hidden = YES;
    }
    
    ScoreNo = 0;
    for(int i=0; i<5; ++i){
        for(int j=0; j<5; ++j){
            if(Grid[i][j])
                ScoreNo++;
        }
    }
    
    if(ChallengeID == 0){
        if(ScoreNo == 25){
            int Solve5 = (int)[[NSUserDefaults standardUserDefaults] integerForKey:@"5Solved"];
            Solve5++;
            [[NSUserDefaults standardUserDefaults] setInteger:Solve5 forKey:@"5Solved"];
            UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"You Won!"
                                                            message:@"Yeah, you won, big deal!"
                                                           delegate:self
                                                  cancelButtonTitle:@"Dismiss"
                                                  otherButtonTitles:@"Again!",nil];
            [alert show];
        }
    }
    else{
        switch (ChallengeID) {
            case 1:
                checker = 0;
                for(int i=0; i<5; ++i){
                    for(int j=0; j<5; ++j){
                        if(Grid[i][j] != C1[i][j])
                            checker ++;
                    }
                }
                if(checker == 0){
                    NSString *Thing = [NSString stringWithFormat:@"C%iSolved", ChallengeID];
                    int Solve = (int)[[NSUserDefaults standardUserDefaults] integerForKey:Thing];
                    Solve ++;
                    [[NSUserDefaults standardUserDefaults] setInteger:Solve forKey:Thing];
                    UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Challenge Completed" message:@"Yeah! Ok! You have completed Challenge 1, Good Job!." delegate:nil cancelButtonTitle:@"Phone-Five!" otherButtonTitles: nil];
                    
                    [alert show];
                }
                break;
                
            case 2:
                checker = 0;
                for(int i=0; i<5; ++i){
                    for(int j=0; j<5; ++j){
                        if(Grid[i][j] != C2[i][j])
                            checker ++;
                    }
                }
                if(checker == 0){
                    NSString *Thing = [NSString stringWithFormat:@"C%iSolved", ChallengeID];
                    int Solve = (int)[[NSUserDefaults standardUserDefaults] integerForKey:Thing];
                    Solve ++;
                    [[NSUserDefaults standardUserDefaults] setInteger:Solve forKey:Thing];
                    UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Challenge Completed" message:@"Yeah! Ok! You have completed Challenge 2, Good Job!." delegate:nil cancelButtonTitle:@"Phone-Five!" otherButtonTitles: nil];
                    
                    [alert show];
                }
                break;
                
            case 3:
                checker = 0;
                for(int i=0; i<5; ++i){
                    for(int j=0; j<5; ++j){
                        if(Grid[i][j] != C3[i][j])
                            checker ++;
                    }
                }
                if(checker == 0){
                    NSString *Thing = [NSString stringWithFormat:@"C%iSolved", ChallengeID];
                    int Solve = (int)[[NSUserDefaults standardUserDefaults] integerForKey:Thing];
                    Solve ++;
                    [[NSUserDefaults standardUserDefaults] setInteger:Solve forKey:Thing];
                    UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Challenge Completed" message:@"Yeah! Ok! You have completed Challenge 3, Good Job!." delegate:nil cancelButtonTitle:@"Phone-Five!" otherButtonTitles: nil];
                    
                    [alert show];
                }
                break;
                
            case 4:
                checker = 0;
                for(int i=0; i<5; ++i){
                    for(int j=0; j<5; ++j){
                        if(Grid[i][j] != C4[i][j])
                            checker ++;
                    }
                }
                if(checker == 0){
                    NSString *Thing = [NSString stringWithFormat:@"C%iSolved", ChallengeID];
                    int Solve = (int)[[NSUserDefaults standardUserDefaults] integerForKey:Thing];
                    Solve ++;
                    [[NSUserDefaults standardUserDefaults] setInteger:Solve forKey:Thing];
                    UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Challenge Completed" message:@"Yeah! Ok! You have completed Challenge 4, Good Job!." delegate:nil cancelButtonTitle:@"Phone-Five!" otherButtonTitles: nil];
                    
                    [alert show];
                }
                break;
                
            case 5:
                checker = 0;
                for(int i=0; i<5; ++i){
                    for(int j=0; j<5; ++j){
                        if(Grid[i][j] != C5[i][j])
                            checker ++;
                    }
                }
                if(checker == 0){
                    NSString *Thing = [NSString stringWithFormat:@"C%iSolved", ChallengeID];
                    int Solve = (int)[[NSUserDefaults standardUserDefaults] integerForKey:Thing];
                    Solve ++;
                    [[NSUserDefaults standardUserDefaults] setInteger:Solve forKey:Thing];
                    UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Challenge Completed" message:@"Yeah! Ok! You have completed Challenge 5, Good Job!." delegate:nil cancelButtonTitle:@"Phone-Five!" otherButtonTitles: nil];
                    
                    [alert show];
                }
                break;
                
            case 6:
                checker = 0;
                for(int i=0; i<5; ++i){
                    for(int j=0; j<5; ++j){
                        if(Grid[i][j] != C6[i][j])
                            checker ++;
                    }
                }
                if(checker == 0){
                    NSString *Thing = [NSString stringWithFormat:@"C%iSolved", ChallengeID];
                    int Solve = (int)[[NSUserDefaults standardUserDefaults] integerForKey:Thing];
                    Solve ++;
                    [[NSUserDefaults standardUserDefaults] setInteger:Solve forKey:Thing];
                    UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Challenge Completed" message:@"Yeah! Ok! You have completed Challenge 6, Good Job!." delegate:nil cancelButtonTitle:@"Phone-Five!" otherButtonTitles: nil];
                    
                    [alert show];
                }
                break;
                
            case 7:
                checker = 0;
                for(int i=0; i<5; ++i){
                    for(int j=0; j<5; ++j){
                        if(Grid[i][j] != C7[i][j])
                            checker ++;
                    }
                }
                if(checker == 0){
                    NSString *Thing = [NSString stringWithFormat:@"C%iSolved", ChallengeID];
                    int Solve = (int)[[NSUserDefaults standardUserDefaults] integerForKey:Thing];
                    Solve ++;
                    [[NSUserDefaults standardUserDefaults] setInteger:Solve forKey:Thing];
                    UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Challenge Completed" message:@"Yeah! Ok! You have completed Challenge 7, Good Job!." delegate:nil cancelButtonTitle:@"Phone-Five!" otherButtonTitles: nil];
                    
                    [alert show];
                }
                break;
                
            case 8:
                checker = 0;
                for(int i=0; i<5; ++i){
                    for(int j=0; j<5; ++j){
                        if(Grid[i][j] != C8[i][j])
                            checker ++;
                    }
                }
                if(checker == 0){
                    NSString *Thing = [NSString stringWithFormat:@"C%iSolved", ChallengeID];
                    int Solve = (int)[[NSUserDefaults standardUserDefaults] integerForKey:Thing];
                    Solve ++;
                    [[NSUserDefaults standardUserDefaults] setInteger:Solve forKey:Thing];
                    UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Challenge Completed" message:@"Yeah! Ok! You have completed Challenge 8, Good Job!." delegate:nil cancelButtonTitle:@"Phone-Five!" otherButtonTitles: nil];
                    
                    [alert show];
                }
                break;
                
            case 9:
                checker = 0;
                for(int i=0; i<5; ++i){
                    for(int j=0; j<5; ++j){
                        if(Grid[i][j] != C9[i][j])
                            checker ++;
                    }
                }
                if(checker == 0){
                    NSString *Thing = [NSString stringWithFormat:@"C%iSolved", ChallengeID];
                    int Solve = (int)[[NSUserDefaults standardUserDefaults] integerForKey:Thing];
                    Solve ++;
                    [[NSUserDefaults standardUserDefaults] setInteger:Solve forKey:Thing];
                    UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Challenge Completed" message:@"Yeah! Ok! You have completed Challenge 9, Good Job!." delegate:nil cancelButtonTitle:@"Phone-Five!" otherButtonTitles: nil];
                    
                    [alert show];
                }
                break;
                
            case 10:
                checker = 0;
                for(int i=0; i<5; ++i){
                    for(int j=0; j<5; ++j){
                        if(Grid[i][j] != C10[i][j])
                            checker ++;
                    }
                }
                if(checker == 0){
                    NSString *Thing = [NSString stringWithFormat:@"C%iSolved", ChallengeID];
                    int Solve = (int)[[NSUserDefaults standardUserDefaults] integerForKey:Thing];
                    Solve ++;
                    [[NSUserDefaults standardUserDefaults] setInteger:Solve forKey:Thing];
                    UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Challenge Completed" message:@"Yeah! Ok! You have completed Challenge 10, Good Job!." delegate:nil cancelButtonTitle:@"Phone-Five!" otherButtonTitles: nil];
                    
                    [alert show];
                }
                break;
                
            case 11:
                checker = 0;
                for(int i=0; i<5; ++i){
                    for(int j=0; j<5; ++j){
                        if(Grid[i][j] != C11[i][j])
                            checker ++;
                    }
                }
                if(checker == 0){
                    NSString *Thing = [NSString stringWithFormat:@"C%iSolved", ChallengeID];
                    int Solve = (int)[[NSUserDefaults standardUserDefaults] integerForKey:Thing];
                    Solve ++;
                    [[NSUserDefaults standardUserDefaults] setInteger:Solve forKey:Thing];
                    UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Challenge Completed" message:@"Yeah! Ok! You have completed Challenge 11, Good Job!." delegate:nil cancelButtonTitle:@"Phone-Five!" otherButtonTitles: nil];
                    
                    [alert show];
                }
                break;
                
            case 12:
                checker = 0;
                for(int i=0; i<5; ++i){
                    for(int j=0; j<5; ++j){
                        if(Grid[i][j] != C12[i][j])
                            checker ++;
                    }
                }
                if(checker == 0){
                    NSString *Thing = [NSString stringWithFormat:@"C%iSolved", ChallengeID];
                    int Solve = (int)[[NSUserDefaults standardUserDefaults] integerForKey:Thing];
                    Solve ++;
                    [[NSUserDefaults standardUserDefaults] setInteger:Solve forKey:Thing];
                    UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Challenge Completed" message:@"Yeah! Ok! You have completed Challenge 12, Good Job!." delegate:nil cancelButtonTitle:@"Phone-Five!" otherButtonTitles: nil];
                    
                    [alert show];
                }
                break;
                
            case 13:
                checker = 0;
                for(int i=0; i<5; ++i){
                    for(int j=0; j<5; ++j){
                        if(Grid[i][j] != C13[i][j])
                            checker ++;
                    }
                }
                if(checker == 0){
                    NSString *Thing = [NSString stringWithFormat:@"C%iSolved", ChallengeID];
                    int Solve = (int)[[NSUserDefaults standardUserDefaults] integerForKey:Thing];
                    Solve ++;
                    [[NSUserDefaults standardUserDefaults] setInteger:Solve forKey:Thing];
                    UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Challenge Completed" message:@"Yeah! Ok! You have completed Challenge 13, Good Job!." delegate:nil cancelButtonTitle:@"Phone-Five!" otherButtonTitles: nil];
                    
                    [alert show];
                }
                break;
                
            case 14:
                checker = 0;
                for(int i=0; i<5; ++i){
                    for(int j=0; j<5; ++j){
                        if(Grid[i][j] != C14[i][j])
                            checker ++;
                    }
                }
                if(checker == 0){
                    NSString *Thing = [NSString stringWithFormat:@"C%iSolved", ChallengeID];
                    int Solve = (int)[[NSUserDefaults standardUserDefaults] integerForKey:Thing];
                    Solve ++;
                    [[NSUserDefaults standardUserDefaults] setInteger:Solve forKey:Thing];
                    UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Challenge Completed" message:@"Yeah! Ok! You have completed Challenge 14, Good Job!." delegate:nil cancelButtonTitle:@"Phone-Five!" otherButtonTitles: nil];
                    
                    [alert show];
                }
                break;
                
            case 15:
                checker = 0;
                for(int i=0; i<5; ++i){
                    for(int j=0; j<5; ++j){
                        if(Grid[i][j] != C15[i][j])
                            checker ++;
                    }
                }
                if(checker == 0){
                    NSString *Thing = [NSString stringWithFormat:@"C%iSolved", ChallengeID];
                    int Solve = (int)[[NSUserDefaults standardUserDefaults] integerForKey:Thing];
                    Solve ++;
                    [[NSUserDefaults standardUserDefaults] setInteger:Solve forKey:Thing];
                    UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Challenge Completed" message:@"Yeah! Ok! You have completed Challenge 15, Good Job!." delegate:nil cancelButtonTitle:@"Phone-Five!" otherButtonTitles: nil];
                    
                    [alert show];
                }
                break;
                
            case 16:
                checker = 0;
                for(int i=0; i<5; ++i){
                    for(int j=0; j<5; ++j){
                        if(Grid[i][j] != C16[i][j])
                            checker ++;
                    }
                }
                if(checker == 0){
                    NSString *Thing = [NSString stringWithFormat:@"C%iSolved", ChallengeID];
                    int Solve = (int)[[NSUserDefaults standardUserDefaults] integerForKey:Thing];
                    Solve ++;
                    [[NSUserDefaults standardUserDefaults] setInteger:Solve forKey:Thing];
                    UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Challenge Completed" message:@"Yeah! Ok! You have completed Challenge 16, Good Job!." delegate:nil cancelButtonTitle:@"Phone-Five!" otherButtonTitles: nil];
                    
                    [alert show];
                }
                break;
                
                
            default:
                if(ScoreNo == 25){
                    UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"You Won!"
                                                                    message:@"Yeah, you won, big deal!"
                                                                   delegate:self
                                                          cancelButtonTitle:@"Dismiss"
                                                          otherButtonTitles:@"Again!",nil];
                    [alert show];
                }
                break;
        }
    }
    
    _Score.text = [NSString stringWithFormat:@"%i", ScoreNo];
}

- (IBAction)Left:(id)sender {
    
    if([sender tag] == 10){
        
        if(Grid[1][0] == true){
            Grid[1][0] = false;
            _Green6.hidden = YES;
        }
        else{
            Grid[1][0] = true;
            _Green6.hidden = NO;
        }
        
        if(Grid[0][0] == false){
            Grid[0][0] = true;
            _Green1.hidden = NO;
        }
        else{
            Grid[0][0] = false;
            _Green1.hidden = YES;
        }
        
        if(Grid[1][1]){
            Grid[1][1] = false;
            _Green7.hidden = YES;
        }
        else{
            Grid[1][1] = true;
            _Green7.hidden = NO;
        }
        
        if(Grid[2][0]){
            Grid[2][0] = false;
            _Green11.hidden = YES;
        }
        else{
            Grid[2][0] = true;
            _Green11.hidden = NO;
        }
        
        ScoreNo = 0;
        for(int i=0; i<5; ++i){
            for(int j=0; j<5; ++j){
                if(Grid[i][j])
                    ScoreNo++;
            }
        }
        
        if(ChallengeID == 0){
            if(ScoreNo == 25){
                int Solve5 = (int)[[NSUserDefaults standardUserDefaults] integerForKey:@"5Solved"];
                Solve5++;
                [[NSUserDefaults standardUserDefaults] setInteger:Solve5 forKey:@"5Solved"];
                UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"You Won!"
                                                                message:@"Yeah, you won, big deal!"
                                                               delegate:self
                                                      cancelButtonTitle:@"Dismiss"
                                                      otherButtonTitles:@"Again!",nil];
                [alert show];
            }
        }
        else{
            switch (ChallengeID) {
                case 1:
                    checker = 0;
                    for(int i=0; i<5; ++i){
                        for(int j=0; j<5; ++j){
                            if(Grid[i][j] != C1[i][j])
                                checker ++;
                        }
                    }
                    if(checker == 0){
                    NSString *Thing = [NSString stringWithFormat:@"C%iSolved", ChallengeID];
                    int Solve = (int)[[NSUserDefaults standardUserDefaults] integerForKey:Thing];
                    Solve ++;
                    [[NSUserDefaults standardUserDefaults] setInteger:Solve forKey:Thing];
                        UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Challenge Completed" message:@"Yeah! Ok! You have completed Challenge 1, Good Job!." delegate:nil cancelButtonTitle:@"Phone-Five!" otherButtonTitles: nil];
                        
                        [alert show];
                    }
                    break;
                    
                case 2:
                    checker = 0;
                    for(int i=0; i<5; ++i){
                        for(int j=0; j<5; ++j){
                            if(Grid[i][j] != C2[i][j])
                                checker ++;
                        }
                    }
                    if(checker == 0){
                    NSString *Thing = [NSString stringWithFormat:@"C%iSolved", ChallengeID];
                    int Solve = (int)[[NSUserDefaults standardUserDefaults] integerForKey:Thing];
                    Solve ++;
                    [[NSUserDefaults standardUserDefaults] setInteger:Solve forKey:Thing];
                        UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Challenge Completed" message:@"Yeah! Ok! You have completed Challenge 2, Good Job!." delegate:nil cancelButtonTitle:@"Phone-Five!" otherButtonTitles: nil];
                        
                        [alert show];
                    }
                    break;
                    
                case 3:
                    checker = 0;
                    for(int i=0; i<5; ++i){
                        for(int j=0; j<5; ++j){
                            if(Grid[i][j] != C3[i][j])
                                checker ++;
                        }
                    }
                    if(checker == 0){
                    NSString *Thing = [NSString stringWithFormat:@"C%iSolved", ChallengeID];
                    int Solve = (int)[[NSUserDefaults standardUserDefaults] integerForKey:Thing];
                    Solve ++;
                    [[NSUserDefaults standardUserDefaults] setInteger:Solve forKey:Thing];
                        UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Challenge Completed" message:@"Yeah! Ok! You have completed Challenge 3, Good Job!." delegate:nil cancelButtonTitle:@"Phone-Five!" otherButtonTitles: nil];
                        
                        [alert show];
                    }
                    break;
                    
                case 4:
                    checker = 0;
                    for(int i=0; i<5; ++i){
                        for(int j=0; j<5; ++j){
                            if(Grid[i][j] != C4[i][j])
                                checker ++;
                        }
                    }
                    if(checker == 0){
                    NSString *Thing = [NSString stringWithFormat:@"C%iSolved", ChallengeID];
                    int Solve = (int)[[NSUserDefaults standardUserDefaults] integerForKey:Thing];
                    Solve ++;
                    [[NSUserDefaults standardUserDefaults] setInteger:Solve forKey:Thing];
                        UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Challenge Completed" message:@"Yeah! Ok! You have completed Challenge 4, Good Job!." delegate:nil cancelButtonTitle:@"Phone-Five!" otherButtonTitles: nil];
                        
                        [alert show];
                    }
                    break;
                    
                case 5:
                    checker = 0;
                    for(int i=0; i<5; ++i){
                        for(int j=0; j<5; ++j){
                            if(Grid[i][j] != C5[i][j])
                                checker ++;
                        }
                    }
                    if(checker == 0){
                    NSString *Thing = [NSString stringWithFormat:@"C%iSolved", ChallengeID];
                    int Solve = (int)[[NSUserDefaults standardUserDefaults] integerForKey:Thing];
                    Solve ++;
                    [[NSUserDefaults standardUserDefaults] setInteger:Solve forKey:Thing];
                        UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Challenge Completed" message:@"Yeah! Ok! You have completed Challenge 5, Good Job!." delegate:nil cancelButtonTitle:@"Phone-Five!" otherButtonTitles: nil];
                        
                        [alert show];
                    }
                    break;
                    
                case 6:
                    checker = 0;
                    for(int i=0; i<5; ++i){
                        for(int j=0; j<5; ++j){
                            if(Grid[i][j] != C6[i][j])
                                checker ++;
                        }
                    }
                    if(checker == 0){
                    NSString *Thing = [NSString stringWithFormat:@"C%iSolved", ChallengeID];
                    int Solve = (int)[[NSUserDefaults standardUserDefaults] integerForKey:Thing];
                    Solve ++;
                    [[NSUserDefaults standardUserDefaults] setInteger:Solve forKey:Thing];
                        UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Challenge Completed" message:@"Yeah! Ok! You have completed Challenge 6, Good Job!." delegate:nil cancelButtonTitle:@"Phone-Five!" otherButtonTitles: nil];
                        
                        [alert show];
                    }
                    break;
                    
                case 7:
                    checker = 0;
                    for(int i=0; i<5; ++i){
                        for(int j=0; j<5; ++j){
                            if(Grid[i][j] != C7[i][j])
                                checker ++;
                        }
                    }
                    if(checker == 0){
                    NSString *Thing = [NSString stringWithFormat:@"C%iSolved", ChallengeID];
                    int Solve = (int)[[NSUserDefaults standardUserDefaults] integerForKey:Thing];
                    Solve ++;
                    [[NSUserDefaults standardUserDefaults] setInteger:Solve forKey:Thing];
                        UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Challenge Completed" message:@"Yeah! Ok! You have completed Challenge 7, Good Job!." delegate:nil cancelButtonTitle:@"Phone-Five!" otherButtonTitles: nil];
                        
                        [alert show];
                    }
                    break;
                    
                case 8:
                    checker = 0;
                    for(int i=0; i<5; ++i){
                        for(int j=0; j<5; ++j){
                            if(Grid[i][j] != C8[i][j])
                                checker ++;
                        }
                    }
                    if(checker == 0){
                    NSString *Thing = [NSString stringWithFormat:@"C%iSolved", ChallengeID];
                    int Solve = (int)[[NSUserDefaults standardUserDefaults] integerForKey:Thing];
                    Solve ++;
                    [[NSUserDefaults standardUserDefaults] setInteger:Solve forKey:Thing];
                        UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Challenge Completed" message:@"Yeah! Ok! You have completed Challenge 8, Good Job!." delegate:nil cancelButtonTitle:@"Phone-Five!" otherButtonTitles: nil];
                        
                        [alert show];
                    }
                    break;
                    
                case 9:
                    checker = 0;
                    for(int i=0; i<5; ++i){
                        for(int j=0; j<5; ++j){
                            if(Grid[i][j] != C9[i][j])
                                checker ++;
                        }
                    }
                    if(checker == 0){
                    NSString *Thing = [NSString stringWithFormat:@"C%iSolved", ChallengeID];
                    int Solve = (int)[[NSUserDefaults standardUserDefaults] integerForKey:Thing];
                    Solve ++;
                    [[NSUserDefaults standardUserDefaults] setInteger:Solve forKey:Thing];
                        UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Challenge Completed" message:@"Yeah! Ok! You have completed Challenge 9, Good Job!." delegate:nil cancelButtonTitle:@"Phone-Five!" otherButtonTitles: nil];
                        
                        [alert show];
                    }
                    break;
                    
                case 10:
                    checker = 0;
                    for(int i=0; i<5; ++i){
                        for(int j=0; j<5; ++j){
                            if(Grid[i][j] != C10[i][j])
                                checker ++;
                        }
                    }
                    if(checker == 0){
                    NSString *Thing = [NSString stringWithFormat:@"C%iSolved", ChallengeID];
                    int Solve = (int)[[NSUserDefaults standardUserDefaults] integerForKey:Thing];
                    Solve ++;
                    [[NSUserDefaults standardUserDefaults] setInteger:Solve forKey:Thing];
                        UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Challenge Completed" message:@"Yeah! Ok! You have completed Challenge 10, Good Job!." delegate:nil cancelButtonTitle:@"Phone-Five!" otherButtonTitles: nil];
                        
                        [alert show];
                    }
                    break;
                    
                case 11:
                    checker = 0;
                    for(int i=0; i<5; ++i){
                        for(int j=0; j<5; ++j){
                            if(Grid[i][j] != C11[i][j])
                                checker ++;
                        }
                    }
                    if(checker == 0){
                    NSString *Thing = [NSString stringWithFormat:@"C%iSolved", ChallengeID];
                    int Solve = (int)[[NSUserDefaults standardUserDefaults] integerForKey:Thing];
                    Solve ++;
                    [[NSUserDefaults standardUserDefaults] setInteger:Solve forKey:Thing];
                        UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Challenge Completed" message:@"Yeah! Ok! You have completed Challenge 11, Good Job!." delegate:nil cancelButtonTitle:@"Phone-Five!" otherButtonTitles: nil];
                        
                        [alert show];
                    }
                    break;
                    
                case 12:
                    checker = 0;
                    for(int i=0; i<5; ++i){
                        for(int j=0; j<5; ++j){
                            if(Grid[i][j] != C12[i][j])
                                checker ++;
                        }
                    }
                    if(checker == 0){
                    NSString *Thing = [NSString stringWithFormat:@"C%iSolved", ChallengeID];
                    int Solve = (int)[[NSUserDefaults standardUserDefaults] integerForKey:Thing];
                    Solve ++;
                    [[NSUserDefaults standardUserDefaults] setInteger:Solve forKey:Thing];
                        UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Challenge Completed" message:@"Yeah! Ok! You have completed Challenge 12, Good Job!." delegate:nil cancelButtonTitle:@"Phone-Five!" otherButtonTitles: nil];
                        
                        [alert show];
                    }
                    break;
                    
                case 13:
                    checker = 0;
                    for(int i=0; i<5; ++i){
                        for(int j=0; j<5; ++j){
                            if(Grid[i][j] != C13[i][j])
                                checker ++;
                        }
                    }
                    if(checker == 0){
                    NSString *Thing = [NSString stringWithFormat:@"C%iSolved", ChallengeID];
                    int Solve = (int)[[NSUserDefaults standardUserDefaults] integerForKey:Thing];
                    Solve ++;
                    [[NSUserDefaults standardUserDefaults] setInteger:Solve forKey:Thing];
                        UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Challenge Completed" message:@"Yeah! Ok! You have completed Challenge 13, Good Job!." delegate:nil cancelButtonTitle:@"Phone-Five!" otherButtonTitles: nil];
                        
                        [alert show];
                    }
                    break;
                    
                case 14:
                    checker = 0;
                    for(int i=0; i<5; ++i){
                        for(int j=0; j<5; ++j){
                            if(Grid[i][j] != C14[i][j])
                                checker ++;
                        }
                    }
                    if(checker == 0){
                    NSString *Thing = [NSString stringWithFormat:@"C%iSolved", ChallengeID];
                    int Solve = (int)[[NSUserDefaults standardUserDefaults] integerForKey:Thing];
                    Solve ++;
                    [[NSUserDefaults standardUserDefaults] setInteger:Solve forKey:Thing];
                        UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Challenge Completed" message:@"Yeah! Ok! You have completed Challenge 14, Good Job!." delegate:nil cancelButtonTitle:@"Phone-Five!" otherButtonTitles: nil];
                        
                        [alert show];
                    }
                    break;
                    
                case 15:
                    checker = 0;
                    for(int i=0; i<5; ++i){
                        for(int j=0; j<5; ++j){
                            if(Grid[i][j] != C15[i][j])
                                checker ++;
                        }
                    }
                    if(checker == 0){
                    NSString *Thing = [NSString stringWithFormat:@"C%iSolved", ChallengeID];
                    int Solve = (int)[[NSUserDefaults standardUserDefaults] integerForKey:Thing];
                    Solve ++;
                    [[NSUserDefaults standardUserDefaults] setInteger:Solve forKey:Thing];
                        UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Challenge Completed" message:@"Yeah! Ok! You have completed Challenge 15, Good Job!." delegate:nil cancelButtonTitle:@"Phone-Five!" otherButtonTitles: nil];
                        
                        [alert show];
                    }
                    break;
                    
                case 16:
                    checker = 0;
                    for(int i=0; i<5; ++i){
                        for(int j=0; j<5; ++j){
                            if(Grid[i][j] != C16[i][j])
                                checker ++;
                        }
                    }
                    if(checker == 0){
                    NSString *Thing = [NSString stringWithFormat:@"C%iSolved", ChallengeID];
                    int Solve = (int)[[NSUserDefaults standardUserDefaults] integerForKey:Thing];
                    Solve ++;
                    [[NSUserDefaults standardUserDefaults] setInteger:Solve forKey:Thing];
                        UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Challenge Completed" message:@"Yeah! Ok! You have completed Challenge 16, Good Job!." delegate:nil cancelButtonTitle:@"Phone-Five!" otherButtonTitles: nil];
                        
                        [alert show];
                    }
                    break;
                    
                    
                default:
                    if(ScoreNo == 25){
                        UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"You Won!"
                                                                        message:@"Yeah, you won, big deal!"
                                                                       delegate:self
                                                              cancelButtonTitle:@"Dismiss"
                                                              otherButtonTitles:@"Again!",nil];
                        [alert show];
                    }
                    break;
            }
        }
        _Score.text = [NSString stringWithFormat:@"%i", ScoreNo];
        
    }
    
    else if ([sender tag] == 20){
        
        if(Grid[1][0] == false){
            Grid[1][0] = true;
            _Green6.hidden = NO;
        }
        else{
            Grid[1][0] = false;
            _Green6.hidden = YES;
        }
        
        if(Grid[2][0] == false){
            Grid[2][0] = true;
            _Green11.hidden = NO;
        }
        else{
            Grid[2][0] = false;
            _Green11.hidden = YES;
        }
        
        if(Grid[3][0] == false){
            Grid[3][0] = true;
            _Green16.hidden = NO;
        }
        else{
            Grid[3][0] = false;
            _Green16.hidden = YES;
        }
        if(Grid[2][1] == false){
            Grid[2][1] = true;
            _Green12.hidden = NO;
        }
        else{
            Grid[2][1] = false;
            _Green12.hidden = YES;
        }
        
        ScoreNo = 0;
        for(int i=0; i<5; ++i){
            for(int j=0; j<5; ++j){
                if(Grid[i][j])
                    ScoreNo++;
            }
        }
        
        if(ChallengeID == 0){
            if(ScoreNo == 25){
                int Solve5 = (int)[[NSUserDefaults standardUserDefaults] integerForKey:@"5Solved"];
                Solve5++;
                [[NSUserDefaults standardUserDefaults] setInteger:Solve5 forKey:@"5Solved"];
                UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"You Won!"
                                                                message:@"Yeah, you won, big deal!"
                                                               delegate:self
                                                      cancelButtonTitle:@"Dismiss"
                                                      otherButtonTitles:@"Again!",nil];
                [alert show];
            }
        }
        else{
            switch (ChallengeID) {
                case 1:
                    checker = 0;
                    for(int i=0; i<5; ++i){
                        for(int j=0; j<5; ++j){
                            if(Grid[i][j] != C1[i][j])
                                checker ++;
                        }
                    }
                    if(checker == 0){
                    NSString *Thing = [NSString stringWithFormat:@"C%iSolved", ChallengeID];
                    int Solve = (int)[[NSUserDefaults standardUserDefaults] integerForKey:Thing];
                    Solve ++;
                    [[NSUserDefaults standardUserDefaults] setInteger:Solve forKey:Thing];
                        UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Challenge Completed" message:@"Yeah! Ok! You have completed Challenge 1, Good Job!." delegate:nil cancelButtonTitle:@"Phone-Five!" otherButtonTitles: nil];
                        
                        [alert show];
                    }
                    break;
                    
                case 2:
                    checker = 0;
                    for(int i=0; i<5; ++i){
                        for(int j=0; j<5; ++j){
                            if(Grid[i][j] != C2[i][j])
                                checker ++;
                        }
                    }
                    if(checker == 0){
                    NSString *Thing = [NSString stringWithFormat:@"C%iSolved", ChallengeID];
                    int Solve = (int)[[NSUserDefaults standardUserDefaults] integerForKey:Thing];
                    Solve ++;
                    [[NSUserDefaults standardUserDefaults] setInteger:Solve forKey:Thing];
                        UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Challenge Completed" message:@"Yeah! Ok! You have completed Challenge 2, Good Job!." delegate:nil cancelButtonTitle:@"Phone-Five!" otherButtonTitles: nil];
                        
                        [alert show];
                    }
                    break;
                    
                case 3:
                    checker = 0;
                    for(int i=0; i<5; ++i){
                        for(int j=0; j<5; ++j){
                            if(Grid[i][j] != C3[i][j])
                                checker ++;
                        }
                    }
                    if(checker == 0){
                    NSString *Thing = [NSString stringWithFormat:@"C%iSolved", ChallengeID];
                    int Solve = (int)[[NSUserDefaults standardUserDefaults] integerForKey:Thing];
                    Solve ++;
                    [[NSUserDefaults standardUserDefaults] setInteger:Solve forKey:Thing];
                        UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Challenge Completed" message:@"Yeah! Ok! You have completed Challenge 3, Good Job!." delegate:nil cancelButtonTitle:@"Phone-Five!" otherButtonTitles: nil];
                        
                        [alert show];
                    }
                    break;
                    
                case 4:
                    checker = 0;
                    for(int i=0; i<5; ++i){
                        for(int j=0; j<5; ++j){
                            if(Grid[i][j] != C4[i][j])
                                checker ++;
                        }
                    }
                    if(checker == 0){
                    NSString *Thing = [NSString stringWithFormat:@"C%iSolved", ChallengeID];
                    int Solve = (int)[[NSUserDefaults standardUserDefaults] integerForKey:Thing];
                    Solve ++;
                    [[NSUserDefaults standardUserDefaults] setInteger:Solve forKey:Thing];
                        UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Challenge Completed" message:@"Yeah! Ok! You have completed Challenge 4, Good Job!." delegate:nil cancelButtonTitle:@"Phone-Five!" otherButtonTitles: nil];
                        
                        [alert show];
                    }
                    break;
                    
                case 5:
                    checker = 0;
                    for(int i=0; i<5; ++i){
                        for(int j=0; j<5; ++j){
                            if(Grid[i][j] != C5[i][j])
                                checker ++;
                        }
                    }
                    if(checker == 0){
                    NSString *Thing = [NSString stringWithFormat:@"C%iSolved", ChallengeID];
                    int Solve = (int)[[NSUserDefaults standardUserDefaults] integerForKey:Thing];
                    Solve ++;
                    [[NSUserDefaults standardUserDefaults] setInteger:Solve forKey:Thing];
                        UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Challenge Completed" message:@"Yeah! Ok! You have completed Challenge 5, Good Job!." delegate:nil cancelButtonTitle:@"Phone-Five!" otherButtonTitles: nil];
                        
                        [alert show];
                    }
                    break;
                    
                case 6:
                    checker = 0;
                    for(int i=0; i<5; ++i){
                        for(int j=0; j<5; ++j){
                            if(Grid[i][j] != C6[i][j])
                                checker ++;
                        }
                    }
                    if(checker == 0){
                    NSString *Thing = [NSString stringWithFormat:@"C%iSolved", ChallengeID];
                    int Solve = (int)[[NSUserDefaults standardUserDefaults] integerForKey:Thing];
                    Solve ++;
                    [[NSUserDefaults standardUserDefaults] setInteger:Solve forKey:Thing];
                        UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Challenge Completed" message:@"Yeah! Ok! You have completed Challenge 6, Good Job!." delegate:nil cancelButtonTitle:@"Phone-Five!" otherButtonTitles: nil];
                        
                        [alert show];
                    }
                    break;
                    
                case 7:
                    checker = 0;
                    for(int i=0; i<5; ++i){
                        for(int j=0; j<5; ++j){
                            if(Grid[i][j] != C7[i][j])
                                checker ++;
                        }
                    }
                    if(checker == 0){
                    NSString *Thing = [NSString stringWithFormat:@"C%iSolved", ChallengeID];
                    int Solve = (int)[[NSUserDefaults standardUserDefaults] integerForKey:Thing];
                    Solve ++;
                    [[NSUserDefaults standardUserDefaults] setInteger:Solve forKey:Thing];
                        UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Challenge Completed" message:@"Yeah! Ok! You have completed Challenge 7, Good Job!." delegate:nil cancelButtonTitle:@"Phone-Five!" otherButtonTitles: nil];
                        
                        [alert show];
                    }
                    break;
                    
                case 8:
                    checker = 0;
                    for(int i=0; i<5; ++i){
                        for(int j=0; j<5; ++j){
                            if(Grid[i][j] != C8[i][j])
                                checker ++;
                        }
                    }
                    if(checker == 0){
                    NSString *Thing = [NSString stringWithFormat:@"C%iSolved", ChallengeID];
                    int Solve = (int)[[NSUserDefaults standardUserDefaults] integerForKey:Thing];
                    Solve ++;
                    [[NSUserDefaults standardUserDefaults] setInteger:Solve forKey:Thing];
                        UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Challenge Completed" message:@"Yeah! Ok! You have completed Challenge 8, Good Job!." delegate:nil cancelButtonTitle:@"Phone-Five!" otherButtonTitles: nil];
                        
                        [alert show];
                    }
                    break;
                    
                case 9:
                    checker = 0;
                    for(int i=0; i<5; ++i){
                        for(int j=0; j<5; ++j){
                            if(Grid[i][j] != C9[i][j])
                                checker ++;
                        }
                    }
                    if(checker == 0){
                    NSString *Thing = [NSString stringWithFormat:@"C%iSolved", ChallengeID];
                    int Solve = (int)[[NSUserDefaults standardUserDefaults] integerForKey:Thing];
                    Solve ++;
                    [[NSUserDefaults standardUserDefaults] setInteger:Solve forKey:Thing];
                        UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Challenge Completed" message:@"Yeah! Ok! You have completed Challenge 9, Good Job!." delegate:nil cancelButtonTitle:@"Phone-Five!" otherButtonTitles: nil];
                        
                        [alert show];
                    }
                    break;
                    
                case 10:
                    checker = 0;
                    for(int i=0; i<5; ++i){
                        for(int j=0; j<5; ++j){
                            if(Grid[i][j] != C10[i][j])
                                checker ++;
                        }
                    }
                    if(checker == 0){
                    NSString *Thing = [NSString stringWithFormat:@"C%iSolved", ChallengeID];
                    int Solve = (int)[[NSUserDefaults standardUserDefaults] integerForKey:Thing];
                    Solve ++;
                    [[NSUserDefaults standardUserDefaults] setInteger:Solve forKey:Thing];
                        UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Challenge Completed" message:@"Yeah! Ok! You have completed Challenge 10, Good Job!." delegate:nil cancelButtonTitle:@"Phone-Five!" otherButtonTitles: nil];
                        
                        [alert show];
                    }
                    break;
                    
                case 11:
                    checker = 0;
                    for(int i=0; i<5; ++i){
                        for(int j=0; j<5; ++j){
                            if(Grid[i][j] != C11[i][j])
                                checker ++;
                        }
                    }
                    if(checker == 0){
                    NSString *Thing = [NSString stringWithFormat:@"C%iSolved", ChallengeID];
                    int Solve = (int)[[NSUserDefaults standardUserDefaults] integerForKey:Thing];
                    Solve ++;
                    [[NSUserDefaults standardUserDefaults] setInteger:Solve forKey:Thing];
                        UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Challenge Completed" message:@"Yeah! Ok! You have completed Challenge 11, Good Job!." delegate:nil cancelButtonTitle:@"Phone-Five!" otherButtonTitles: nil];
                        
                        [alert show];
                    }
                    break;
                    
                case 12:
                    checker = 0;
                    for(int i=0; i<5; ++i){
                        for(int j=0; j<5; ++j){
                            if(Grid[i][j] != C12[i][j])
                                checker ++;
                        }
                    }
                    if(checker == 0){
                    NSString *Thing = [NSString stringWithFormat:@"C%iSolved", ChallengeID];
                    int Solve = (int)[[NSUserDefaults standardUserDefaults] integerForKey:Thing];
                    Solve ++;
                    [[NSUserDefaults standardUserDefaults] setInteger:Solve forKey:Thing];
                        UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Challenge Completed" message:@"Yeah! Ok! You have completed Challenge 12, Good Job!." delegate:nil cancelButtonTitle:@"Phone-Five!" otherButtonTitles: nil];
                        
                        [alert show];
                    }
                    break;
                    
                case 13:
                    checker = 0;
                    for(int i=0; i<5; ++i){
                        for(int j=0; j<5; ++j){
                            if(Grid[i][j] != C13[i][j])
                                checker ++;
                        }
                    }
                    if(checker == 0){
                    NSString *Thing = [NSString stringWithFormat:@"C%iSolved", ChallengeID];
                    int Solve = (int)[[NSUserDefaults standardUserDefaults] integerForKey:Thing];
                    Solve ++;
                    [[NSUserDefaults standardUserDefaults] setInteger:Solve forKey:Thing];
                        UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Challenge Completed" message:@"Yeah! Ok! You have completed Challenge 13, Good Job!." delegate:nil cancelButtonTitle:@"Phone-Five!" otherButtonTitles: nil];
                        
                        [alert show];
                    }
                    break;
                    
                case 14:
                    checker = 0;
                    for(int i=0; i<5; ++i){
                        for(int j=0; j<5; ++j){
                            if(Grid[i][j] != C14[i][j])
                                checker ++;
                        }
                    }
                    if(checker == 0){
                    NSString *Thing = [NSString stringWithFormat:@"C%iSolved", ChallengeID];
                    int Solve = (int)[[NSUserDefaults standardUserDefaults] integerForKey:Thing];
                    Solve ++;
                    [[NSUserDefaults standardUserDefaults] setInteger:Solve forKey:Thing];
                        UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Challenge Completed" message:@"Yeah! Ok! You have completed Challenge 14, Good Job!." delegate:nil cancelButtonTitle:@"Phone-Five!" otherButtonTitles: nil];
                        
                        [alert show];
                    }
                    break;
                    
                case 15:
                    checker = 0;
                    for(int i=0; i<5; ++i){
                        for(int j=0; j<5; ++j){
                            if(Grid[i][j] != C15[i][j])
                                checker ++;
                        }
                    }
                    if(checker == 0){
                    NSString *Thing = [NSString stringWithFormat:@"C%iSolved", ChallengeID];
                    int Solve = (int)[[NSUserDefaults standardUserDefaults] integerForKey:Thing];
                    Solve ++;
                    [[NSUserDefaults standardUserDefaults] setInteger:Solve forKey:Thing];
                        UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Challenge Completed" message:@"Yeah! Ok! You have completed Challenge 15, Good Job!." delegate:nil cancelButtonTitle:@"Phone-Five!" otherButtonTitles: nil];
                        
                        [alert show];
                    }
                    break;
                    
                case 16:
                    checker = 0;
                    for(int i=0; i<5; ++i){
                        for(int j=0; j<5; ++j){
                            if(Grid[i][j] != C16[i][j])
                                checker ++;
                        }
                    }
                    if(checker == 0){
                    NSString *Thing = [NSString stringWithFormat:@"C%iSolved", ChallengeID];
                    int Solve = (int)[[NSUserDefaults standardUserDefaults] integerForKey:Thing];
                    Solve ++;
                    [[NSUserDefaults standardUserDefaults] setInteger:Solve forKey:Thing];
                        UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Challenge Completed" message:@"Yeah! Ok! You have completed Challenge 16, Good Job!." delegate:nil cancelButtonTitle:@"Phone-Five!" otherButtonTitles: nil];
                        
                        [alert show];
                    }
                    break;
                    
                    
                default:
                    if(ScoreNo == 25){
                        UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"You Won!"
                                                                        message:@"Yeah, you won, big deal!"
                                                                       delegate:self
                                                              cancelButtonTitle:@"Dismiss"
                                                              otherButtonTitles:@"Again!",nil];
                        [alert show];
                    }
                    break;
            }
        }
        
        _Score.text = [NSString stringWithFormat:@"%i", ScoreNo];
    }
    
    else if ([sender tag] == 30){
        
        if(Grid[2][0] == false){
            Grid[2][0] = true;
            _Green11.hidden = NO;
        }
        else{
            Grid[2][0] = false;
            _Green11.hidden = YES;
        }
        if(Grid[3][0] == false){
            Grid[3][0] = true;
            _Green16.hidden = NO;
        }
        else{
            Grid[3][0] = false;
            _Green16.hidden = YES;
        }
        
        if(Grid[3][1] == false){
            Grid[3][1] = true;
            _Green17.hidden = NO;
        }
        else{
            Grid[3][1] = false;
            _Green17.hidden = YES;
        }
        if(Grid[4][0] == false){
            Grid[4][0] = true;
            _Green21.hidden = NO;
        }
        else{
            Grid[4][0] = false;
            _Green21.hidden = YES;
        }
        
        ScoreNo = 0;
        for(int i=0; i<5; ++i){
            for(int j=0; j<5; ++j){
                if(Grid[i][j])
                    ScoreNo++;
            }
        }
        
        if(ChallengeID == 0){
            if(ScoreNo == 25){
                int Solve5 = (int)[[NSUserDefaults standardUserDefaults] integerForKey:@"5Solved"];
                Solve5++;
                [[NSUserDefaults standardUserDefaults] setInteger:Solve5 forKey:@"5Solved"];
                UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"You Won!"
                                                                message:@"Yeah, you won, big deal!"
                                                               delegate:self
                                                      cancelButtonTitle:@"Dismiss"
                                                      otherButtonTitles:@"Again!",nil];
                [alert show];
            }
        }
        else{
            switch (ChallengeID) {
                case 1:
                    checker = 0;
                    for(int i=0; i<5; ++i){
                        for(int j=0; j<5; ++j){
                            if(Grid[i][j] != C1[i][j])
                                checker ++;
                        }
                    }
                    if(checker == 0){
                    NSString *Thing = [NSString stringWithFormat:@"C%iSolved", ChallengeID];
                    int Solve = (int)[[NSUserDefaults standardUserDefaults] integerForKey:Thing];
                    Solve ++;
                    [[NSUserDefaults standardUserDefaults] setInteger:Solve forKey:Thing];
                        UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Challenge Completed" message:@"Yeah! Ok! You have completed Challenge 1, Good Job!." delegate:nil cancelButtonTitle:@"Phone-Five!" otherButtonTitles: nil];
                        
                        [alert show];
                    }
                    break;
                    
                case 2:
                    checker = 0;
                    for(int i=0; i<5; ++i){
                        for(int j=0; j<5; ++j){
                            if(Grid[i][j] != C2[i][j])
                                checker ++;
                        }
                    }
                    if(checker == 0){
                    NSString *Thing = [NSString stringWithFormat:@"C%iSolved", ChallengeID];
                    int Solve = (int)[[NSUserDefaults standardUserDefaults] integerForKey:Thing];
                    Solve ++;
                    [[NSUserDefaults standardUserDefaults] setInteger:Solve forKey:Thing];
                        UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Challenge Completed" message:@"Yeah! Ok! You have completed Challenge 2, Good Job!." delegate:nil cancelButtonTitle:@"Phone-Five!" otherButtonTitles: nil];
                        
                        [alert show];
                    }
                    break;
                    
                case 3:
                    checker = 0;
                    for(int i=0; i<5; ++i){
                        for(int j=0; j<5; ++j){
                            if(Grid[i][j] != C3[i][j])
                                checker ++;
                        }
                    }
                    if(checker == 0){
                    NSString *Thing = [NSString stringWithFormat:@"C%iSolved", ChallengeID];
                    int Solve = (int)[[NSUserDefaults standardUserDefaults] integerForKey:Thing];
                    Solve ++;
                    [[NSUserDefaults standardUserDefaults] setInteger:Solve forKey:Thing];
                        UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Challenge Completed" message:@"Yeah! Ok! You have completed Challenge 3, Good Job!." delegate:nil cancelButtonTitle:@"Phone-Five!" otherButtonTitles: nil];
                        
                        [alert show];
                    }
                    break;
                    
                case 4:
                    checker = 0;
                    for(int i=0; i<5; ++i){
                        for(int j=0; j<5; ++j){
                            if(Grid[i][j] != C4[i][j])
                                checker ++;
                        }
                    }
                    if(checker == 0){
                    NSString *Thing = [NSString stringWithFormat:@"C%iSolved", ChallengeID];
                    int Solve = (int)[[NSUserDefaults standardUserDefaults] integerForKey:Thing];
                    Solve ++;
                    [[NSUserDefaults standardUserDefaults] setInteger:Solve forKey:Thing];
                        UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Challenge Completed" message:@"Yeah! Ok! You have completed Challenge 4, Good Job!." delegate:nil cancelButtonTitle:@"Phone-Five!" otherButtonTitles: nil];
                        
                        [alert show];
                    }
                    break;
                    
                case 5:
                    checker = 0;
                    for(int i=0; i<5; ++i){
                        for(int j=0; j<5; ++j){
                            if(Grid[i][j] != C5[i][j])
                                checker ++;
                        }
                    }
                    if(checker == 0){
                    NSString *Thing = [NSString stringWithFormat:@"C%iSolved", ChallengeID];
                    int Solve = (int)[[NSUserDefaults standardUserDefaults] integerForKey:Thing];
                    Solve ++;
                    [[NSUserDefaults standardUserDefaults] setInteger:Solve forKey:Thing];
                        UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Challenge Completed" message:@"Yeah! Ok! You have completed Challenge 5, Good Job!." delegate:nil cancelButtonTitle:@"Phone-Five!" otherButtonTitles: nil];
                        
                        [alert show];
                    }
                    break;
                    
                case 6:
                    checker = 0;
                    for(int i=0; i<5; ++i){
                        for(int j=0; j<5; ++j){
                            if(Grid[i][j] != C6[i][j])
                                checker ++;
                        }
                    }
                    if(checker == 0){
                    NSString *Thing = [NSString stringWithFormat:@"C%iSolved", ChallengeID];
                    int Solve = (int)[[NSUserDefaults standardUserDefaults] integerForKey:Thing];
                    Solve ++;
                    [[NSUserDefaults standardUserDefaults] setInteger:Solve forKey:Thing];
                        UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Challenge Completed" message:@"Yeah! Ok! You have completed Challenge 6, Good Job!." delegate:nil cancelButtonTitle:@"Phone-Five!" otherButtonTitles: nil];
                        
                        [alert show];
                    }
                    break;
                    
                case 7:
                    checker = 0;
                    for(int i=0; i<5; ++i){
                        for(int j=0; j<5; ++j){
                            if(Grid[i][j] != C7[i][j])
                                checker ++;
                        }
                    }
                    if(checker == 0){
                    NSString *Thing = [NSString stringWithFormat:@"C%iSolved", ChallengeID];
                    int Solve = (int)[[NSUserDefaults standardUserDefaults] integerForKey:Thing];
                    Solve ++;
                    [[NSUserDefaults standardUserDefaults] setInteger:Solve forKey:Thing];
                        UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Challenge Completed" message:@"Yeah! Ok! You have completed Challenge 7, Good Job!." delegate:nil cancelButtonTitle:@"Phone-Five!" otherButtonTitles: nil];
                        
                        [alert show];
                    }
                    break;
                    
                case 8:
                    checker = 0;
                    for(int i=0; i<5; ++i){
                        for(int j=0; j<5; ++j){
                            if(Grid[i][j] != C8[i][j])
                                checker ++;
                        }
                    }
                    if(checker == 0){
                    NSString *Thing = [NSString stringWithFormat:@"C%iSolved", ChallengeID];
                    int Solve = (int)[[NSUserDefaults standardUserDefaults] integerForKey:Thing];
                    Solve ++;
                    [[NSUserDefaults standardUserDefaults] setInteger:Solve forKey:Thing];
                        UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Challenge Completed" message:@"Yeah! Ok! You have completed Challenge 8, Good Job!." delegate:nil cancelButtonTitle:@"Phone-Five!" otherButtonTitles: nil];
                        
                        [alert show];
                    }
                    break;
                    
                case 9:
                    checker = 0;
                    for(int i=0; i<5; ++i){
                        for(int j=0; j<5; ++j){
                            if(Grid[i][j] != C9[i][j])
                                checker ++;
                        }
                    }
                    if(checker == 0){
                    NSString *Thing = [NSString stringWithFormat:@"C%iSolved", ChallengeID];
                    int Solve = (int)[[NSUserDefaults standardUserDefaults] integerForKey:Thing];
                    Solve ++;
                    [[NSUserDefaults standardUserDefaults] setInteger:Solve forKey:Thing];
                        UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Challenge Completed" message:@"Yeah! Ok! You have completed Challenge 9, Good Job!." delegate:nil cancelButtonTitle:@"Phone-Five!" otherButtonTitles: nil];
                        
                        [alert show];
                    }
                    break;
                    
                case 10:
                    checker = 0;
                    for(int i=0; i<5; ++i){
                        for(int j=0; j<5; ++j){
                            if(Grid[i][j] != C10[i][j])
                                checker ++;
                        }
                    }
                    if(checker == 0){
                    NSString *Thing = [NSString stringWithFormat:@"C%iSolved", ChallengeID];
                    int Solve = (int)[[NSUserDefaults standardUserDefaults] integerForKey:Thing];
                    Solve ++;
                    [[NSUserDefaults standardUserDefaults] setInteger:Solve forKey:Thing];
                        UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Challenge Completed" message:@"Yeah! Ok! You have completed Challenge 10, Good Job!." delegate:nil cancelButtonTitle:@"Phone-Five!" otherButtonTitles: nil];
                        
                        [alert show];
                    }
                    break;
                    
                case 11:
                    checker = 0;
                    for(int i=0; i<5; ++i){
                        for(int j=0; j<5; ++j){
                            if(Grid[i][j] != C11[i][j])
                                checker ++;
                        }
                    }
                    if(checker == 0){
                    NSString *Thing = [NSString stringWithFormat:@"C%iSolved", ChallengeID];
                    int Solve = (int)[[NSUserDefaults standardUserDefaults] integerForKey:Thing];
                    Solve ++;
                    [[NSUserDefaults standardUserDefaults] setInteger:Solve forKey:Thing];
                        UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Challenge Completed" message:@"Yeah! Ok! You have completed Challenge 11, Good Job!." delegate:nil cancelButtonTitle:@"Phone-Five!" otherButtonTitles: nil];
                        
                        [alert show];
                    }
                    break;
                    
                case 12:
                    checker = 0;
                    for(int i=0; i<5; ++i){
                        for(int j=0; j<5; ++j){
                            if(Grid[i][j] != C12[i][j])
                                checker ++;
                        }
                    }
                    if(checker == 0){
                    NSString *Thing = [NSString stringWithFormat:@"C%iSolved", ChallengeID];
                    int Solve = (int)[[NSUserDefaults standardUserDefaults] integerForKey:Thing];
                    Solve ++;
                    [[NSUserDefaults standardUserDefaults] setInteger:Solve forKey:Thing];
                        UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Challenge Completed" message:@"Yeah! Ok! You have completed Challenge 12, Good Job!." delegate:nil cancelButtonTitle:@"Phone-Five!" otherButtonTitles: nil];
                        
                        [alert show];
                    }
                    break;
                    
                case 13:
                    checker = 0;
                    for(int i=0; i<5; ++i){
                        for(int j=0; j<5; ++j){
                            if(Grid[i][j] != C13[i][j])
                                checker ++;
                        }
                    }
                    if(checker == 0){
                    NSString *Thing = [NSString stringWithFormat:@"C%iSolved", ChallengeID];
                    int Solve = (int)[[NSUserDefaults standardUserDefaults] integerForKey:Thing];
                    Solve ++;
                    [[NSUserDefaults standardUserDefaults] setInteger:Solve forKey:Thing];
                        UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Challenge Completed" message:@"Yeah! Ok! You have completed Challenge 13, Good Job!." delegate:nil cancelButtonTitle:@"Phone-Five!" otherButtonTitles: nil];
                        
                        [alert show];
                    }
                    break;
                    
                case 14:
                    checker = 0;
                    for(int i=0; i<5; ++i){
                        for(int j=0; j<5; ++j){
                            if(Grid[i][j] != C14[i][j])
                                checker ++;
                        }
                    }
                    if(checker == 0){
                    NSString *Thing = [NSString stringWithFormat:@"C%iSolved", ChallengeID];
                    int Solve = (int)[[NSUserDefaults standardUserDefaults] integerForKey:Thing];
                    Solve ++;
                    [[NSUserDefaults standardUserDefaults] setInteger:Solve forKey:Thing];
                        UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Challenge Completed" message:@"Yeah! Ok! You have completed Challenge 14, Good Job!." delegate:nil cancelButtonTitle:@"Phone-Five!" otherButtonTitles: nil];
                        
                        [alert show];
                    }
                    break;
                    
                case 15:
                    checker = 0;
                    for(int i=0; i<5; ++i){
                        for(int j=0; j<5; ++j){
                            if(Grid[i][j] != C15[i][j])
                                checker ++;
                        }
                    }
                    if(checker == 0){
                    NSString *Thing = [NSString stringWithFormat:@"C%iSolved", ChallengeID];
                    int Solve = (int)[[NSUserDefaults standardUserDefaults] integerForKey:Thing];
                    Solve ++;
                    [[NSUserDefaults standardUserDefaults] setInteger:Solve forKey:Thing];
                        UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Challenge Completed" message:@"Yeah! Ok! You have completed Challenge 15, Good Job!." delegate:nil cancelButtonTitle:@"Phone-Five!" otherButtonTitles: nil];
                        
                        [alert show];
                    }
                    break;
                    
                case 16:
                    checker = 0;
                    for(int i=0; i<5; ++i){
                        for(int j=0; j<5; ++j){
                            if(Grid[i][j] != C16[i][j])
                                checker ++;
                        }
                    }
                    if(checker == 0){
                    NSString *Thing = [NSString stringWithFormat:@"C%iSolved", ChallengeID];
                    int Solve = (int)[[NSUserDefaults standardUserDefaults] integerForKey:Thing];
                    Solve ++;
                    [[NSUserDefaults standardUserDefaults] setInteger:Solve forKey:Thing];
                        UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Challenge Completed" message:@"Yeah! Ok! You have completed Challenge 16, Good Job!." delegate:nil cancelButtonTitle:@"Phone-Five!" otherButtonTitles: nil];
                        
                        [alert show];
                    }
                    break;
                    
                    
                default:
                    if(ScoreNo == 25){
                        UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"You Won!"
                                                                        message:@"Yeah, you won, big deal!"
                                                                       delegate:self
                                                              cancelButtonTitle:@"Dismiss"
                                                              otherButtonTitles:@"Again!",nil];
                        [alert show];
                    }
                    break;
            }
        }
        
        _Score.text = [NSString stringWithFormat:@"%i", ScoreNo];
    }
    
    
    
}

- (IBAction)Top:(id)sender {
    
    if([sender tag] == 1){
        
        if(Grid[0][0] == false){
            Grid[0][0] = true;
            _Green1.hidden = NO;
        }
        else{
            Grid[0][0] = false;
            _Green1.hidden = YES;
        }
        
        if(Grid[0][1] == false){
            Grid[0][1] = true;
            _Green2.hidden = NO;
        }
        else{
            Grid[0][1] = false;
            _Green2.hidden = YES;
        }
        
        if(Grid[0][2] == false){
            Grid[0][2] = true;
            _Green3.hidden = NO;
        }
        else{
            Grid[0][2] = false;
            _Green3.hidden = YES;
        }
        if(Grid[1][1] == false){
            Grid[1][1] = true;
            _Green7.hidden = NO;
        }
        else{
            Grid[1][1] = false;
            _Green7.hidden = YES;
        }
        
        ScoreNo = 0;
        for(int i=0; i<5; ++i){
            for(int j=0; j<5; ++j){
                if(Grid[i][j])
                    ScoreNo++;
            }
        }
        
        if(ChallengeID == 0){
            if(ScoreNo == 25){
                int Solve5 = (int)[[NSUserDefaults standardUserDefaults] integerForKey:@"5Solved"];
                Solve5++;
                [[NSUserDefaults standardUserDefaults] setInteger:Solve5 forKey:@"5Solved"];
                UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"You Won!"
                                                                message:@"Yeah, you won, big deal!"
                                                               delegate:self
                                                      cancelButtonTitle:@"Dismiss"
                                                      otherButtonTitles:@"Again!",nil];
                [alert show];
            }
        }
        else{
            switch (ChallengeID) {
                case 1:
                    checker = 0;
                    for(int i=0; i<5; ++i){
                        for(int j=0; j<5; ++j){
                            if(Grid[i][j] != C1[i][j])
                                checker ++;
                        }
                    }
                    if(checker == 0){
                    NSString *Thing = [NSString stringWithFormat:@"C%iSolved", ChallengeID];
                    int Solve = (int)[[NSUserDefaults standardUserDefaults] integerForKey:Thing];
                    Solve ++;
                    [[NSUserDefaults standardUserDefaults] setInteger:Solve forKey:Thing];
                        UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Challenge Completed" message:@"Yeah! Ok! You have completed Challenge 1, Good Job!." delegate:nil cancelButtonTitle:@"Phone-Five!" otherButtonTitles: nil];
                        
                        [alert show];
                    }
                    break;
                    
                case 2:
                    checker = 0;
                    for(int i=0; i<5; ++i){
                        for(int j=0; j<5; ++j){
                            if(Grid[i][j] != C2[i][j])
                                checker ++;
                        }
                    }
                    if(checker == 0){
                    NSString *Thing = [NSString stringWithFormat:@"C%iSolved", ChallengeID];
                    int Solve = (int)[[NSUserDefaults standardUserDefaults] integerForKey:Thing];
                    Solve ++;
                    [[NSUserDefaults standardUserDefaults] setInteger:Solve forKey:Thing];
                        UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Challenge Completed" message:@"Yeah! Ok! You have completed Challenge 2, Good Job!." delegate:nil cancelButtonTitle:@"Phone-Five!" otherButtonTitles: nil];
                        
                        [alert show];
                    }
                    break;
                    
                case 3:
                    checker = 0;
                    for(int i=0; i<5; ++i){
                        for(int j=0; j<5; ++j){
                            if(Grid[i][j] != C3[i][j])
                                checker ++;
                        }
                    }
                    if(checker == 0){
                    NSString *Thing = [NSString stringWithFormat:@"C%iSolved", ChallengeID];
                    int Solve = (int)[[NSUserDefaults standardUserDefaults] integerForKey:Thing];
                    Solve ++;
                    [[NSUserDefaults standardUserDefaults] setInteger:Solve forKey:Thing];
                        UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Challenge Completed" message:@"Yeah! Ok! You have completed Challenge 3, Good Job!." delegate:nil cancelButtonTitle:@"Phone-Five!" otherButtonTitles: nil];
                        
                        [alert show];
                    }
                    break;
                    
                case 4:
                    checker = 0;
                    for(int i=0; i<5; ++i){
                        for(int j=0; j<5; ++j){
                            if(Grid[i][j] != C4[i][j])
                                checker ++;
                        }
                    }
                    if(checker == 0){
                    NSString *Thing = [NSString stringWithFormat:@"C%iSolved", ChallengeID];
                    int Solve = (int)[[NSUserDefaults standardUserDefaults] integerForKey:Thing];
                    Solve ++;
                    [[NSUserDefaults standardUserDefaults] setInteger:Solve forKey:Thing];
                        UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Challenge Completed" message:@"Yeah! Ok! You have completed Challenge 4, Good Job!." delegate:nil cancelButtonTitle:@"Phone-Five!" otherButtonTitles: nil];
                        
                        [alert show];
                    }
                    break;
                    
                case 5:
                    checker = 0;
                    for(int i=0; i<5; ++i){
                        for(int j=0; j<5; ++j){
                            if(Grid[i][j] != C5[i][j])
                                checker ++;
                        }
                    }
                    if(checker == 0){
                    NSString *Thing = [NSString stringWithFormat:@"C%iSolved", ChallengeID];
                    int Solve = (int)[[NSUserDefaults standardUserDefaults] integerForKey:Thing];
                    Solve ++;
                    [[NSUserDefaults standardUserDefaults] setInteger:Solve forKey:Thing];
                        UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Challenge Completed" message:@"Yeah! Ok! You have completed Challenge 5, Good Job!." delegate:nil cancelButtonTitle:@"Phone-Five!" otherButtonTitles: nil];
                        
                        [alert show];
                    }
                    break;
                    
                case 6:
                    checker = 0;
                    for(int i=0; i<5; ++i){
                        for(int j=0; j<5; ++j){
                            if(Grid[i][j] != C6[i][j])
                                checker ++;
                        }
                    }
                    if(checker == 0){
                    NSString *Thing = [NSString stringWithFormat:@"C%iSolved", ChallengeID];
                    int Solve = (int)[[NSUserDefaults standardUserDefaults] integerForKey:Thing];
                    Solve ++;
                    [[NSUserDefaults standardUserDefaults] setInteger:Solve forKey:Thing];
                        UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Challenge Completed" message:@"Yeah! Ok! You have completed Challenge 6, Good Job!." delegate:nil cancelButtonTitle:@"Phone-Five!" otherButtonTitles: nil];
                        
                        [alert show];
                    }
                    break;
                    
                case 7:
                    checker = 0;
                    for(int i=0; i<5; ++i){
                        for(int j=0; j<5; ++j){
                            if(Grid[i][j] != C7[i][j])
                                checker ++;
                        }
                    }
                    if(checker == 0){
                    NSString *Thing = [NSString stringWithFormat:@"C%iSolved", ChallengeID];
                    int Solve = (int)[[NSUserDefaults standardUserDefaults] integerForKey:Thing];
                    Solve ++;
                    [[NSUserDefaults standardUserDefaults] setInteger:Solve forKey:Thing];
                        UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Challenge Completed" message:@"Yeah! Ok! You have completed Challenge 7, Good Job!." delegate:nil cancelButtonTitle:@"Phone-Five!" otherButtonTitles: nil];
                        
                        [alert show];
                    }
                    break;
                    
                case 8:
                    checker = 0;
                    for(int i=0; i<5; ++i){
                        for(int j=0; j<5; ++j){
                            if(Grid[i][j] != C8[i][j])
                                checker ++;
                        }
                    }
                    if(checker == 0){
                    NSString *Thing = [NSString stringWithFormat:@"C%iSolved", ChallengeID];
                    int Solve = (int)[[NSUserDefaults standardUserDefaults] integerForKey:Thing];
                    Solve ++;
                    [[NSUserDefaults standardUserDefaults] setInteger:Solve forKey:Thing];
                        UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Challenge Completed" message:@"Yeah! Ok! You have completed Challenge 8, Good Job!." delegate:nil cancelButtonTitle:@"Phone-Five!" otherButtonTitles: nil];
                        
                        [alert show];
                    }
                    break;
                    
                case 9:
                    checker = 0;
                    for(int i=0; i<5; ++i){
                        for(int j=0; j<5; ++j){
                            if(Grid[i][j] != C9[i][j])
                                checker ++;
                        }
                    }
                    if(checker == 0){
                    NSString *Thing = [NSString stringWithFormat:@"C%iSolved", ChallengeID];
                    int Solve = (int)[[NSUserDefaults standardUserDefaults] integerForKey:Thing];
                    Solve ++;
                    [[NSUserDefaults standardUserDefaults] setInteger:Solve forKey:Thing];
                        UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Challenge Completed" message:@"Yeah! Ok! You have completed Challenge 9, Good Job!." delegate:nil cancelButtonTitle:@"Phone-Five!" otherButtonTitles: nil];
                        
                        [alert show];
                    }
                    break;
                    
                case 10:
                    checker = 0;
                    for(int i=0; i<5; ++i){
                        for(int j=0; j<5; ++j){
                            if(Grid[i][j] != C10[i][j])
                                checker ++;
                        }
                    }
                    if(checker == 0){
                    NSString *Thing = [NSString stringWithFormat:@"C%iSolved", ChallengeID];
                    int Solve = (int)[[NSUserDefaults standardUserDefaults] integerForKey:Thing];
                    Solve ++;
                    [[NSUserDefaults standardUserDefaults] setInteger:Solve forKey:Thing];
                        UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Challenge Completed" message:@"Yeah! Ok! You have completed Challenge 10, Good Job!." delegate:nil cancelButtonTitle:@"Phone-Five!" otherButtonTitles: nil];
                        
                        [alert show];
                    }
                    break;
                    
                case 11:
                    checker = 0;
                    for(int i=0; i<5; ++i){
                        for(int j=0; j<5; ++j){
                            if(Grid[i][j] != C11[i][j])
                                checker ++;
                        }
                    }
                    if(checker == 0){
                    NSString *Thing = [NSString stringWithFormat:@"C%iSolved", ChallengeID];
                    int Solve = (int)[[NSUserDefaults standardUserDefaults] integerForKey:Thing];
                    Solve ++;
                    [[NSUserDefaults standardUserDefaults] setInteger:Solve forKey:Thing];
                        UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Challenge Completed" message:@"Yeah! Ok! You have completed Challenge 11, Good Job!." delegate:nil cancelButtonTitle:@"Phone-Five!" otherButtonTitles: nil];
                        
                        [alert show];
                    }
                    break;
                    
                case 12:
                    checker = 0;
                    for(int i=0; i<5; ++i){
                        for(int j=0; j<5; ++j){
                            if(Grid[i][j] != C12[i][j])
                                checker ++;
                        }
                    }
                    if(checker == 0){
                    NSString *Thing = [NSString stringWithFormat:@"C%iSolved", ChallengeID];
                    int Solve = (int)[[NSUserDefaults standardUserDefaults] integerForKey:Thing];
                    Solve ++;
                    [[NSUserDefaults standardUserDefaults] setInteger:Solve forKey:Thing];
                        UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Challenge Completed" message:@"Yeah! Ok! You have completed Challenge 12, Good Job!." delegate:nil cancelButtonTitle:@"Phone-Five!" otherButtonTitles: nil];
                        
                        [alert show];
                    }
                    break;
                    
                case 13:
                    checker = 0;
                    for(int i=0; i<5; ++i){
                        for(int j=0; j<5; ++j){
                            if(Grid[i][j] != C13[i][j])
                                checker ++;
                        }
                    }
                    if(checker == 0){
                    NSString *Thing = [NSString stringWithFormat:@"C%iSolved", ChallengeID];
                    int Solve = (int)[[NSUserDefaults standardUserDefaults] integerForKey:Thing];
                    Solve ++;
                    [[NSUserDefaults standardUserDefaults] setInteger:Solve forKey:Thing];
                        UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Challenge Completed" message:@"Yeah! Ok! You have completed Challenge 13, Good Job!." delegate:nil cancelButtonTitle:@"Phone-Five!" otherButtonTitles: nil];
                        
                        [alert show];
                    }
                    break;
                    
                case 14:
                    checker = 0;
                    for(int i=0; i<5; ++i){
                        for(int j=0; j<5; ++j){
                            if(Grid[i][j] != C14[i][j])
                                checker ++;
                        }
                    }
                    if(checker == 0){
                    NSString *Thing = [NSString stringWithFormat:@"C%iSolved", ChallengeID];
                    int Solve = (int)[[NSUserDefaults standardUserDefaults] integerForKey:Thing];
                    Solve ++;
                    [[NSUserDefaults standardUserDefaults] setInteger:Solve forKey:Thing];
                        UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Challenge Completed" message:@"Yeah! Ok! You have completed Challenge 14, Good Job!." delegate:nil cancelButtonTitle:@"Phone-Five!" otherButtonTitles: nil];
                        
                        [alert show];
                    }
                    break;
                    
                case 15:
                    checker = 0;
                    for(int i=0; i<5; ++i){
                        for(int j=0; j<5; ++j){
                            if(Grid[i][j] != C15[i][j])
                                checker ++;
                        }
                    }
                    if(checker == 0){
                    NSString *Thing = [NSString stringWithFormat:@"C%iSolved", ChallengeID];
                    int Solve = (int)[[NSUserDefaults standardUserDefaults] integerForKey:Thing];
                    Solve ++;
                    [[NSUserDefaults standardUserDefaults] setInteger:Solve forKey:Thing];
                        UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Challenge Completed" message:@"Yeah! Ok! You have completed Challenge 15, Good Job!." delegate:nil cancelButtonTitle:@"Phone-Five!" otherButtonTitles: nil];
                        
                        [alert show];
                    }
                    break;
                    
                case 16:
                    checker = 0;
                    for(int i=0; i<5; ++i){
                        for(int j=0; j<5; ++j){
                            if(Grid[i][j] != C16[i][j])
                                checker ++;
                        }
                    }
                    if(checker == 0){
                    NSString *Thing = [NSString stringWithFormat:@"C%iSolved", ChallengeID];
                    int Solve = (int)[[NSUserDefaults standardUserDefaults] integerForKey:Thing];
                    Solve ++;
                    [[NSUserDefaults standardUserDefaults] setInteger:Solve forKey:Thing];
                        UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Challenge Completed" message:@"Yeah! Ok! You have completed Challenge 16, Good Job!." delegate:nil cancelButtonTitle:@"Phone-Five!" otherButtonTitles: nil];
                        
                        [alert show];
                    }
                    break;
                    
                    
                default:
                    if(ScoreNo == 25){
                        UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"You Won!"
                                                                        message:@"Yeah, you won, big deal!"
                                                                       delegate:self
                                                              cancelButtonTitle:@"Dismiss"
                                                              otherButtonTitles:@"Again!",nil];
                        [alert show];
                    }
                    break;
            }
        }
        
        _Score.text = [NSString stringWithFormat:@"%i", ScoreNo];
    }
    
    else if([sender tag] == 2){
        
        if(Grid[0][1] == false){
            Grid[0][1] = true;
            _Green2.hidden = NO;
        }
        else{
            Grid[0][1] = false;
            _Green2.hidden = YES;
        }
        
        if(Grid[0][2] == false){
            Grid[0][2] = true;
            _Green3.hidden = NO;
        }
        else{
            Grid[0][2] = false;
            _Green3.hidden = YES;
        }
        
        if(Grid[0][3] == false){
            Grid[0][3] = true;
            _Green4.hidden = NO;
        }
        else{
            Grid[0][3] = false;
            _Green4.hidden = YES;
        }
        if(Grid[1][2] == false){
            Grid[1][2] = true;
            _Green8.hidden = NO;
        }
        else{
            Grid[1][2] = false;
            _Green8.hidden = YES;
        }
        
        ScoreNo = 0;
        for(int i=0; i<5; ++i){
            for(int j=0; j<5; ++j){
                if(Grid[i][j])
                    ScoreNo++;
            }
        }
        
        if(ChallengeID == 0){
            if(ScoreNo == 25){
                int Solve5 = (int)[[NSUserDefaults standardUserDefaults] integerForKey:@"5Solved"];
                Solve5++;
                [[NSUserDefaults standardUserDefaults] setInteger:Solve5 forKey:@"5Solved"];
                UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"You Won!"
                                                                message:@"Yeah, you won, big deal!"
                                                               delegate:self
                                                      cancelButtonTitle:@"Dismiss"
                                                      otherButtonTitles:@"Again!",nil];
                [alert show];
            }
        }
        else{
            switch (ChallengeID) {
                case 1:
                    checker = 0;
                    for(int i=0; i<5; ++i){
                        for(int j=0; j<5; ++j){
                            if(Grid[i][j] != C1[i][j])
                                checker ++;
                        }
                    }
                    if(checker == 0){
                    NSString *Thing = [NSString stringWithFormat:@"C%iSolved", ChallengeID];
                    int Solve = (int)[[NSUserDefaults standardUserDefaults] integerForKey:Thing];
                    Solve ++;
                    [[NSUserDefaults standardUserDefaults] setInteger:Solve forKey:Thing];
                        UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Challenge Completed" message:@"Yeah! Ok! You have completed Challenge 1, Good Job!." delegate:nil cancelButtonTitle:@"Phone-Five!" otherButtonTitles: nil];
                        
                        [alert show];
                    }
                    break;
                    
                case 2:
                    checker = 0;
                    for(int i=0; i<5; ++i){
                        for(int j=0; j<5; ++j){
                            if(Grid[i][j] != C2[i][j])
                                checker ++;
                        }
                    }
                    if(checker == 0){
                    NSString *Thing = [NSString stringWithFormat:@"C%iSolved", ChallengeID];
                    int Solve = (int)[[NSUserDefaults standardUserDefaults] integerForKey:Thing];
                    Solve ++;
                    [[NSUserDefaults standardUserDefaults] setInteger:Solve forKey:Thing];
                        UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Challenge Completed" message:@"Yeah! Ok! You have completed Challenge 2, Good Job!." delegate:nil cancelButtonTitle:@"Phone-Five!" otherButtonTitles: nil];
                        
                        [alert show];
                    }
                    break;
                    
                case 3:
                    checker = 0;
                    for(int i=0; i<5; ++i){
                        for(int j=0; j<5; ++j){
                            if(Grid[i][j] != C3[i][j])
                                checker ++;
                        }
                    }
                    if(checker == 0){
                    NSString *Thing = [NSString stringWithFormat:@"C%iSolved", ChallengeID];
                    int Solve = (int)[[NSUserDefaults standardUserDefaults] integerForKey:Thing];
                    Solve ++;
                    [[NSUserDefaults standardUserDefaults] setInteger:Solve forKey:Thing];
                        UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Challenge Completed" message:@"Yeah! Ok! You have completed Challenge 3, Good Job!." delegate:nil cancelButtonTitle:@"Phone-Five!" otherButtonTitles: nil];
                        
                        [alert show];
                    }
                    break;
                    
                case 4:
                    checker = 0;
                    for(int i=0; i<5; ++i){
                        for(int j=0; j<5; ++j){
                            if(Grid[i][j] != C4[i][j])
                                checker ++;
                        }
                    }
                    if(checker == 0){
                    NSString *Thing = [NSString stringWithFormat:@"C%iSolved", ChallengeID];
                    int Solve = (int)[[NSUserDefaults standardUserDefaults] integerForKey:Thing];
                    Solve ++;
                    [[NSUserDefaults standardUserDefaults] setInteger:Solve forKey:Thing];
                        UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Challenge Completed" message:@"Yeah! Ok! You have completed Challenge 4, Good Job!." delegate:nil cancelButtonTitle:@"Phone-Five!" otherButtonTitles: nil];
                        
                        [alert show];
                    }
                    break;
                    
                case 5:
                    checker = 0;
                    for(int i=0; i<5; ++i){
                        for(int j=0; j<5; ++j){
                            if(Grid[i][j] != C5[i][j])
                                checker ++;
                        }
                    }
                    if(checker == 0){
                    NSString *Thing = [NSString stringWithFormat:@"C%iSolved", ChallengeID];
                    int Solve = (int)[[NSUserDefaults standardUserDefaults] integerForKey:Thing];
                    Solve ++;
                    [[NSUserDefaults standardUserDefaults] setInteger:Solve forKey:Thing];
                        UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Challenge Completed" message:@"Yeah! Ok! You have completed Challenge 5, Good Job!." delegate:nil cancelButtonTitle:@"Phone-Five!" otherButtonTitles: nil];
                        
                        [alert show];
                    }
                    break;
                    
                case 6:
                    checker = 0;
                    for(int i=0; i<5; ++i){
                        for(int j=0; j<5; ++j){
                            if(Grid[i][j] != C6[i][j])
                                checker ++;
                        }
                    }
                    if(checker == 0){
                    NSString *Thing = [NSString stringWithFormat:@"C%iSolved", ChallengeID];
                    int Solve = (int)[[NSUserDefaults standardUserDefaults] integerForKey:Thing];
                    Solve ++;
                    [[NSUserDefaults standardUserDefaults] setInteger:Solve forKey:Thing];
                        UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Challenge Completed" message:@"Yeah! Ok! You have completed Challenge 6, Good Job!." delegate:nil cancelButtonTitle:@"Phone-Five!" otherButtonTitles: nil];
                        
                        [alert show];
                    }
                    break;
                    
                case 7:
                    checker = 0;
                    for(int i=0; i<5; ++i){
                        for(int j=0; j<5; ++j){
                            if(Grid[i][j] != C7[i][j])
                                checker ++;
                        }
                    }
                    if(checker == 0){
                    NSString *Thing = [NSString stringWithFormat:@"C%iSolved", ChallengeID];
                    int Solve = (int)[[NSUserDefaults standardUserDefaults] integerForKey:Thing];
                    Solve ++;
                    [[NSUserDefaults standardUserDefaults] setInteger:Solve forKey:Thing];
                        UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Challenge Completed" message:@"Yeah! Ok! You have completed Challenge 7, Good Job!." delegate:nil cancelButtonTitle:@"Phone-Five!" otherButtonTitles: nil];
                        
                        [alert show];
                    }
                    break;
                    
                case 8:
                    checker = 0;
                    for(int i=0; i<5; ++i){
                        for(int j=0; j<5; ++j){
                            if(Grid[i][j] != C8[i][j])
                                checker ++;
                        }
                    }
                    if(checker == 0){
                    NSString *Thing = [NSString stringWithFormat:@"C%iSolved", ChallengeID];
                    int Solve = (int)[[NSUserDefaults standardUserDefaults] integerForKey:Thing];
                    Solve ++;
                    [[NSUserDefaults standardUserDefaults] setInteger:Solve forKey:Thing];
                        UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Challenge Completed" message:@"Yeah! Ok! You have completed Challenge 8, Good Job!." delegate:nil cancelButtonTitle:@"Phone-Five!" otherButtonTitles: nil];
                        
                        [alert show];
                    }
                    break;
                    
                case 9:
                    checker = 0;
                    for(int i=0; i<5; ++i){
                        for(int j=0; j<5; ++j){
                            if(Grid[i][j] != C9[i][j])
                                checker ++;
                        }
                    }
                    if(checker == 0){
                    NSString *Thing = [NSString stringWithFormat:@"C%iSolved", ChallengeID];
                    int Solve = (int)[[NSUserDefaults standardUserDefaults] integerForKey:Thing];
                    Solve ++;
                    [[NSUserDefaults standardUserDefaults] setInteger:Solve forKey:Thing];
                        UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Challenge Completed" message:@"Yeah! Ok! You have completed Challenge 9, Good Job!." delegate:nil cancelButtonTitle:@"Phone-Five!" otherButtonTitles: nil];
                        
                        [alert show];
                    }
                    break;
                    
                case 10:
                    checker = 0;
                    for(int i=0; i<5; ++i){
                        for(int j=0; j<5; ++j){
                            if(Grid[i][j] != C10[i][j])
                                checker ++;
                        }
                    }
                    if(checker == 0){
                    NSString *Thing = [NSString stringWithFormat:@"C%iSolved", ChallengeID];
                    int Solve = (int)[[NSUserDefaults standardUserDefaults] integerForKey:Thing];
                    Solve ++;
                    [[NSUserDefaults standardUserDefaults] setInteger:Solve forKey:Thing];
                        UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Challenge Completed" message:@"Yeah! Ok! You have completed Challenge 10, Good Job!." delegate:nil cancelButtonTitle:@"Phone-Five!" otherButtonTitles: nil];
                        
                        [alert show];
                    }
                    break;
                    
                case 11:
                    checker = 0;
                    for(int i=0; i<5; ++i){
                        for(int j=0; j<5; ++j){
                            if(Grid[i][j] != C11[i][j])
                                checker ++;
                        }
                    }
                    if(checker == 0){
                    NSString *Thing = [NSString stringWithFormat:@"C%iSolved", ChallengeID];
                    int Solve = (int)[[NSUserDefaults standardUserDefaults] integerForKey:Thing];
                    Solve ++;
                    [[NSUserDefaults standardUserDefaults] setInteger:Solve forKey:Thing];
                        UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Challenge Completed" message:@"Yeah! Ok! You have completed Challenge 11, Good Job!." delegate:nil cancelButtonTitle:@"Phone-Five!" otherButtonTitles: nil];
                        
                        [alert show];
                    }
                    break;
                    
                case 12:
                    checker = 0;
                    for(int i=0; i<5; ++i){
                        for(int j=0; j<5; ++j){
                            if(Grid[i][j] != C12[i][j])
                                checker ++;
                        }
                    }
                    if(checker == 0){
                    NSString *Thing = [NSString stringWithFormat:@"C%iSolved", ChallengeID];
                    int Solve = (int)[[NSUserDefaults standardUserDefaults] integerForKey:Thing];
                    Solve ++;
                    [[NSUserDefaults standardUserDefaults] setInteger:Solve forKey:Thing];
                        UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Challenge Completed" message:@"Yeah! Ok! You have completed Challenge 12, Good Job!." delegate:nil cancelButtonTitle:@"Phone-Five!" otherButtonTitles: nil];
                        
                        [alert show];
                    }
                    break;
                    
                case 13:
                    checker = 0;
                    for(int i=0; i<5; ++i){
                        for(int j=0; j<5; ++j){
                            if(Grid[i][j] != C13[i][j])
                                checker ++;
                        }
                    }
                    if(checker == 0){
                    NSString *Thing = [NSString stringWithFormat:@"C%iSolved", ChallengeID];
                    int Solve = (int)[[NSUserDefaults standardUserDefaults] integerForKey:Thing];
                    Solve ++;
                    [[NSUserDefaults standardUserDefaults] setInteger:Solve forKey:Thing];
                        UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Challenge Completed" message:@"Yeah! Ok! You have completed Challenge 13, Good Job!." delegate:nil cancelButtonTitle:@"Phone-Five!" otherButtonTitles: nil];
                        
                        [alert show];
                    }
                    break;
                    
                case 14:
                    checker = 0;
                    for(int i=0; i<5; ++i){
                        for(int j=0; j<5; ++j){
                            if(Grid[i][j] != C14[i][j])
                                checker ++;
                        }
                    }
                    if(checker == 0){
                    NSString *Thing = [NSString stringWithFormat:@"C%iSolved", ChallengeID];
                    int Solve = (int)[[NSUserDefaults standardUserDefaults] integerForKey:Thing];
                    Solve ++;
                    [[NSUserDefaults standardUserDefaults] setInteger:Solve forKey:Thing];
                        UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Challenge Completed" message:@"Yeah! Ok! You have completed Challenge 14, Good Job!." delegate:nil cancelButtonTitle:@"Phone-Five!" otherButtonTitles: nil];
                        
                        [alert show];
                    }
                    break;
                    
                case 15:
                    checker = 0;
                    for(int i=0; i<5; ++i){
                        for(int j=0; j<5; ++j){
                            if(Grid[i][j] != C15[i][j])
                                checker ++;
                        }
                    }
                    if(checker == 0){
                    NSString *Thing = [NSString stringWithFormat:@"C%iSolved", ChallengeID];
                    int Solve = (int)[[NSUserDefaults standardUserDefaults] integerForKey:Thing];
                    Solve ++;
                    [[NSUserDefaults standardUserDefaults] setInteger:Solve forKey:Thing];
                        UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Challenge Completed" message:@"Yeah! Ok! You have completed Challenge 15, Good Job!." delegate:nil cancelButtonTitle:@"Phone-Five!" otherButtonTitles: nil];
                        
                        [alert show];
                    }
                    break;
                    
                case 16:
                    checker = 0;
                    for(int i=0; i<5; ++i){
                        for(int j=0; j<5; ++j){
                            if(Grid[i][j] != C16[i][j])
                                checker ++;
                        }
                    }
                    if(checker == 0){
                    NSString *Thing = [NSString stringWithFormat:@"C%iSolved", ChallengeID];
                    int Solve = (int)[[NSUserDefaults standardUserDefaults] integerForKey:Thing];
                    Solve ++;
                    [[NSUserDefaults standardUserDefaults] setInteger:Solve forKey:Thing];
                        UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Challenge Completed" message:@"Yeah! Ok! You have completed Challenge 16, Good Job!." delegate:nil cancelButtonTitle:@"Phone-Five!" otherButtonTitles: nil];
                        
                        [alert show];
                    }
                    break;
                    
                    
                default:
                    if(ScoreNo == 25){
                        UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"You Won!"
                                                                        message:@"Yeah, you won, big deal!"
                                                                       delegate:self
                                                              cancelButtonTitle:@"Dismiss"
                                                              otherButtonTitles:@"Again!",nil];
                        [alert show];
                    }
                    break;
            }
        }
        
        _Score.text = [NSString stringWithFormat:@"%i", ScoreNo];
    }
    
    else if ([sender tag] == 3){
        
        if(Grid[0][2] == false){
            Grid[0][2] = true;
            _Green3.hidden = NO;
        }
        else{
            Grid[0][2] = false;
            _Green3.hidden = YES;
        }
        
        if(Grid[0][3] == false){
            Grid[0][3] = true;
            _Green4.hidden = NO;
        }
        else{
            Grid[0][3] = false;
            _Green4.hidden = YES;
        }
        
        if(Grid[0][4] == false){
            Grid[0][4] = true;
            _Green5.hidden = NO;
        }
        else{
            Grid[0][4] = false;
            _Green5.hidden = YES;
        }
        if(Grid[1][3] == false){
            Grid[1][3] = true;
            _Green9.hidden = NO;
        }
        else{
            Grid[1][3] = false;
            _Green9.hidden = YES;
        }
        
        ScoreNo = 0;
        for(int i=0; i<5; ++i){
            for(int j=0; j<5; ++j){
                if(Grid[i][j])
                    ScoreNo++;
            }
        }
        
        if(ChallengeID == 0){
            if(ScoreNo == 25){
                int Solve5 = (int)[[NSUserDefaults standardUserDefaults] integerForKey:@"5Solved"];
                Solve5++;
                [[NSUserDefaults standardUserDefaults] setInteger:Solve5 forKey:@"5Solved"];
                UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"You Won!"
                                                                message:@"Yeah, you won, big deal!"
                                                               delegate:self
                                                      cancelButtonTitle:@"Dismiss"
                                                      otherButtonTitles:@"Again!",nil];
                [alert show];
            }
        }
        else{
            switch (ChallengeID) {
                case 1:
                    checker = 0;
                    for(int i=0; i<5; ++i){
                        for(int j=0; j<5; ++j){
                            if(Grid[i][j] != C1[i][j])
                                checker ++;
                        }
                    }
                    if(checker == 0){
                    NSString *Thing = [NSString stringWithFormat:@"C%iSolved", ChallengeID];
                    int Solve = (int)[[NSUserDefaults standardUserDefaults] integerForKey:Thing];
                    Solve ++;
                    [[NSUserDefaults standardUserDefaults] setInteger:Solve forKey:Thing];
                        UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Challenge Completed" message:@"Yeah! Ok! You have completed Challenge 1, Good Job!." delegate:nil cancelButtonTitle:@"Phone-Five!" otherButtonTitles: nil];
                        
                        [alert show];
                    }
                    break;
                    
                case 2:
                    checker = 0;
                    for(int i=0; i<5; ++i){
                        for(int j=0; j<5; ++j){
                            if(Grid[i][j] != C2[i][j])
                                checker ++;
                        }
                    }
                    if(checker == 0){
                    NSString *Thing = [NSString stringWithFormat:@"C%iSolved", ChallengeID];
                    int Solve = (int)[[NSUserDefaults standardUserDefaults] integerForKey:Thing];
                    Solve ++;
                    [[NSUserDefaults standardUserDefaults] setInteger:Solve forKey:Thing];
                        UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Challenge Completed" message:@"Yeah! Ok! You have completed Challenge 2, Good Job!." delegate:nil cancelButtonTitle:@"Phone-Five!" otherButtonTitles: nil];
                        
                        [alert show];
                    }
                    break;
                    
                case 3:
                    checker = 0;
                    for(int i=0; i<5; ++i){
                        for(int j=0; j<5; ++j){
                            if(Grid[i][j] != C3[i][j])
                                checker ++;
                        }
                    }
                    if(checker == 0){
                    NSString *Thing = [NSString stringWithFormat:@"C%iSolved", ChallengeID];
                    int Solve = (int)[[NSUserDefaults standardUserDefaults] integerForKey:Thing];
                    Solve ++;
                    [[NSUserDefaults standardUserDefaults] setInteger:Solve forKey:Thing];
                        UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Challenge Completed" message:@"Yeah! Ok! You have completed Challenge 3, Good Job!." delegate:nil cancelButtonTitle:@"Phone-Five!" otherButtonTitles: nil];
                        
                        [alert show];
                    }
                    break;
                    
                case 4:
                    checker = 0;
                    for(int i=0; i<5; ++i){
                        for(int j=0; j<5; ++j){
                            if(Grid[i][j] != C4[i][j])
                                checker ++;
                        }
                    }
                    if(checker == 0){
                    NSString *Thing = [NSString stringWithFormat:@"C%iSolved", ChallengeID];
                    int Solve = (int)[[NSUserDefaults standardUserDefaults] integerForKey:Thing];
                    Solve ++;
                    [[NSUserDefaults standardUserDefaults] setInteger:Solve forKey:Thing];
                        UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Challenge Completed" message:@"Yeah! Ok! You have completed Challenge 4, Good Job!." delegate:nil cancelButtonTitle:@"Phone-Five!" otherButtonTitles: nil];
                        
                        [alert show];
                    }
                    break;
                    
                case 5:
                    checker = 0;
                    for(int i=0; i<5; ++i){
                        for(int j=0; j<5; ++j){
                            if(Grid[i][j] != C5[i][j])
                                checker ++;
                        }
                    }
                    if(checker == 0){
                    NSString *Thing = [NSString stringWithFormat:@"C%iSolved", ChallengeID];
                    int Solve = (int)[[NSUserDefaults standardUserDefaults] integerForKey:Thing];
                    Solve ++;
                    [[NSUserDefaults standardUserDefaults] setInteger:Solve forKey:Thing];
                        UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Challenge Completed" message:@"Yeah! Ok! You have completed Challenge 5, Good Job!." delegate:nil cancelButtonTitle:@"Phone-Five!" otherButtonTitles: nil];
                        
                        [alert show];
                    }
                    break;
                    
                case 6:
                    checker = 0;
                    for(int i=0; i<5; ++i){
                        for(int j=0; j<5; ++j){
                            if(Grid[i][j] != C6[i][j])
                                checker ++;
                        }
                    }
                    if(checker == 0){
                    NSString *Thing = [NSString stringWithFormat:@"C%iSolved", ChallengeID];
                    int Solve = (int)[[NSUserDefaults standardUserDefaults] integerForKey:Thing];
                    Solve ++;
                    [[NSUserDefaults standardUserDefaults] setInteger:Solve forKey:Thing];
                        UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Challenge Completed" message:@"Yeah! Ok! You have completed Challenge 6, Good Job!." delegate:nil cancelButtonTitle:@"Phone-Five!" otherButtonTitles: nil];
                        
                        [alert show];
                    }
                    break;
                    
                case 7:
                    checker = 0;
                    for(int i=0; i<5; ++i){
                        for(int j=0; j<5; ++j){
                            if(Grid[i][j] != C7[i][j])
                                checker ++;
                        }
                    }
                    if(checker == 0){
                    NSString *Thing = [NSString stringWithFormat:@"C%iSolved", ChallengeID];
                    int Solve = (int)[[NSUserDefaults standardUserDefaults] integerForKey:Thing];
                    Solve ++;
                    [[NSUserDefaults standardUserDefaults] setInteger:Solve forKey:Thing];
                        UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Challenge Completed" message:@"Yeah! Ok! You have completed Challenge 7, Good Job!." delegate:nil cancelButtonTitle:@"Phone-Five!" otherButtonTitles: nil];
                        
                        [alert show];
                    }
                    break;
                    
                case 8:
                    checker = 0;
                    for(int i=0; i<5; ++i){
                        for(int j=0; j<5; ++j){
                            if(Grid[i][j] != C8[i][j])
                                checker ++;
                        }
                    }
                    if(checker == 0){
                    NSString *Thing = [NSString stringWithFormat:@"C%iSolved", ChallengeID];
                    int Solve = (int)[[NSUserDefaults standardUserDefaults] integerForKey:Thing];
                    Solve ++;
                    [[NSUserDefaults standardUserDefaults] setInteger:Solve forKey:Thing];
                        UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Challenge Completed" message:@"Yeah! Ok! You have completed Challenge 8, Good Job!." delegate:nil cancelButtonTitle:@"Phone-Five!" otherButtonTitles: nil];
                        
                        [alert show];
                    }
                    break;
                    
                case 9:
                    checker = 0;
                    for(int i=0; i<5; ++i){
                        for(int j=0; j<5; ++j){
                            if(Grid[i][j] != C9[i][j])
                                checker ++;
                        }
                    }
                    if(checker == 0){
                    NSString *Thing = [NSString stringWithFormat:@"C%iSolved", ChallengeID];
                    int Solve = (int)[[NSUserDefaults standardUserDefaults] integerForKey:Thing];
                    Solve ++;
                    [[NSUserDefaults standardUserDefaults] setInteger:Solve forKey:Thing];
                        UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Challenge Completed" message:@"Yeah! Ok! You have completed Challenge 9, Good Job!." delegate:nil cancelButtonTitle:@"Phone-Five!" otherButtonTitles: nil];
                        
                        [alert show];
                    }
                    break;
                    
                case 10:
                    checker = 0;
                    for(int i=0; i<5; ++i){
                        for(int j=0; j<5; ++j){
                            if(Grid[i][j] != C10[i][j])
                                checker ++;
                        }
                    }
                    if(checker == 0){
                    NSString *Thing = [NSString stringWithFormat:@"C%iSolved", ChallengeID];
                    int Solve = (int)[[NSUserDefaults standardUserDefaults] integerForKey:Thing];
                    Solve ++;
                    [[NSUserDefaults standardUserDefaults] setInteger:Solve forKey:Thing];
                        UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Challenge Completed" message:@"Yeah! Ok! You have completed Challenge 10, Good Job!." delegate:nil cancelButtonTitle:@"Phone-Five!" otherButtonTitles: nil];
                        
                        [alert show];
                    }
                    break;
                    
                case 11:
                    checker = 0;
                    for(int i=0; i<5; ++i){
                        for(int j=0; j<5; ++j){
                            if(Grid[i][j] != C11[i][j])
                                checker ++;
                        }
                    }
                    if(checker == 0){
                    NSString *Thing = [NSString stringWithFormat:@"C%iSolved", ChallengeID];
                    int Solve = (int)[[NSUserDefaults standardUserDefaults] integerForKey:Thing];
                    Solve ++;
                    [[NSUserDefaults standardUserDefaults] setInteger:Solve forKey:Thing];
                        UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Challenge Completed" message:@"Yeah! Ok! You have completed Challenge 11, Good Job!." delegate:nil cancelButtonTitle:@"Phone-Five!" otherButtonTitles: nil];
                        
                        [alert show];
                    }
                    break;
                    
                case 12:
                    checker = 0;
                    for(int i=0; i<5; ++i){
                        for(int j=0; j<5; ++j){
                            if(Grid[i][j] != C12[i][j])
                                checker ++;
                        }
                    }
                    if(checker == 0){
                    NSString *Thing = [NSString stringWithFormat:@"C%iSolved", ChallengeID];
                    int Solve = (int)[[NSUserDefaults standardUserDefaults] integerForKey:Thing];
                    Solve ++;
                    [[NSUserDefaults standardUserDefaults] setInteger:Solve forKey:Thing];
                        UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Challenge Completed" message:@"Yeah! Ok! You have completed Challenge 12, Good Job!." delegate:nil cancelButtonTitle:@"Phone-Five!" otherButtonTitles: nil];
                        
                        [alert show];
                    }
                    break;
                    
                case 13:
                    checker = 0;
                    for(int i=0; i<5; ++i){
                        for(int j=0; j<5; ++j){
                            if(Grid[i][j] != C13[i][j])
                                checker ++;
                        }
                    }
                    if(checker == 0){
                    NSString *Thing = [NSString stringWithFormat:@"C%iSolved", ChallengeID];
                    int Solve = (int)[[NSUserDefaults standardUserDefaults] integerForKey:Thing];
                    Solve ++;
                    [[NSUserDefaults standardUserDefaults] setInteger:Solve forKey:Thing];
                        UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Challenge Completed" message:@"Yeah! Ok! You have completed Challenge 13, Good Job!." delegate:nil cancelButtonTitle:@"Phone-Five!" otherButtonTitles: nil];
                        
                        [alert show];
                    }
                    break;
                    
                case 14:
                    checker = 0;
                    for(int i=0; i<5; ++i){
                        for(int j=0; j<5; ++j){
                            if(Grid[i][j] != C14[i][j])
                                checker ++;
                        }
                    }
                    if(checker == 0){
                    NSString *Thing = [NSString stringWithFormat:@"C%iSolved", ChallengeID];
                    int Solve = (int)[[NSUserDefaults standardUserDefaults] integerForKey:Thing];
                    Solve ++;
                    [[NSUserDefaults standardUserDefaults] setInteger:Solve forKey:Thing];
                        UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Challenge Completed" message:@"Yeah! Ok! You have completed Challenge 14, Good Job!." delegate:nil cancelButtonTitle:@"Phone-Five!" otherButtonTitles: nil];
                        
                        [alert show];
                    }
                    break;
                    
                case 15:
                    checker = 0;
                    for(int i=0; i<5; ++i){
                        for(int j=0; j<5; ++j){
                            if(Grid[i][j] != C15[i][j])
                                checker ++;
                        }
                    }
                    if(checker == 0){
                    NSString *Thing = [NSString stringWithFormat:@"C%iSolved", ChallengeID];
                    int Solve = (int)[[NSUserDefaults standardUserDefaults] integerForKey:Thing];
                    Solve ++;
                    [[NSUserDefaults standardUserDefaults] setInteger:Solve forKey:Thing];
                        UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Challenge Completed" message:@"Yeah! Ok! You have completed Challenge 15, Good Job!." delegate:nil cancelButtonTitle:@"Phone-Five!" otherButtonTitles: nil];
                        
                        [alert show];
                    }
                    break;
                    
                case 16:
                    checker = 0;
                    for(int i=0; i<5; ++i){
                        for(int j=0; j<5; ++j){
                            if(Grid[i][j] != C16[i][j])
                                checker ++;
                        }
                    }
                    if(checker == 0){
                    NSString *Thing = [NSString stringWithFormat:@"C%iSolved", ChallengeID];
                    int Solve = (int)[[NSUserDefaults standardUserDefaults] integerForKey:Thing];
                    Solve ++;
                    [[NSUserDefaults standardUserDefaults] setInteger:Solve forKey:Thing];
                        UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Challenge Completed" message:@"Yeah! Ok! You have completed Challenge 16, Good Job!." delegate:nil cancelButtonTitle:@"Phone-Five!" otherButtonTitles: nil];
                        
                        [alert show];
                    }
                    break;
                    
                    
                default:
                    if(ScoreNo == 25){
                        UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"You Won!"
                                                                        message:@"Yeah, you won, big deal!"
                                                                       delegate:self
                                                              cancelButtonTitle:@"Dismiss"
                                                              otherButtonTitles:@"Again!",nil];
                        [alert show];
                    }
                    break;
            }
        }
        
        _Score.text = [NSString stringWithFormat:@"%i", ScoreNo];
        
    }
}

- (IBAction)Right:(id)sender {
    
    if([sender tag] == 14){
        
        if(Grid[0][4] == false){
            Grid[0][4] = true;
            _Green5.hidden = NO;
        }
        else{
            Grid[0][4] = false;
            _Green5.hidden = YES;
        }
        if(Grid[1][3] == false){
            Grid[1][3] = true;
            _Green9.hidden = NO;
        }
        else{
            Grid[1][3] = false;
            _Green9.hidden = YES;
        }
        
        if(Grid[1][4] == false){
            Grid[1][4] = true;
            _Green10.hidden = NO;
        }
        else{
            Grid[1][4] = false;
            _Green10.hidden = YES;
        }
        if(Grid[2][4] == false){
            Grid[2][4] = true;
            _Green15.hidden = NO;
        }
        else{
            Grid[2][4] = false;
            _Green15.hidden = YES;
        }
        
        ScoreNo = 0;
        for(int i=0; i<5; ++i){
            for(int j=0; j<5; ++j){
                if(Grid[i][j])
                    ScoreNo++;
            }
        }
        
        if(ChallengeID == 0){
            if(ScoreNo == 25){
                int Solve5 = (int)[[NSUserDefaults standardUserDefaults] integerForKey:@"5Solved"];
                Solve5++;
                [[NSUserDefaults standardUserDefaults] setInteger:Solve5 forKey:@"5Solved"];
                UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"You Won!"
                                                                message:@"Yeah, you won, big deal!"
                                                               delegate:self
                                                      cancelButtonTitle:@"Dismiss"
                                                      otherButtonTitles:@"Again!",nil];
                [alert show];
            }
        }
        else{
            switch (ChallengeID) {
                case 1:
                    checker = 0;
                    for(int i=0; i<5; ++i){
                        for(int j=0; j<5; ++j){
                            if(Grid[i][j] != C1[i][j])
                                checker ++;
                        }
                    }
                    if(checker == 0){
                    NSString *Thing = [NSString stringWithFormat:@"C%iSolved", ChallengeID];
                    int Solve = (int)[[NSUserDefaults standardUserDefaults] integerForKey:Thing];
                    Solve ++;
                    [[NSUserDefaults standardUserDefaults] setInteger:Solve forKey:Thing];
                        UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Challenge Completed" message:@"Yeah! Ok! You have completed Challenge 1, Good Job!." delegate:nil cancelButtonTitle:@"Phone-Five!" otherButtonTitles: nil];
                        
                        [alert show];
                    }
                    break;
                    
                case 2:
                    checker = 0;
                    for(int i=0; i<5; ++i){
                        for(int j=0; j<5; ++j){
                            if(Grid[i][j] != C2[i][j])
                                checker ++;
                        }
                    }
                    if(checker == 0){
                    NSString *Thing = [NSString stringWithFormat:@"C%iSolved", ChallengeID];
                    int Solve = (int)[[NSUserDefaults standardUserDefaults] integerForKey:Thing];
                    Solve ++;
                    [[NSUserDefaults standardUserDefaults] setInteger:Solve forKey:Thing];
                        UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Challenge Completed" message:@"Yeah! Ok! You have completed Challenge 2, Good Job!." delegate:nil cancelButtonTitle:@"Phone-Five!" otherButtonTitles: nil];
                        
                        [alert show];
                    }
                    break;
                    
                case 3:
                    checker = 0;
                    for(int i=0; i<5; ++i){
                        for(int j=0; j<5; ++j){
                            if(Grid[i][j] != C3[i][j])
                                checker ++;
                        }
                    }
                    if(checker == 0){
                    NSString *Thing = [NSString stringWithFormat:@"C%iSolved", ChallengeID];
                    int Solve = (int)[[NSUserDefaults standardUserDefaults] integerForKey:Thing];
                    Solve ++;
                    [[NSUserDefaults standardUserDefaults] setInteger:Solve forKey:Thing];
                        UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Challenge Completed" message:@"Yeah! Ok! You have completed Challenge 3, Good Job!." delegate:nil cancelButtonTitle:@"Phone-Five!" otherButtonTitles: nil];
                        
                        [alert show];
                    }
                    break;
                    
                case 4:
                    checker = 0;
                    for(int i=0; i<5; ++i){
                        for(int j=0; j<5; ++j){
                            if(Grid[i][j] != C4[i][j])
                                checker ++;
                        }
                    }
                    if(checker == 0){
                    NSString *Thing = [NSString stringWithFormat:@"C%iSolved", ChallengeID];
                    int Solve = (int)[[NSUserDefaults standardUserDefaults] integerForKey:Thing];
                    Solve ++;
                    [[NSUserDefaults standardUserDefaults] setInteger:Solve forKey:Thing];
                        UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Challenge Completed" message:@"Yeah! Ok! You have completed Challenge 4, Good Job!." delegate:nil cancelButtonTitle:@"Phone-Five!" otherButtonTitles: nil];
                        
                        [alert show];
                    }
                    break;
                    
                case 5:
                    checker = 0;
                    for(int i=0; i<5; ++i){
                        for(int j=0; j<5; ++j){
                            if(Grid[i][j] != C5[i][j])
                                checker ++;
                        }
                    }
                    if(checker == 0){
                    NSString *Thing = [NSString stringWithFormat:@"C%iSolved", ChallengeID];
                    int Solve = (int)[[NSUserDefaults standardUserDefaults] integerForKey:Thing];
                    Solve ++;
                    [[NSUserDefaults standardUserDefaults] setInteger:Solve forKey:Thing];
                        UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Challenge Completed" message:@"Yeah! Ok! You have completed Challenge 5, Good Job!." delegate:nil cancelButtonTitle:@"Phone-Five!" otherButtonTitles: nil];
                        
                        [alert show];
                    }
                    break;
                    
                case 6:
                    checker = 0;
                    for(int i=0; i<5; ++i){
                        for(int j=0; j<5; ++j){
                            if(Grid[i][j] != C6[i][j])
                                checker ++;
                        }
                    }
                    if(checker == 0){
                    NSString *Thing = [NSString stringWithFormat:@"C%iSolved", ChallengeID];
                    int Solve = (int)[[NSUserDefaults standardUserDefaults] integerForKey:Thing];
                    Solve ++;
                    [[NSUserDefaults standardUserDefaults] setInteger:Solve forKey:Thing];
                        UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Challenge Completed" message:@"Yeah! Ok! You have completed Challenge 6, Good Job!." delegate:nil cancelButtonTitle:@"Phone-Five!" otherButtonTitles: nil];
                        
                        [alert show];
                    }
                    break;
                    
                case 7:
                    checker = 0;
                    for(int i=0; i<5; ++i){
                        for(int j=0; j<5; ++j){
                            if(Grid[i][j] != C7[i][j])
                                checker ++;
                        }
                    }
                    if(checker == 0){
                    NSString *Thing = [NSString stringWithFormat:@"C%iSolved", ChallengeID];
                    int Solve = (int)[[NSUserDefaults standardUserDefaults] integerForKey:Thing];
                    Solve ++;
                    [[NSUserDefaults standardUserDefaults] setInteger:Solve forKey:Thing];
                        UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Challenge Completed" message:@"Yeah! Ok! You have completed Challenge 7, Good Job!." delegate:nil cancelButtonTitle:@"Phone-Five!" otherButtonTitles: nil];
                        
                        [alert show];
                    }
                    break;
                    
                case 8:
                    checker = 0;
                    for(int i=0; i<5; ++i){
                        for(int j=0; j<5; ++j){
                            if(Grid[i][j] != C8[i][j])
                                checker ++;
                        }
                    }
                    if(checker == 0){
                    NSString *Thing = [NSString stringWithFormat:@"C%iSolved", ChallengeID];
                    int Solve = (int)[[NSUserDefaults standardUserDefaults] integerForKey:Thing];
                    Solve ++;
                    [[NSUserDefaults standardUserDefaults] setInteger:Solve forKey:Thing];
                        UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Challenge Completed" message:@"Yeah! Ok! You have completed Challenge 8, Good Job!." delegate:nil cancelButtonTitle:@"Phone-Five!" otherButtonTitles: nil];
                        
                        [alert show];
                    }
                    break;
                    
                case 9:
                    checker = 0;
                    for(int i=0; i<5; ++i){
                        for(int j=0; j<5; ++j){
                            if(Grid[i][j] != C9[i][j])
                                checker ++;
                        }
                    }
                    if(checker == 0){
                    NSString *Thing = [NSString stringWithFormat:@"C%iSolved", ChallengeID];
                    int Solve = (int)[[NSUserDefaults standardUserDefaults] integerForKey:Thing];
                    Solve ++;
                    [[NSUserDefaults standardUserDefaults] setInteger:Solve forKey:Thing];
                        UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Challenge Completed" message:@"Yeah! Ok! You have completed Challenge 9, Good Job!." delegate:nil cancelButtonTitle:@"Phone-Five!" otherButtonTitles: nil];
                        
                        [alert show];
                    }
                    break;
                    
                case 10:
                    checker = 0;
                    for(int i=0; i<5; ++i){
                        for(int j=0; j<5; ++j){
                            if(Grid[i][j] != C10[i][j])
                                checker ++;
                        }
                    }
                    if(checker == 0){
                    NSString *Thing = [NSString stringWithFormat:@"C%iSolved", ChallengeID];
                    int Solve = (int)[[NSUserDefaults standardUserDefaults] integerForKey:Thing];
                    Solve ++;
                    [[NSUserDefaults standardUserDefaults] setInteger:Solve forKey:Thing];
                        UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Challenge Completed" message:@"Yeah! Ok! You have completed Challenge 10, Good Job!." delegate:nil cancelButtonTitle:@"Phone-Five!" otherButtonTitles: nil];
                        
                        [alert show];
                    }
                    break;
                    
                case 11:
                    checker = 0;
                    for(int i=0; i<5; ++i){
                        for(int j=0; j<5; ++j){
                            if(Grid[i][j] != C11[i][j])
                                checker ++;
                        }
                    }
                    if(checker == 0){
                    NSString *Thing = [NSString stringWithFormat:@"C%iSolved", ChallengeID];
                    int Solve = (int)[[NSUserDefaults standardUserDefaults] integerForKey:Thing];
                    Solve ++;
                    [[NSUserDefaults standardUserDefaults] setInteger:Solve forKey:Thing];
                        UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Challenge Completed" message:@"Yeah! Ok! You have completed Challenge 11, Good Job!." delegate:nil cancelButtonTitle:@"Phone-Five!" otherButtonTitles: nil];
                        
                        [alert show];
                    }
                    break;
                    
                case 12:
                    checker = 0;
                    for(int i=0; i<5; ++i){
                        for(int j=0; j<5; ++j){
                            if(Grid[i][j] != C12[i][j])
                                checker ++;
                        }
                    }
                    if(checker == 0){
                    NSString *Thing = [NSString stringWithFormat:@"C%iSolved", ChallengeID];
                    int Solve = (int)[[NSUserDefaults standardUserDefaults] integerForKey:Thing];
                    Solve ++;
                    [[NSUserDefaults standardUserDefaults] setInteger:Solve forKey:Thing];
                        UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Challenge Completed" message:@"Yeah! Ok! You have completed Challenge 12, Good Job!." delegate:nil cancelButtonTitle:@"Phone-Five!" otherButtonTitles: nil];
                        
                        [alert show];
                    }
                    break;
                    
                case 13:
                    checker = 0;
                    for(int i=0; i<5; ++i){
                        for(int j=0; j<5; ++j){
                            if(Grid[i][j] != C13[i][j])
                                checker ++;
                        }
                    }
                    if(checker == 0){
                    NSString *Thing = [NSString stringWithFormat:@"C%iSolved", ChallengeID];
                    int Solve = (int)[[NSUserDefaults standardUserDefaults] integerForKey:Thing];
                    Solve ++;
                    [[NSUserDefaults standardUserDefaults] setInteger:Solve forKey:Thing];
                        UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Challenge Completed" message:@"Yeah! Ok! You have completed Challenge 13, Good Job!." delegate:nil cancelButtonTitle:@"Phone-Five!" otherButtonTitles: nil];
                        
                        [alert show];
                    }
                    break;
                    
                case 14:
                    checker = 0;
                    for(int i=0; i<5; ++i){
                        for(int j=0; j<5; ++j){
                            if(Grid[i][j] != C14[i][j])
                                checker ++;
                        }
                    }
                    if(checker == 0){
                    NSString *Thing = [NSString stringWithFormat:@"C%iSolved", ChallengeID];
                    int Solve = (int)[[NSUserDefaults standardUserDefaults] integerForKey:Thing];
                    Solve ++;
                    [[NSUserDefaults standardUserDefaults] setInteger:Solve forKey:Thing];
                        UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Challenge Completed" message:@"Yeah! Ok! You have completed Challenge 14, Good Job!." delegate:nil cancelButtonTitle:@"Phone-Five!" otherButtonTitles: nil];
                        
                        [alert show];
                    }
                    break;
                    
                case 15:
                    checker = 0;
                    for(int i=0; i<5; ++i){
                        for(int j=0; j<5; ++j){
                            if(Grid[i][j] != C15[i][j])
                                checker ++;
                        }
                    }
                    if(checker == 0){
                    NSString *Thing = [NSString stringWithFormat:@"C%iSolved", ChallengeID];
                    int Solve = (int)[[NSUserDefaults standardUserDefaults] integerForKey:Thing];
                    Solve ++;
                    [[NSUserDefaults standardUserDefaults] setInteger:Solve forKey:Thing];
                        UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Challenge Completed" message:@"Yeah! Ok! You have completed Challenge 15, Good Job!." delegate:nil cancelButtonTitle:@"Phone-Five!" otherButtonTitles: nil];
                        
                        [alert show];
                    }
                    break;
                    
                case 16:
                    checker = 0;
                    for(int i=0; i<5; ++i){
                        for(int j=0; j<5; ++j){
                            if(Grid[i][j] != C16[i][j])
                                checker ++;
                        }
                    }
                    if(checker == 0){
                    NSString *Thing = [NSString stringWithFormat:@"C%iSolved", ChallengeID];
                    int Solve = (int)[[NSUserDefaults standardUserDefaults] integerForKey:Thing];
                    Solve ++;
                    [[NSUserDefaults standardUserDefaults] setInteger:Solve forKey:Thing];
                        UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Challenge Completed" message:@"Yeah! Ok! You have completed Challenge 16, Good Job!." delegate:nil cancelButtonTitle:@"Phone-Five!" otherButtonTitles: nil];
                        
                        [alert show];
                    }
                    break;
                    
                    
                default:
                    if(ScoreNo == 25){
                        UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"You Won!"
                                                                        message:@"Yeah, you won, big deal!"
                                                                       delegate:self
                                                              cancelButtonTitle:@"Dismiss"
                                                              otherButtonTitles:@"Again!",nil];
                        [alert show];
                    }
                    break;
            }
        }
        
        _Score.text = [NSString stringWithFormat:@"%i", ScoreNo];
    }
    
    else if ([sender tag] == 24){
        
        if(Grid[1][4] == false){
            Grid[1][4] = true;
            _Green10.hidden = NO;
        }
        else{
            Grid[1][4] = false;
            _Green10.hidden = YES;
        }
        if(Grid[2][3] == false){
            Grid[2][3] = true;
            _Green14.hidden = NO;
        }
        else{
            Grid[2][3] = false;
            _Green14.hidden = YES;
        }
        
        if(Grid[2][4] == false){
            Grid[2][4] = true;
            _Green15.hidden = NO;
        }
        else{
            Grid[2][4] = false;
            _Green15.hidden = YES;
        }
        if(Grid[3][4] == false){
            Grid[3][4] = true;
            _Green20.hidden = NO;
        }
        else{
            Grid[3][4] = false;
            _Green20.hidden = YES;
        }
        
        ScoreNo = 0;
        for(int i=0; i<5; ++i){
            for(int j=0; j<5; ++j){
                if(Grid[i][j])
                    ScoreNo++;
            }
        }
        
        if(ChallengeID == 0){
            if(ScoreNo == 25){
                int Solve5 = (int)[[NSUserDefaults standardUserDefaults] integerForKey:@"5Solved"];
                Solve5++;
                [[NSUserDefaults standardUserDefaults] setInteger:Solve5 forKey:@"5Solved"];
                UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"You Won!"
                                                                message:@"Yeah, you won, big deal!"
                                                               delegate:self
                                                      cancelButtonTitle:@"Dismiss"
                                                      otherButtonTitles:@"Again!",nil];
                [alert show];
            }
        }
        else{
            switch (ChallengeID) {
                case 1:
                    checker = 0;
                    for(int i=0; i<5; ++i){
                        for(int j=0; j<5; ++j){
                            if(Grid[i][j] != C1[i][j])
                                checker ++;
                        }
                    }
                    if(checker == 0){
                    NSString *Thing = [NSString stringWithFormat:@"C%iSolved", ChallengeID];
                    int Solve = (int)[[NSUserDefaults standardUserDefaults] integerForKey:Thing];
                    Solve ++;
                    [[NSUserDefaults standardUserDefaults] setInteger:Solve forKey:Thing];
                        UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Challenge Completed" message:@"Yeah! Ok! You have completed Challenge 1, Good Job!." delegate:nil cancelButtonTitle:@"Phone-Five!" otherButtonTitles: nil];
                        
                        [alert show];
                    }
                    break;
                    
                case 2:
                    checker = 0;
                    for(int i=0; i<5; ++i){
                        for(int j=0; j<5; ++j){
                            if(Grid[i][j] != C2[i][j])
                                checker ++;
                        }
                    }
                    if(checker == 0){
                    NSString *Thing = [NSString stringWithFormat:@"C%iSolved", ChallengeID];
                    int Solve = (int)[[NSUserDefaults standardUserDefaults] integerForKey:Thing];
                    Solve ++;
                    [[NSUserDefaults standardUserDefaults] setInteger:Solve forKey:Thing];
                        UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Challenge Completed" message:@"Yeah! Ok! You have completed Challenge 2, Good Job!." delegate:nil cancelButtonTitle:@"Phone-Five!" otherButtonTitles: nil];
                        
                        [alert show];
                    }
                    break;
                    
                case 3:
                    checker = 0;
                    for(int i=0; i<5; ++i){
                        for(int j=0; j<5; ++j){
                            if(Grid[i][j] != C3[i][j])
                                checker ++;
                        }
                    }
                    if(checker == 0){
                    NSString *Thing = [NSString stringWithFormat:@"C%iSolved", ChallengeID];
                    int Solve = (int)[[NSUserDefaults standardUserDefaults] integerForKey:Thing];
                    Solve ++;
                    [[NSUserDefaults standardUserDefaults] setInteger:Solve forKey:Thing];
                        UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Challenge Completed" message:@"Yeah! Ok! You have completed Challenge 3, Good Job!." delegate:nil cancelButtonTitle:@"Phone-Five!" otherButtonTitles: nil];
                        
                        [alert show];
                    }
                    break;
                    
                case 4:
                    checker = 0;
                    for(int i=0; i<5; ++i){
                        for(int j=0; j<5; ++j){
                            if(Grid[i][j] != C4[i][j])
                                checker ++;
                        }
                    }
                    if(checker == 0){
                    NSString *Thing = [NSString stringWithFormat:@"C%iSolved", ChallengeID];
                    int Solve = (int)[[NSUserDefaults standardUserDefaults] integerForKey:Thing];
                    Solve ++;
                    [[NSUserDefaults standardUserDefaults] setInteger:Solve forKey:Thing];
                        UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Challenge Completed" message:@"Yeah! Ok! You have completed Challenge 4, Good Job!." delegate:nil cancelButtonTitle:@"Phone-Five!" otherButtonTitles: nil];
                        
                        [alert show];
                    }
                    break;
                    
                case 5:
                    checker = 0;
                    for(int i=0; i<5; ++i){
                        for(int j=0; j<5; ++j){
                            if(Grid[i][j] != C5[i][j])
                                checker ++;
                        }
                    }
                    if(checker == 0){
                    NSString *Thing = [NSString stringWithFormat:@"C%iSolved", ChallengeID];
                    int Solve = (int)[[NSUserDefaults standardUserDefaults] integerForKey:Thing];
                    Solve ++;
                    [[NSUserDefaults standardUserDefaults] setInteger:Solve forKey:Thing];
                        UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Challenge Completed" message:@"Yeah! Ok! You have completed Challenge 5, Good Job!." delegate:nil cancelButtonTitle:@"Phone-Five!" otherButtonTitles: nil];
                        
                        [alert show];
                    }
                    break;
                    
                case 6:
                    checker = 0;
                    for(int i=0; i<5; ++i){
                        for(int j=0; j<5; ++j){
                            if(Grid[i][j] != C6[i][j])
                                checker ++;
                        }
                    }
                    if(checker == 0){
                    NSString *Thing = [NSString stringWithFormat:@"C%iSolved", ChallengeID];
                    int Solve = (int)[[NSUserDefaults standardUserDefaults] integerForKey:Thing];
                    Solve ++;
                    [[NSUserDefaults standardUserDefaults] setInteger:Solve forKey:Thing];
                        UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Challenge Completed" message:@"Yeah! Ok! You have completed Challenge 6, Good Job!." delegate:nil cancelButtonTitle:@"Phone-Five!" otherButtonTitles: nil];
                        
                        [alert show];
                    }
                    break;
                    
                case 7:
                    checker = 0;
                    for(int i=0; i<5; ++i){
                        for(int j=0; j<5; ++j){
                            if(Grid[i][j] != C7[i][j])
                                checker ++;
                        }
                    }
                    if(checker == 0){
                    NSString *Thing = [NSString stringWithFormat:@"C%iSolved", ChallengeID];
                    int Solve = (int)[[NSUserDefaults standardUserDefaults] integerForKey:Thing];
                    Solve ++;
                    [[NSUserDefaults standardUserDefaults] setInteger:Solve forKey:Thing];
                        UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Challenge Completed" message:@"Yeah! Ok! You have completed Challenge 7, Good Job!." delegate:nil cancelButtonTitle:@"Phone-Five!" otherButtonTitles: nil];
                        
                        [alert show];
                    }
                    break;
                    
                case 8:
                    checker = 0;
                    for(int i=0; i<5; ++i){
                        for(int j=0; j<5; ++j){
                            if(Grid[i][j] != C8[i][j])
                                checker ++;
                        }
                    }
                    if(checker == 0){
                    NSString *Thing = [NSString stringWithFormat:@"C%iSolved", ChallengeID];
                    int Solve = (int)[[NSUserDefaults standardUserDefaults] integerForKey:Thing];
                    Solve ++;
                    [[NSUserDefaults standardUserDefaults] setInteger:Solve forKey:Thing];
                        UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Challenge Completed" message:@"Yeah! Ok! You have completed Challenge 8, Good Job!." delegate:nil cancelButtonTitle:@"Phone-Five!" otherButtonTitles: nil];
                        
                        [alert show];
                    }
                    break;
                    
                case 9:
                    checker = 0;
                    for(int i=0; i<5; ++i){
                        for(int j=0; j<5; ++j){
                            if(Grid[i][j] != C9[i][j])
                                checker ++;
                        }
                    }
                    if(checker == 0){
                    NSString *Thing = [NSString stringWithFormat:@"C%iSolved", ChallengeID];
                    int Solve = (int)[[NSUserDefaults standardUserDefaults] integerForKey:Thing];
                    Solve ++;
                    [[NSUserDefaults standardUserDefaults] setInteger:Solve forKey:Thing];
                        UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Challenge Completed" message:@"Yeah! Ok! You have completed Challenge 9, Good Job!." delegate:nil cancelButtonTitle:@"Phone-Five!" otherButtonTitles: nil];
                        
                        [alert show];
                    }
                    break;
                    
                case 10:
                    checker = 0;
                    for(int i=0; i<5; ++i){
                        for(int j=0; j<5; ++j){
                            if(Grid[i][j] != C10[i][j])
                                checker ++;
                        }
                    }
                    if(checker == 0){
                    NSString *Thing = [NSString stringWithFormat:@"C%iSolved", ChallengeID];
                    int Solve = (int)[[NSUserDefaults standardUserDefaults] integerForKey:Thing];
                    Solve ++;
                    [[NSUserDefaults standardUserDefaults] setInteger:Solve forKey:Thing];
                        UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Challenge Completed" message:@"Yeah! Ok! You have completed Challenge 10, Good Job!." delegate:nil cancelButtonTitle:@"Phone-Five!" otherButtonTitles: nil];
                        
                        [alert show];
                    }
                    break;
                    
                case 11:
                    checker = 0;
                    for(int i=0; i<5; ++i){
                        for(int j=0; j<5; ++j){
                            if(Grid[i][j] != C11[i][j])
                                checker ++;
                        }
                    }
                    if(checker == 0){
                    NSString *Thing = [NSString stringWithFormat:@"C%iSolved", ChallengeID];
                    int Solve = (int)[[NSUserDefaults standardUserDefaults] integerForKey:Thing];
                    Solve ++;
                    [[NSUserDefaults standardUserDefaults] setInteger:Solve forKey:Thing];
                        UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Challenge Completed" message:@"Yeah! Ok! You have completed Challenge 11, Good Job!." delegate:nil cancelButtonTitle:@"Phone-Five!" otherButtonTitles: nil];
                        
                        [alert show];
                    }
                    break;
                    
                case 12:
                    checker = 0;
                    for(int i=0; i<5; ++i){
                        for(int j=0; j<5; ++j){
                            if(Grid[i][j] != C12[i][j])
                                checker ++;
                        }
                    }
                    if(checker == 0){
                    NSString *Thing = [NSString stringWithFormat:@"C%iSolved", ChallengeID];
                    int Solve = (int)[[NSUserDefaults standardUserDefaults] integerForKey:Thing];
                    Solve ++;
                    [[NSUserDefaults standardUserDefaults] setInteger:Solve forKey:Thing];
                        UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Challenge Completed" message:@"Yeah! Ok! You have completed Challenge 12, Good Job!." delegate:nil cancelButtonTitle:@"Phone-Five!" otherButtonTitles: nil];
                        
                        [alert show];
                    }
                    break;
                    
                case 13:
                    checker = 0;
                    for(int i=0; i<5; ++i){
                        for(int j=0; j<5; ++j){
                            if(Grid[i][j] != C13[i][j])
                                checker ++;
                        }
                    }
                    if(checker == 0){
                    NSString *Thing = [NSString stringWithFormat:@"C%iSolved", ChallengeID];
                    int Solve = (int)[[NSUserDefaults standardUserDefaults] integerForKey:Thing];
                    Solve ++;
                    [[NSUserDefaults standardUserDefaults] setInteger:Solve forKey:Thing];
                        UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Challenge Completed" message:@"Yeah! Ok! You have completed Challenge 13, Good Job!." delegate:nil cancelButtonTitle:@"Phone-Five!" otherButtonTitles: nil];
                        
                        [alert show];
                    }
                    break;
                    
                case 14:
                    checker = 0;
                    for(int i=0; i<5; ++i){
                        for(int j=0; j<5; ++j){
                            if(Grid[i][j] != C14[i][j])
                                checker ++;
                        }
                    }
                    if(checker == 0){
                    NSString *Thing = [NSString stringWithFormat:@"C%iSolved", ChallengeID];
                    int Solve = (int)[[NSUserDefaults standardUserDefaults] integerForKey:Thing];
                    Solve ++;
                    [[NSUserDefaults standardUserDefaults] setInteger:Solve forKey:Thing];
                        UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Challenge Completed" message:@"Yeah! Ok! You have completed Challenge 14, Good Job!." delegate:nil cancelButtonTitle:@"Phone-Five!" otherButtonTitles: nil];
                        
                        [alert show];
                    }
                    break;
                    
                case 15:
                    checker = 0;
                    for(int i=0; i<5; ++i){
                        for(int j=0; j<5; ++j){
                            if(Grid[i][j] != C15[i][j])
                                checker ++;
                        }
                    }
                    if(checker == 0){
                    NSString *Thing = [NSString stringWithFormat:@"C%iSolved", ChallengeID];
                    int Solve = (int)[[NSUserDefaults standardUserDefaults] integerForKey:Thing];
                    Solve ++;
                    [[NSUserDefaults standardUserDefaults] setInteger:Solve forKey:Thing];
                        UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Challenge Completed" message:@"Yeah! Ok! You have completed Challenge 15, Good Job!." delegate:nil cancelButtonTitle:@"Phone-Five!" otherButtonTitles: nil];
                        
                        [alert show];
                    }
                    break;
                    
                case 16:
                    checker = 0;
                    for(int i=0; i<5; ++i){
                        for(int j=0; j<5; ++j){
                            if(Grid[i][j] != C16[i][j])
                                checker ++;
                        }
                    }
                    if(checker == 0){
                    NSString *Thing = [NSString stringWithFormat:@"C%iSolved", ChallengeID];
                    int Solve = (int)[[NSUserDefaults standardUserDefaults] integerForKey:Thing];
                    Solve ++;
                    [[NSUserDefaults standardUserDefaults] setInteger:Solve forKey:Thing];
                        UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Challenge Completed" message:@"Yeah! Ok! You have completed Challenge 16, Good Job!." delegate:nil cancelButtonTitle:@"Phone-Five!" otherButtonTitles: nil];
                        
                        [alert show];
                    }
                    break;
                    
                    
                default:
                    if(ScoreNo == 25){
                        UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"You Won!"
                                                                        message:@"Yeah, you won, big deal!"
                                                                       delegate:self
                                                              cancelButtonTitle:@"Dismiss"
                                                              otherButtonTitles:@"Again!",nil];
                        [alert show];
                    }
                    break;
            }
        }
        
        _Score.text = [NSString stringWithFormat:@"%i", ScoreNo];
    }
    
    else if ([sender tag] == 34){
        if(Grid[2][4] == false){
            Grid[2][4] = true;
            _Green15.hidden = NO;
        }
        else{
            Grid[2][4] = false;
            _Green15.hidden = YES;
        }
        if(Grid[3][3] == false){
            Grid[3][3] = true;
            _Green19.hidden = NO;
        }
        else{
            Grid[3][3] = false;
            _Green19.hidden = YES;
        }
        
        if(Grid[3][4] == false){
            Grid[3][4] = true;
            _Green20.hidden = NO;
        }
        else{
            Grid[3][4] = false;
            _Green20.hidden = YES;
        }
        if(Grid[4][4] == false){
            Grid[4][4] = true;
            _Green25.hidden = NO;
        }
        else{
            Grid[4][4] = false;
            _Green25.hidden = YES;
        }
        
        ScoreNo = 0;
        for(int i=0; i<5; ++i){
            for(int j=0; j<5; ++j){
                if(Grid[i][j])
                    ScoreNo++;
            }
        }
        
        if(ChallengeID == 0){
            if(ScoreNo == 25){
                int Solve5 = (int)[[NSUserDefaults standardUserDefaults] integerForKey:@"5Solved"];
                Solve5++;
                [[NSUserDefaults standardUserDefaults] setInteger:Solve5 forKey:@"5Solved"];
                UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"You Won!"
                                                                message:@"Yeah, you won, big deal!"
                                                               delegate:self
                                                      cancelButtonTitle:@"Dismiss"
                                                      otherButtonTitles:@"Again!",nil];
                [alert show];
            }
        }
        else{
            switch (ChallengeID) {
                case 1:
                    checker = 0;
                    for(int i=0; i<5; ++i){
                        for(int j=0; j<5; ++j){
                            if(Grid[i][j] != C1[i][j])
                                checker ++;
                        }
                    }
                    if(checker == 0){
                    NSString *Thing = [NSString stringWithFormat:@"C%iSolved", ChallengeID];
                    int Solve = (int)[[NSUserDefaults standardUserDefaults] integerForKey:Thing];
                    Solve ++;
                    [[NSUserDefaults standardUserDefaults] setInteger:Solve forKey:Thing];
                        UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Challenge Completed" message:@"Yeah! Ok! You have completed Challenge 1, Good Job!." delegate:nil cancelButtonTitle:@"Phone-Five!" otherButtonTitles: nil];
                        
                        [alert show];
                    }
                    break;
                    
                case 2:
                    checker = 0;
                    for(int i=0; i<5; ++i){
                        for(int j=0; j<5; ++j){
                            if(Grid[i][j] != C2[i][j])
                                checker ++;
                        }
                    }
                    if(checker == 0){
                    NSString *Thing = [NSString stringWithFormat:@"C%iSolved", ChallengeID];
                    int Solve = (int)[[NSUserDefaults standardUserDefaults] integerForKey:Thing];
                    Solve ++;
                    [[NSUserDefaults standardUserDefaults] setInteger:Solve forKey:Thing];
                        UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Challenge Completed" message:@"Yeah! Ok! You have completed Challenge 2, Good Job!." delegate:nil cancelButtonTitle:@"Phone-Five!" otherButtonTitles: nil];
                        
                        [alert show];
                    }
                    break;
                    
                case 3:
                    checker = 0;
                    for(int i=0; i<5; ++i){
                        for(int j=0; j<5; ++j){
                            if(Grid[i][j] != C3[i][j])
                                checker ++;
                        }
                    }
                    if(checker == 0){
                    NSString *Thing = [NSString stringWithFormat:@"C%iSolved", ChallengeID];
                    int Solve = (int)[[NSUserDefaults standardUserDefaults] integerForKey:Thing];
                    Solve ++;
                    [[NSUserDefaults standardUserDefaults] setInteger:Solve forKey:Thing];
                        UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Challenge Completed" message:@"Yeah! Ok! You have completed Challenge 3, Good Job!." delegate:nil cancelButtonTitle:@"Phone-Five!" otherButtonTitles: nil];
                        
                        [alert show];
                    }
                    break;
                    
                case 4:
                    checker = 0;
                    for(int i=0; i<5; ++i){
                        for(int j=0; j<5; ++j){
                            if(Grid[i][j] != C4[i][j])
                                checker ++;
                        }
                    }
                    if(checker == 0){
                    NSString *Thing = [NSString stringWithFormat:@"C%iSolved", ChallengeID];
                    int Solve = (int)[[NSUserDefaults standardUserDefaults] integerForKey:Thing];
                    Solve ++;
                    [[NSUserDefaults standardUserDefaults] setInteger:Solve forKey:Thing];
                        UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Challenge Completed" message:@"Yeah! Ok! You have completed Challenge 4, Good Job!." delegate:nil cancelButtonTitle:@"Phone-Five!" otherButtonTitles: nil];
                        
                        [alert show];
                    }
                    break;
                    
                case 5:
                    checker = 0;
                    for(int i=0; i<5; ++i){
                        for(int j=0; j<5; ++j){
                            if(Grid[i][j] != C5[i][j])
                                checker ++;
                        }
                    }
                    if(checker == 0){
                    NSString *Thing = [NSString stringWithFormat:@"C%iSolved", ChallengeID];
                    int Solve = (int)[[NSUserDefaults standardUserDefaults] integerForKey:Thing];
                    Solve ++;
                    [[NSUserDefaults standardUserDefaults] setInteger:Solve forKey:Thing];
                        UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Challenge Completed" message:@"Yeah! Ok! You have completed Challenge 5, Good Job!." delegate:nil cancelButtonTitle:@"Phone-Five!" otherButtonTitles: nil];
                        
                        [alert show];
                    }
                    break;
                    
                case 6:
                    checker = 0;
                    for(int i=0; i<5; ++i){
                        for(int j=0; j<5; ++j){
                            if(Grid[i][j] != C6[i][j])
                                checker ++;
                        }
                    }
                    if(checker == 0){
                    NSString *Thing = [NSString stringWithFormat:@"C%iSolved", ChallengeID];
                    int Solve = (int)[[NSUserDefaults standardUserDefaults] integerForKey:Thing];
                    Solve ++;
                    [[NSUserDefaults standardUserDefaults] setInteger:Solve forKey:Thing];
                        UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Challenge Completed" message:@"Yeah! Ok! You have completed Challenge 6, Good Job!." delegate:nil cancelButtonTitle:@"Phone-Five!" otherButtonTitles: nil];
                        
                        [alert show];
                    }
                    break;
                    
                case 7:
                    checker = 0;
                    for(int i=0; i<5; ++i){
                        for(int j=0; j<5; ++j){
                            if(Grid[i][j] != C7[i][j])
                                checker ++;
                        }
                    }
                    if(checker == 0){
                    NSString *Thing = [NSString stringWithFormat:@"C%iSolved", ChallengeID];
                    int Solve = (int)[[NSUserDefaults standardUserDefaults] integerForKey:Thing];
                    Solve ++;
                    [[NSUserDefaults standardUserDefaults] setInteger:Solve forKey:Thing];
                        UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Challenge Completed" message:@"Yeah! Ok! You have completed Challenge 7, Good Job!." delegate:nil cancelButtonTitle:@"Phone-Five!" otherButtonTitles: nil];
                        
                        [alert show];
                    }
                    break;
                    
                case 8:
                    checker = 0;
                    for(int i=0; i<5; ++i){
                        for(int j=0; j<5; ++j){
                            if(Grid[i][j] != C8[i][j])
                                checker ++;
                        }
                    }
                    if(checker == 0){
                    NSString *Thing = [NSString stringWithFormat:@"C%iSolved", ChallengeID];
                    int Solve = (int)[[NSUserDefaults standardUserDefaults] integerForKey:Thing];
                    Solve ++;
                    [[NSUserDefaults standardUserDefaults] setInteger:Solve forKey:Thing];
                        UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Challenge Completed" message:@"Yeah! Ok! You have completed Challenge 8, Good Job!." delegate:nil cancelButtonTitle:@"Phone-Five!" otherButtonTitles: nil];
                        
                        [alert show];
                    }
                    break;
                    
                case 9:
                    checker = 0;
                    for(int i=0; i<5; ++i){
                        for(int j=0; j<5; ++j){
                            if(Grid[i][j] != C9[i][j])
                                checker ++;
                        }
                    }
                    if(checker == 0){
                    NSString *Thing = [NSString stringWithFormat:@"C%iSolved", ChallengeID];
                    int Solve = (int)[[NSUserDefaults standardUserDefaults] integerForKey:Thing];
                    Solve ++;
                    [[NSUserDefaults standardUserDefaults] setInteger:Solve forKey:Thing];
                        UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Challenge Completed" message:@"Yeah! Ok! You have completed Challenge 9, Good Job!." delegate:nil cancelButtonTitle:@"Phone-Five!" otherButtonTitles: nil];
                        
                        [alert show];
                    }
                    break;
                    
                case 10:
                    checker = 0;
                    for(int i=0; i<5; ++i){
                        for(int j=0; j<5; ++j){
                            if(Grid[i][j] != C10[i][j])
                                checker ++;
                        }
                    }
                    if(checker == 0){
                    NSString *Thing = [NSString stringWithFormat:@"C%iSolved", ChallengeID];
                    int Solve = (int)[[NSUserDefaults standardUserDefaults] integerForKey:Thing];
                    Solve ++;
                    [[NSUserDefaults standardUserDefaults] setInteger:Solve forKey:Thing];
                        UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Challenge Completed" message:@"Yeah! Ok! You have completed Challenge 10, Good Job!." delegate:nil cancelButtonTitle:@"Phone-Five!" otherButtonTitles: nil];
                        
                        [alert show];
                    }
                    break;
                    
                case 11:
                    checker = 0;
                    for(int i=0; i<5; ++i){
                        for(int j=0; j<5; ++j){
                            if(Grid[i][j] != C11[i][j])
                                checker ++;
                        }
                    }
                    if(checker == 0){
                    NSString *Thing = [NSString stringWithFormat:@"C%iSolved", ChallengeID];
                    int Solve = (int)[[NSUserDefaults standardUserDefaults] integerForKey:Thing];
                    Solve ++;
                    [[NSUserDefaults standardUserDefaults] setInteger:Solve forKey:Thing];
                        UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Challenge Completed" message:@"Yeah! Ok! You have completed Challenge 11, Good Job!." delegate:nil cancelButtonTitle:@"Phone-Five!" otherButtonTitles: nil];
                        
                        [alert show];
                    }
                    break;
                    
                case 12:
                    checker = 0;
                    for(int i=0; i<5; ++i){
                        for(int j=0; j<5; ++j){
                            if(Grid[i][j] != C12[i][j])
                                checker ++;
                        }
                    }
                    if(checker == 0){
                    NSString *Thing = [NSString stringWithFormat:@"C%iSolved", ChallengeID];
                    int Solve = (int)[[NSUserDefaults standardUserDefaults] integerForKey:Thing];
                    Solve ++;
                    [[NSUserDefaults standardUserDefaults] setInteger:Solve forKey:Thing];
                        UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Challenge Completed" message:@"Yeah! Ok! You have completed Challenge 12, Good Job!." delegate:nil cancelButtonTitle:@"Phone-Five!" otherButtonTitles: nil];
                        
                        [alert show];
                    }
                    break;
                    
                case 13:
                    checker = 0;
                    for(int i=0; i<5; ++i){
                        for(int j=0; j<5; ++j){
                            if(Grid[i][j] != C13[i][j])
                                checker ++;
                        }
                    }
                    if(checker == 0){
                    NSString *Thing = [NSString stringWithFormat:@"C%iSolved", ChallengeID];
                    int Solve = (int)[[NSUserDefaults standardUserDefaults] integerForKey:Thing];
                    Solve ++;
                    [[NSUserDefaults standardUserDefaults] setInteger:Solve forKey:Thing];
                        UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Challenge Completed" message:@"Yeah! Ok! You have completed Challenge 13, Good Job!." delegate:nil cancelButtonTitle:@"Phone-Five!" otherButtonTitles: nil];
                        
                        [alert show];
                    }
                    break;
                    
                case 14:
                    checker = 0;
                    for(int i=0; i<5; ++i){
                        for(int j=0; j<5; ++j){
                            if(Grid[i][j] != C14[i][j])
                                checker ++;
                        }
                    }
                    if(checker == 0){
                    NSString *Thing = [NSString stringWithFormat:@"C%iSolved", ChallengeID];
                    int Solve = (int)[[NSUserDefaults standardUserDefaults] integerForKey:Thing];
                    Solve ++;
                    [[NSUserDefaults standardUserDefaults] setInteger:Solve forKey:Thing];
                        UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Challenge Completed" message:@"Yeah! Ok! You have completed Challenge 14, Good Job!." delegate:nil cancelButtonTitle:@"Phone-Five!" otherButtonTitles: nil];
                        
                        [alert show];
                    }
                    break;
                    
                case 15:
                    checker = 0;
                    for(int i=0; i<5; ++i){
                        for(int j=0; j<5; ++j){
                            if(Grid[i][j] != C15[i][j])
                                checker ++;
                        }
                    }
                    if(checker == 0){
                    NSString *Thing = [NSString stringWithFormat:@"C%iSolved", ChallengeID];
                    int Solve = (int)[[NSUserDefaults standardUserDefaults] integerForKey:Thing];
                    Solve ++;
                    [[NSUserDefaults standardUserDefaults] setInteger:Solve forKey:Thing];
                        UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Challenge Completed" message:@"Yeah! Ok! You have completed Challenge 15, Good Job!." delegate:nil cancelButtonTitle:@"Phone-Five!" otherButtonTitles: nil];
                        
                        [alert show];
                    }
                    break;
                    
                case 16:
                    checker = 0;
                    for(int i=0; i<5; ++i){
                        for(int j=0; j<5; ++j){
                            if(Grid[i][j] != C16[i][j])
                                checker ++;
                        }
                    }
                    if(checker == 0){
                    NSString *Thing = [NSString stringWithFormat:@"C%iSolved", ChallengeID];
                    int Solve = (int)[[NSUserDefaults standardUserDefaults] integerForKey:Thing];
                    Solve ++;
                    [[NSUserDefaults standardUserDefaults] setInteger:Solve forKey:Thing];
                        UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Challenge Completed" message:@"Yeah! Ok! You have completed Challenge 16, Good Job!." delegate:nil cancelButtonTitle:@"Phone-Five!" otherButtonTitles: nil];
                        
                        [alert show];
                    }
                    break;
                    
                    
                default:
                    if(ScoreNo == 25){
                        UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"You Won!"
                                                                        message:@"Yeah, you won, big deal!"
                                                                       delegate:self
                                                              cancelButtonTitle:@"Dismiss"
                                                              otherButtonTitles:@"Again!",nil];
                        [alert show];
                    }
                    break;
            }
        }

        
        _Score.text = [NSString stringWithFormat:@"%i", ScoreNo];
    }
    
}

- (IBAction)Bottom:(id)sender {
    
    if([sender tag] == 41){
        
        if(Grid[4][0] == false){
            Grid[4][0] = true;
            _Green21.hidden = NO;
        }
        else{
            Grid[4][0] = false;
            _Green21.hidden = YES;
        }
        
        if(Grid[4][1] == false){
            Grid[4][1] = true;
            _Green22.hidden = NO;
        }
        else{
            Grid[4][1] = false;
            _Green22.hidden = YES;
        }
        
        if(Grid[4][2] == false){
            Grid[4][2] = true;
            _Green23.hidden = NO;
        }
        else{
            Grid[4][2] = false;
            _Green23.hidden = YES;
        }
        if(Grid[3][1] == false){
            Grid[3][1] = true;
            _Green17.hidden = NO;
        }
        else{
            Grid[3][1] = false;
            _Green17.hidden = YES;
        }
    }
    
    else if ([sender tag] == 42){
        if(Grid[4][1] == false){
            Grid[4][1] = true;
            _Green22.hidden = NO;
        }
        else{
            Grid[4][1] = false;
            _Green22.hidden = YES;
        }
        
        if(Grid[4][2] == false){
            Grid[4][2] = true;
            _Green23.hidden = NO;
        }
        else{
            Grid[4][2] = false;
            _Green23.hidden = YES;
        }
        
        if(Grid[4][3] == false){
            Grid[4][3] = true;
            _Green24.hidden = NO;
        }
        else{
            Grid[4][3] = false;
            _Green24.hidden = YES;
        }
        if(Grid[3][2] == false){
            Grid[3][2] = true;
            _Green18.hidden = NO;
        }
        else{
            Grid[3][2] = false;
            _Green18.hidden = YES;
        }
    }
    
    else if ([sender tag] == 43){
        if(Grid[4][2] == false){
            Grid[4][2] = true;
            _Green23.hidden = NO;
        }
        else{
            Grid[4][2] = false;
            _Green23.hidden = YES;
        }
        
        if(Grid[4][3] == false){
            Grid[4][3] = true;
            _Green24.hidden = NO;
        }
        else{
            Grid[4][3] = false;
            _Green24.hidden = YES;
        }
        
        if(Grid[4][4] == false){
            Grid[4][4] = true;
            _Green25.hidden = NO;
        }
        else{
            Grid[4][4] = false;
            _Green25.hidden = YES;
        }
        if(Grid[3][3] == false){
            Grid[3][3] = true;
            _Green19.hidden = NO;
        }
        else{
            Grid[3][3] = false;
            _Green19.hidden = YES;
        }

    }
    
    
    ScoreNo = 0;
    for(int i=0; i<5; ++i){
        for(int j=0; j<5; ++j){
            if(Grid[i][j])
                ScoreNo++;
        }
    }
    
    if(ChallengeID == 0){
        if(ScoreNo == 25){
            int Solve5 = (int)[[NSUserDefaults standardUserDefaults] integerForKey:@"5Solved"];
            Solve5++;
            [[NSUserDefaults standardUserDefaults] setInteger:Solve5 forKey:@"5Solved"];
            UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"You Won!"
                                                            message:@"Yeah, you won, big deal!"
                                                           delegate:self
                                                  cancelButtonTitle:@"Dismiss"
                                                  otherButtonTitles:@"Again!",nil];
            [alert show];
        }
    }
    else{
        switch (ChallengeID) {
            case 1:
                checker = 0;
                for(int i=0; i<5; ++i){
                    for(int j=0; j<5; ++j){
                        if(Grid[i][j] != C1[i][j])
                            checker ++;
                    }
                }
                if(checker == 0){
                    NSString *Thing = [NSString stringWithFormat:@"C%iSolved", ChallengeID];
                    int Solve = (int)[[NSUserDefaults standardUserDefaults] integerForKey:Thing];
                    Solve ++;
                    [[NSUserDefaults standardUserDefaults] setInteger:Solve forKey:Thing];
                    UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Challenge Completed" message:@"Yeah! Ok! You have completed Challenge 1, Good Job!." delegate:nil cancelButtonTitle:@"Phone-Five!" otherButtonTitles: nil];
                    
                    [alert show];
                }
                break;
                
            case 2:
                checker = 0;
                for(int i=0; i<5; ++i){
                    for(int j=0; j<5; ++j){
                        if(Grid[i][j] != C2[i][j])
                            checker ++;
                    }
                }
                if(checker == 0){
                    NSString *Thing = [NSString stringWithFormat:@"C%iSolved", ChallengeID];
                    int Solve = (int)[[NSUserDefaults standardUserDefaults] integerForKey:Thing];
                    Solve ++;
                    [[NSUserDefaults standardUserDefaults] setInteger:Solve forKey:Thing];
                    UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Challenge Completed" message:@"Yeah! Ok! You have completed Challenge 2, Good Job!." delegate:nil cancelButtonTitle:@"Phone-Five!" otherButtonTitles: nil];
                    
                    [alert show];
                }
                break;
                
            case 3:
                checker = 0;
                for(int i=0; i<5; ++i){
                    for(int j=0; j<5; ++j){
                        if(Grid[i][j] != C3[i][j])
                            checker ++;
                    }
                }
                if(checker == 0){
                    NSString *Thing = [NSString stringWithFormat:@"C%iSolved", ChallengeID];
                    int Solve = (int)[[NSUserDefaults standardUserDefaults] integerForKey:Thing];
                    Solve ++;
                    [[NSUserDefaults standardUserDefaults] setInteger:Solve forKey:Thing];
                    UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Challenge Completed" message:@"Yeah! Ok! You have completed Challenge 3, Good Job!." delegate:nil cancelButtonTitle:@"Phone-Five!" otherButtonTitles: nil];
                    
                    [alert show];
                }
                break;
                
            case 4:
                checker = 0;
                for(int i=0; i<5; ++i){
                    for(int j=0; j<5; ++j){
                        if(Grid[i][j] != C4[i][j])
                            checker ++;
                    }
                }
                if(checker == 0){
                    NSString *Thing = [NSString stringWithFormat:@"C%iSolved", ChallengeID];
                    int Solve = (int)[[NSUserDefaults standardUserDefaults] integerForKey:Thing];
                    Solve ++;
                    [[NSUserDefaults standardUserDefaults] setInteger:Solve forKey:Thing];
                    UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Challenge Completed" message:@"Yeah! Ok! You have completed Challenge 4, Good Job!." delegate:nil cancelButtonTitle:@"Phone-Five!" otherButtonTitles: nil];
                    
                    [alert show];
                }
                break;
                
            case 5:
                checker = 0;
                for(int i=0; i<5; ++i){
                    for(int j=0; j<5; ++j){
                        if(Grid[i][j] != C5[i][j])
                            checker ++;
                    }
                }
                if(checker == 0){
                    NSString *Thing = [NSString stringWithFormat:@"C%iSolved", ChallengeID];
                    int Solve = (int)[[NSUserDefaults standardUserDefaults] integerForKey:Thing];
                    Solve ++;
                    [[NSUserDefaults standardUserDefaults] setInteger:Solve forKey:Thing];
                    UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Challenge Completed" message:@"Yeah! Ok! You have completed Challenge 5, Good Job!." delegate:nil cancelButtonTitle:@"Phone-Five!" otherButtonTitles: nil];
                    
                    [alert show];
                }
                break;
                
            case 6:
                checker = 0;
                for(int i=0; i<5; ++i){
                    for(int j=0; j<5; ++j){
                        if(Grid[i][j] != C6[i][j])
                            checker ++;
                    }
                }
                if(checker == 0){
                    NSString *Thing = [NSString stringWithFormat:@"C%iSolved", ChallengeID];
                    int Solve = (int)[[NSUserDefaults standardUserDefaults] integerForKey:Thing];
                    Solve ++;
                    [[NSUserDefaults standardUserDefaults] setInteger:Solve forKey:Thing];
                    UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Challenge Completed" message:@"Yeah! Ok! You have completed Challenge 6, Good Job!." delegate:nil cancelButtonTitle:@"Phone-Five!" otherButtonTitles: nil];
                    
                    [alert show];
                }
                break;
                
            case 7:
                checker = 0;
                for(int i=0; i<5; ++i){
                    for(int j=0; j<5; ++j){
                        if(Grid[i][j] != C7[i][j])
                            checker ++;
                    }
                }
                if(checker == 0){
                    NSString *Thing = [NSString stringWithFormat:@"C%iSolved", ChallengeID];
                    int Solve = (int)[[NSUserDefaults standardUserDefaults] integerForKey:Thing];
                    Solve ++;
                    [[NSUserDefaults standardUserDefaults] setInteger:Solve forKey:Thing];
                    UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Challenge Completed" message:@"Yeah! Ok! You have completed Challenge 7, Good Job!." delegate:nil cancelButtonTitle:@"Phone-Five!" otherButtonTitles: nil];
                    
                    [alert show];
                }
                break;
                
            case 8:
                checker = 0;
                for(int i=0; i<5; ++i){
                    for(int j=0; j<5; ++j){
                        if(Grid[i][j] != C8[i][j])
                            checker ++;
                    }
                }
                if(checker == 0){
                    NSString *Thing = [NSString stringWithFormat:@"C%iSolved", ChallengeID];
                    int Solve = (int)[[NSUserDefaults standardUserDefaults] integerForKey:Thing];
                    Solve ++;
                    [[NSUserDefaults standardUserDefaults] setInteger:Solve forKey:Thing];
                    UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Challenge Completed" message:@"Yeah! Ok! You have completed Challenge 8, Good Job!." delegate:nil cancelButtonTitle:@"Phone-Five!" otherButtonTitles: nil];
                    
                    [alert show];
                }
                break;
                
            case 9:
                checker = 0;
                for(int i=0; i<5; ++i){
                    for(int j=0; j<5; ++j){
                        if(Grid[i][j] != C9[i][j])
                            checker ++;
                    }
                }
                if(checker == 0){
                    NSString *Thing = [NSString stringWithFormat:@"C%iSolved", ChallengeID];
                    int Solve = (int)[[NSUserDefaults standardUserDefaults] integerForKey:Thing];
                    Solve ++;
                    [[NSUserDefaults standardUserDefaults] setInteger:Solve forKey:Thing];
                    UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Challenge Completed" message:@"Yeah! Ok! You have completed Challenge 9, Good Job!." delegate:nil cancelButtonTitle:@"Phone-Five!" otherButtonTitles: nil];
                    
                    [alert show];
                }
                break;
                
            case 10:
                checker = 0;
                for(int i=0; i<5; ++i){
                    for(int j=0; j<5; ++j){
                        if(Grid[i][j] != C10[i][j])
                            checker ++;
                    }
                }
                if(checker == 0){
                    NSString *Thing = [NSString stringWithFormat:@"C%iSolved", ChallengeID];
                    int Solve = (int)[[NSUserDefaults standardUserDefaults] integerForKey:Thing];
                    Solve ++;
                    [[NSUserDefaults standardUserDefaults] setInteger:Solve forKey:Thing];
                    UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Challenge Completed" message:@"Yeah! Ok! You have completed Challenge 10, Good Job!." delegate:nil cancelButtonTitle:@"Phone-Five!" otherButtonTitles: nil];
                    
                    [alert show];
                }
                break;
                
            case 11:
                checker = 0;
                for(int i=0; i<5; ++i){
                    for(int j=0; j<5; ++j){
                        if(Grid[i][j] != C11[i][j])
                            checker ++;
                    }
                }
                if(checker == 0){
                    NSString *Thing = [NSString stringWithFormat:@"C%iSolved", ChallengeID];
                    int Solve = (int)[[NSUserDefaults standardUserDefaults] integerForKey:Thing];
                    Solve ++;
                    [[NSUserDefaults standardUserDefaults] setInteger:Solve forKey:Thing];
                    UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Challenge Completed" message:@"Yeah! Ok! You have completed Challenge 11, Good Job!." delegate:nil cancelButtonTitle:@"Phone-Five!" otherButtonTitles: nil];
                    
                    [alert show];
                }
                break;
                
            case 12:
                checker = 0;
                for(int i=0; i<5; ++i){
                    for(int j=0; j<5; ++j){
                        if(Grid[i][j] != C12[i][j])
                            checker ++;
                    }
                }
                if(checker == 0){
                    NSString *Thing = [NSString stringWithFormat:@"C%iSolved", ChallengeID];
                    int Solve = (int)[[NSUserDefaults standardUserDefaults] integerForKey:Thing];
                    Solve ++;
                    [[NSUserDefaults standardUserDefaults] setInteger:Solve forKey:Thing];
                    UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Challenge Completed" message:@"Yeah! Ok! You have completed Challenge 12, Good Job!." delegate:nil cancelButtonTitle:@"Phone-Five!" otherButtonTitles: nil];
                    
                    [alert show];
                }
                break;
                
            case 13:
                checker = 0;
                for(int i=0; i<5; ++i){
                    for(int j=0; j<5; ++j){
                        if(Grid[i][j] != C13[i][j])
                            checker ++;
                    }
                }
                if(checker == 0){
                    NSString *Thing = [NSString stringWithFormat:@"C%iSolved", ChallengeID];
                    int Solve = (int)[[NSUserDefaults standardUserDefaults] integerForKey:Thing];
                    Solve ++;
                    [[NSUserDefaults standardUserDefaults] setInteger:Solve forKey:Thing];
                    UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Challenge Completed" message:@"Yeah! Ok! You have completed Challenge 13, Good Job!." delegate:nil cancelButtonTitle:@"Phone-Five!" otherButtonTitles: nil];
                    
                    [alert show];
                }
                break;
                
            case 14:
                checker = 0;
                for(int i=0; i<5; ++i){
                    for(int j=0; j<5; ++j){
                        if(Grid[i][j] != C14[i][j])
                            checker ++;
                    }
                }
                if(checker == 0){
                    NSString *Thing = [NSString stringWithFormat:@"C%iSolved", ChallengeID];
                    int Solve = (int)[[NSUserDefaults standardUserDefaults] integerForKey:Thing];
                    Solve ++;
                    [[NSUserDefaults standardUserDefaults] setInteger:Solve forKey:Thing];
                    UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Challenge Completed" message:@"Yeah! Ok! You have completed Challenge 14, Good Job!." delegate:nil cancelButtonTitle:@"Phone-Five!" otherButtonTitles: nil];
                    
                    [alert show];
                }
                break;
                
            case 15:
                checker = 0;
                for(int i=0; i<5; ++i){
                    for(int j=0; j<5; ++j){
                        if(Grid[i][j] != C15[i][j])
                            checker ++;
                    }
                }
                if(checker == 0){
                    NSString *Thing = [NSString stringWithFormat:@"C%iSolved", ChallengeID];
                    int Solve = (int)[[NSUserDefaults standardUserDefaults] integerForKey:Thing];
                    Solve ++;
                    [[NSUserDefaults standardUserDefaults] setInteger:Solve forKey:Thing];
                    UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Challenge Completed" message:@"Yeah! Ok! You have completed Challenge 15, Good Job!." delegate:nil cancelButtonTitle:@"Phone-Five!" otherButtonTitles: nil];
                    
                    [alert show];
                }
                break;
                
            case 16:
                checker = 0;
                for(int i=0; i<5; ++i){
                    for(int j=0; j<5; ++j){
                        if(Grid[i][j] != C16[i][j])
                            checker ++;
                    }
                }
                if(checker == 0){
                    NSString *Thing = [NSString stringWithFormat:@"C%iSolved", ChallengeID];
                    int Solve = (int)[[NSUserDefaults standardUserDefaults] integerForKey:Thing];
                    Solve ++;
                    [[NSUserDefaults standardUserDefaults] setInteger:Solve forKey:Thing];
                    UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Challenge Completed" message:@"Yeah! Ok! You have completed Challenge 16, Good Job!." delegate:nil cancelButtonTitle:@"Phone-Five!" otherButtonTitles: nil];
                    
                    [alert show];
                }
                break;
                
                
            default:
                if(ScoreNo == 25){
                    UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"You Won!"
                                                                    message:@"Yeah, you won, big deal!"
                                                                   delegate:self
                                                          cancelButtonTitle:@"Dismiss"
                                                          otherButtonTitles:@"Again!",nil];
                    [alert show];
                }
                break;
        }
    }
    
    _Score.text = [NSString stringWithFormat:@"%i", ScoreNo];
}

- (IBAction)Center:(id)sender {
    
    if([sender tag] == 11){
        if(Grid[0][1] == false){
            Grid[0][1] = true;
            _Green2.hidden = NO;
        }
        else{
            Grid[0][1] = false;
            _Green2.hidden = YES;
        }
        if(Grid[1][0] == false){
            Grid[1][0] = true;
            _Green6.hidden = NO;
        }
        else{
            Grid[1][0] = false;
            _Green6.hidden = YES;
        }
        
        if(Grid[1][1] == false){
            Grid[1][1] = true;
            _Green7.hidden = NO;
        }
        else{
            Grid[1][1] = false;
            _Green7.hidden = YES;
        }
        
        if(Grid[1][2] == false){
            Grid[1][2] = true;
            _Green8.hidden = NO;
        }
        else{
            Grid[1][2] = false;
            _Green8.hidden = YES;
        }
        if(Grid[2][1] == false){
            Grid[2][1] = true;
            _Green12.hidden = NO;
        }
        else{
            Grid[2][1] = false;
            _Green12.hidden = YES;
        }
    }
    
    if([sender tag] == 12){
        if(Grid[0][2] == false){
            Grid[0][2] = true;
            _Green3.hidden = NO;
        }
        else{
            Grid[0][2] = false;
            _Green3.hidden = YES;
        }
        if(Grid[1][1] == false){
            Grid[1][1] = true;
            _Green7.hidden = NO;
        }
        else{
            Grid[1][1] = false;
            _Green7.hidden = YES;
        }
        
        if(Grid[1][2] == false){
            Grid[1][2] = true;
            _Green8.hidden = NO;
        }
        else{
            Grid[1][2] = false;
            _Green8.hidden = YES;
        }
        
        if(Grid[1][3] == false){
            Grid[1][3] = true;
            _Green9.hidden = NO;
        }
        else{
            Grid[1][3] = false;
            _Green9.hidden = YES;
        }
        if(Grid[2][2] == false){
            Grid[2][2] = true;
            _Green13.hidden = NO;
        }
        else{
            Grid[2][2] = false;
            _Green13.hidden = YES;
        }

    }
    
    if([sender tag] == 13){
        if(Grid[2][3] == false){
            Grid[2][3] = true;
            _Green14.hidden = NO;
        }
        else{
            Grid[2][3] = false;
            _Green14.hidden = YES;
        }
        if(Grid[1][2] == false){
            Grid[1][2] = true;
            _Green8.hidden = NO;
        }
        else{
            Grid[1][2] = false;
            _Green8.hidden = YES;
        }
        
        if(Grid[1][3] == false){
            Grid[1][3] = true;
            _Green9.hidden = NO;
        }
        else{
            Grid[1][3] = false;
            _Green9.hidden = YES;
        }
        
        if(Grid[1][4] == false){
            Grid[1][4] = true;
            _Green10.hidden = NO;
        }
        else{
            Grid[1][4] = false;
            _Green10.hidden = YES;
        }
        if(Grid[0][3] == false){
            Grid[0][3] = true;
            _Green4.hidden = NO;
        }
        else{
            Grid[0][3] = false;
            _Green4.hidden = YES;
        }
    }
    
    if([sender tag] == 21){
        if(Grid[1][1] == false){
            Grid[1][1] = true;
            _Green7.hidden = NO;
        }
        else{
            Grid[1][1] = false;
            _Green7.hidden = YES;
        }
        if(Grid[2][0] == false){
            Grid[2][0] = true;
            _Green11.hidden = NO;
        }
        else{
            Grid[2][0] = false;
            _Green11.hidden = YES;
        }
        
        if(Grid[2][1] == false){
            Grid[2][1] = true;
            _Green12.hidden = NO;
        }
        else{
            Grid[2][1] = false;
            _Green12.hidden = YES;
        }
        
        if(Grid[2][2] == false){
            Grid[2][2] = true;
            _Green13.hidden = NO;
        }
        else{
            Grid[2][2] = false;
            _Green13.hidden = YES;
        }
        if(Grid[3][1] == false){
            Grid[3][1] = true;
            _Green17.hidden = NO;
        }
        else{
            Grid[3][1] = false;
            _Green17.hidden = YES;
        }
    }
    
    if([sender tag] == 22){
        if(Grid[3][2] == false){
            Grid[3][2] = true;
            _Green18.hidden = NO;
        }
        else{
            Grid[3][2] = false;
            _Green18.hidden = YES;
        }
        if(Grid[2][1] == false){
            Grid[2][1] = true;
            _Green12.hidden = NO;
        }
        else{
            Grid[2][1] = false;
            _Green12.hidden = YES;
        }
        
        if(Grid[2][2] == false){
            Grid[2][2] = true;
            _Green13.hidden = NO;
        }
        else{
            Grid[2][2] = false;
            _Green13.hidden = YES;
        }
        
        if(Grid[2][3] == false){
            Grid[2][3] = true;
            _Green14.hidden = NO;
        }
        else{
            Grid[2][3] = false;
            _Green14.hidden = YES;
        }
        if(Grid[1][2] == false){
            Grid[1][2] = true;
            _Green8.hidden = NO;
        }
        else{
            Grid[1][2] = false;
            _Green8.hidden = YES;
        }
    }
    
    if([sender tag] == 23){
        if(Grid[1][3] == false){
            Grid[1][3] = true;
            _Green9.hidden = NO;
        }
        else{
            Grid[1][3] = false;
            _Green9.hidden = YES;
        }
        if(Grid[2][2] == false){
            Grid[2][2] = true;
            _Green13.hidden = NO;
        }
        else{
            Grid[2][2] = false;
            _Green13.hidden = YES;
        }
        
        if(Grid[2][3] == false){
            Grid[2][3] = true;
            _Green14.hidden = NO;
        }
        else{
            Grid[2][3] = false;
            _Green14.hidden = YES;
        }
        
        if(Grid[2][4] == false){
            Grid[2][4] = true;
            _Green15.hidden = NO;
        }
        else{
            Grid[2][4] = false;
            _Green15.hidden = YES;
        }
        if(Grid[3][3] == false){
            Grid[3][3] = true;
            _Green19.hidden = NO;
        }
        else{
            Grid[3][3] = false;
            _Green19.hidden = YES;
        }

    }
    
    if([sender tag] == 31){
        if(Grid[2][1] == false){
            Grid[2][1] = true;
            _Green12.hidden = NO;
        }
        else{
            Grid[2][1] = false;
            _Green12.hidden = YES;
        }
        if(Grid[3][0] == false){
            Grid[3][0] = true;
            _Green16.hidden = NO;
        }
        else{
            Grid[3][0] = false;
            _Green16.hidden = YES;
        }
        
        if(Grid[3][1] == false){
            Grid[3][1] = true;
            _Green17.hidden = NO;
        }
        else{
            Grid[3][1] = false;
            _Green17.hidden = YES;
        }
        
        if(Grid[3][2] == false){
            Grid[3][2] = true;
            _Green18.hidden = NO;
        }
        else{
            Grid[3][2] = false;
            _Green18.hidden = YES;
        }
        if(Grid[4][1] == false){
            Grid[4][1] = true;
            _Green22.hidden = NO;
        }
        else{
            Grid[4][1] = false;
            _Green22.hidden = YES;
        }

    }
    
    if([sender tag] == 32){
        if(Grid[2][2] == false){
            Grid[2][2] = true;
            _Green13.hidden = NO;
        }
        else{
            Grid[2][2] = false;
            _Green13.hidden = YES;
        }
        if(Grid[3][1] == false){
            Grid[3][1] = true;
            _Green17.hidden = NO;
        }
        else{
            Grid[3][1] = false;
            _Green17.hidden = YES;
        }
        
        if(Grid[3][2] == false){
            Grid[3][2] = true;
            _Green18.hidden = NO;
        }
        else{
            Grid[3][2] = false;
            _Green18.hidden = YES;
        }
        
        if(Grid[3][3] == false){
            Grid[3][3] = true;
            _Green19.hidden = NO;
        }
        else{
            Grid[3][3] = false;
            _Green19.hidden = YES;
        }
        if(Grid[4][2] == false){
            Grid[4][2] = true;
            _Green23.hidden = NO;
        }
        else{
            Grid[4][2] = false;
            _Green23.hidden = YES;
        }
    }
    
    if([sender tag] == 33){
        if(Grid[2][3] == false){
            Grid[2][3] = true;
            _Green14.hidden = NO;
        }
        else{
            Grid[2][3] = false;
            _Green14.hidden = YES;
        }
        if(Grid[3][2] == false){
            Grid[3][2] = true;
            _Green18.hidden = NO;
        }
        else{
            Grid[3][2] = false;
            _Green18.hidden = YES;
        }
        
        if(Grid[3][3] == false){
            Grid[3][3] = true;
            _Green19.hidden = NO;
        }
        else{
            Grid[3][3] = false;
            _Green19.hidden = YES;
        }
        
        if(Grid[3][4] == false){
            Grid[3][4] = true;
            _Green20.hidden = NO;
        }
        else{
            Grid[3][4] = false;
            _Green20.hidden = YES;
        }
        if(Grid[4][3] == false){
            Grid[4][3] = true;
            _Green24.hidden = NO;
        }
        else{
            Grid[4][3] = false;
            _Green24.hidden = YES;
        }

    }
    
    ScoreNo = 0;
    for(int i=0; i<5; ++i){
        for(int j=0; j<5; ++j){
            if(Grid[i][j])
                ScoreNo++;
        }
    }
    
    if(ChallengeID == 0){
        if(ScoreNo == 25){
            int Solve5 = (int)[[NSUserDefaults standardUserDefaults] integerForKey:@"5Solved"];
            Solve5++;
            [[NSUserDefaults standardUserDefaults] setInteger:Solve5 forKey:@"5Solved"];
            UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"You Won!"
                                                            message:@"Yeah, you won, big deal!"
                                                           delegate:self
                                                  cancelButtonTitle:@"Dismiss"
                                                  otherButtonTitles:@"Again!",nil];
            [alert show];
        }
    }
    else{
        switch (ChallengeID) {
            case 1:
                checker = 0;
                for(int i=0; i<5; ++i){
                    for(int j=0; j<5; ++j){
                        if(Grid[i][j] != C1[i][j])
                            checker ++;
                    }
                }
                if(checker == 0){
                    NSString *Thing = [NSString stringWithFormat:@"C%iSolved", ChallengeID];
                    int Solve = (int)[[NSUserDefaults standardUserDefaults] integerForKey:Thing];
                    Solve ++;
                    [[NSUserDefaults standardUserDefaults] setInteger:Solve forKey:Thing];
                    UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Challenge Completed" message:@"Yeah! Ok! You have completed Challenge 1, Good Job!." delegate:nil cancelButtonTitle:@"Phone-Five!" otherButtonTitles: nil];
                    
                    [alert show];
                }
                break;
                
            case 2:
                checker = 0;
                for(int i=0; i<5; ++i){
                    for(int j=0; j<5; ++j){
                        if(Grid[i][j] != C2[i][j])
                            checker ++;
                    }
                }
                if(checker == 0){
                    NSString *Thing = [NSString stringWithFormat:@"C%iSolved", ChallengeID];
                    int Solve = (int)[[NSUserDefaults standardUserDefaults] integerForKey:Thing];
                    Solve ++;
                    [[NSUserDefaults standardUserDefaults] setInteger:Solve forKey:Thing];
                    UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Challenge Completed" message:@"Yeah! Ok! You have completed Challenge 2, Good Job!." delegate:nil cancelButtonTitle:@"Phone-Five!" otherButtonTitles: nil];
                    
                    [alert show];
                }
                break;
                
            case 3:
                checker = 0;
                for(int i=0; i<5; ++i){
                    for(int j=0; j<5; ++j){
                        if(Grid[i][j] != C3[i][j])
                            checker ++;
                    }
                }
                if(checker == 0){
                    NSString *Thing = [NSString stringWithFormat:@"C%iSolved", ChallengeID];
                    int Solve = (int)[[NSUserDefaults standardUserDefaults] integerForKey:Thing];
                    Solve ++;
                    [[NSUserDefaults standardUserDefaults] setInteger:Solve forKey:Thing];
                    UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Challenge Completed" message:@"Yeah! Ok! You have completed Challenge 3, Good Job!." delegate:nil cancelButtonTitle:@"Phone-Five!" otherButtonTitles: nil];
                    
                    [alert show];
                }
                break;
                
            case 4:
                checker = 0;
                for(int i=0; i<5; ++i){
                    for(int j=0; j<5; ++j){
                        if(Grid[i][j] != C4[i][j])
                            checker ++;
                    }
                }
                if(checker == 0){
                    NSString *Thing = [NSString stringWithFormat:@"C%iSolved", ChallengeID];
                    int Solve = (int)[[NSUserDefaults standardUserDefaults] integerForKey:Thing];
                    Solve ++;
                    [[NSUserDefaults standardUserDefaults] setInteger:Solve forKey:Thing];
                    UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Challenge Completed" message:@"Yeah! Ok! You have completed Challenge 4, Good Job!." delegate:nil cancelButtonTitle:@"Phone-Five!" otherButtonTitles: nil];
                    
                    [alert show];
                }
                break;
                
            case 5:
                checker = 0;
                for(int i=0; i<5; ++i){
                    for(int j=0; j<5; ++j){
                        if(Grid[i][j] != C5[i][j])
                            checker ++;
                    }
                }
                if(checker == 0){
                    NSString *Thing = [NSString stringWithFormat:@"C%iSolved", ChallengeID];
                    int Solve = (int)[[NSUserDefaults standardUserDefaults] integerForKey:Thing];
                    Solve ++;
                    [[NSUserDefaults standardUserDefaults] setInteger:Solve forKey:Thing];
                    UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Challenge Completed" message:@"Yeah! Ok! You have completed Challenge 5, Good Job!." delegate:nil cancelButtonTitle:@"Phone-Five!" otherButtonTitles: nil];
                    
                    [alert show];
                }
                break;
                
            case 6:
                checker = 0;
                for(int i=0; i<5; ++i){
                    for(int j=0; j<5; ++j){
                        if(Grid[i][j] != C6[i][j])
                            checker ++;
                    }
                }
                if(checker == 0){
                    NSString *Thing = [NSString stringWithFormat:@"C%iSolved", ChallengeID];
                    int Solve = (int)[[NSUserDefaults standardUserDefaults] integerForKey:Thing];
                    Solve ++;
                    [[NSUserDefaults standardUserDefaults] setInteger:Solve forKey:Thing];
                    UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Challenge Completed" message:@"Yeah! Ok! You have completed Challenge 6, Good Job!." delegate:nil cancelButtonTitle:@"Phone-Five!" otherButtonTitles: nil];
                    
                    [alert show];
                }
                break;
                
            case 7:
                checker = 0;
                for(int i=0; i<5; ++i){
                    for(int j=0; j<5; ++j){
                        if(Grid[i][j] != C7[i][j])
                            checker ++;
                    }
                }
                if(checker == 0){
                    NSString *Thing = [NSString stringWithFormat:@"C%iSolved", ChallengeID];
                    int Solve = (int)[[NSUserDefaults standardUserDefaults] integerForKey:Thing];
                    Solve ++;
                    [[NSUserDefaults standardUserDefaults] setInteger:Solve forKey:Thing];
                    UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Challenge Completed" message:@"Yeah! Ok! You have completed Challenge 7, Good Job!." delegate:nil cancelButtonTitle:@"Phone-Five!" otherButtonTitles: nil];
                    
                    [alert show];
                }
                break;
                
            case 8:
                checker = 0;
                for(int i=0; i<5; ++i){
                    for(int j=0; j<5; ++j){
                        if(Grid[i][j] != C8[i][j])
                            checker ++;
                    }
                }
                if(checker == 0){
                    NSString *Thing = [NSString stringWithFormat:@"C%iSolved", ChallengeID];
                    int Solve = (int)[[NSUserDefaults standardUserDefaults] integerForKey:Thing];
                    Solve ++;
                    [[NSUserDefaults standardUserDefaults] setInteger:Solve forKey:Thing];
                    UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Challenge Completed" message:@"Yeah! Ok! You have completed Challenge 8, Good Job!." delegate:nil cancelButtonTitle:@"Phone-Five!" otherButtonTitles: nil];
                    
                    [alert show];
                }
                break;
                
            case 9:
                checker = 0;
                for(int i=0; i<5; ++i){
                    for(int j=0; j<5; ++j){
                        if(Grid[i][j] != C9[i][j])
                            checker ++;
                    }
                }
                if(checker == 0){
                    NSString *Thing = [NSString stringWithFormat:@"C%iSolved", ChallengeID];
                    int Solve = (int)[[NSUserDefaults standardUserDefaults] integerForKey:Thing];
                    Solve ++;
                    [[NSUserDefaults standardUserDefaults] setInteger:Solve forKey:Thing];
                    UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Challenge Completed" message:@"Yeah! Ok! You have completed Challenge 9, Good Job!." delegate:nil cancelButtonTitle:@"Phone-Five!" otherButtonTitles: nil];
                    
                    [alert show];
                }
                break;
                
            case 10:
                checker = 0;
                for(int i=0; i<5; ++i){
                    for(int j=0; j<5; ++j){
                        if(Grid[i][j] != C10[i][j])
                            checker ++;
                    }
                }
                if(checker == 0){
                    NSString *Thing = [NSString stringWithFormat:@"C%iSolved", ChallengeID];
                    int Solve = (int)[[NSUserDefaults standardUserDefaults] integerForKey:Thing];
                    Solve ++;
                    [[NSUserDefaults standardUserDefaults] setInteger:Solve forKey:Thing];
                    UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Challenge Completed" message:@"Yeah! Ok! You have completed Challenge 10, Good Job!." delegate:nil cancelButtonTitle:@"Phone-Five!" otherButtonTitles: nil];
                    
                    [alert show];
                }
                break;
                
            case 11:
                checker = 0;
                for(int i=0; i<5; ++i){
                    for(int j=0; j<5; ++j){
                        if(Grid[i][j] != C11[i][j])
                            checker ++;
                    }
                }
                if(checker == 0){
                    NSString *Thing = [NSString stringWithFormat:@"C%iSolved", ChallengeID];
                    int Solve = (int)[[NSUserDefaults standardUserDefaults] integerForKey:Thing];
                    Solve ++;
                    [[NSUserDefaults standardUserDefaults] setInteger:Solve forKey:Thing];
                    UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Challenge Completed" message:@"Yeah! Ok! You have completed Challenge 11, Good Job!." delegate:nil cancelButtonTitle:@"Phone-Five!" otherButtonTitles: nil];
                    
                    [alert show];
                }
                break;
                
            case 12:
                checker = 0;
                for(int i=0; i<5; ++i){
                    for(int j=0; j<5; ++j){
                        if(Grid[i][j] != C12[i][j])
                            checker ++;
                    }
                }
                if(checker == 0){
                    NSString *Thing = [NSString stringWithFormat:@"C%iSolved", ChallengeID];
                    int Solve = (int)[[NSUserDefaults standardUserDefaults] integerForKey:Thing];
                    Solve ++;
                    [[NSUserDefaults standardUserDefaults] setInteger:Solve forKey:Thing];
                    UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Challenge Completed" message:@"Yeah! Ok! You have completed Challenge 12, Good Job!." delegate:nil cancelButtonTitle:@"Phone-Five!" otherButtonTitles: nil];
                    
                    [alert show];
                }
                break;
                
            case 13:
                checker = 0;
                for(int i=0; i<5; ++i){
                    for(int j=0; j<5; ++j){
                        if(Grid[i][j] != C13[i][j])
                            checker ++;
                    }
                }
                if(checker == 0){
                    NSString *Thing = [NSString stringWithFormat:@"C%iSolved", ChallengeID];
                    int Solve = (int)[[NSUserDefaults standardUserDefaults] integerForKey:Thing];
                    Solve ++;
                    [[NSUserDefaults standardUserDefaults] setInteger:Solve forKey:Thing];
                    UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Challenge Completed" message:@"Yeah! Ok! You have completed Challenge 13, Good Job!." delegate:nil cancelButtonTitle:@"Phone-Five!" otherButtonTitles: nil];
                    
                    [alert show];
                }
                break;
                
            case 14:
                checker = 0;
                for(int i=0; i<5; ++i){
                    for(int j=0; j<5; ++j){
                        if(Grid[i][j] != C14[i][j])
                            checker ++;
                    }
                }
                if(checker == 0){
                    NSString *Thing = [NSString stringWithFormat:@"C%iSolved", ChallengeID];
                    int Solve = (int)[[NSUserDefaults standardUserDefaults] integerForKey:Thing];
                    Solve ++;
                    [[NSUserDefaults standardUserDefaults] setInteger:Solve forKey:Thing];
                    UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Challenge Completed" message:@"Yeah! Ok! You have completed Challenge 14, Good Job!." delegate:nil cancelButtonTitle:@"Phone-Five!" otherButtonTitles: nil];
                    
                    [alert show];
                }
                break;
                
            case 15:
                checker = 0;
                for(int i=0; i<5; ++i){
                    for(int j=0; j<5; ++j){
                        if(Grid[i][j] != C15[i][j])
                            checker ++;
                    }
                }
                if(checker == 0){
                    NSString *Thing = [NSString stringWithFormat:@"C%iSolved", ChallengeID];
                    int Solve = (int)[[NSUserDefaults standardUserDefaults] integerForKey:Thing];
                    Solve ++;
                    [[NSUserDefaults standardUserDefaults] setInteger:Solve forKey:Thing];
                    UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Challenge Completed" message:@"Yeah! Ok! You have completed Challenge 15, Good Job!." delegate:nil cancelButtonTitle:@"Phone-Five!" otherButtonTitles: nil];
                    
                    [alert show];
                }
                break;
                
            case 16:
                checker = 0;
                for(int i=0; i<5; ++i){
                    for(int j=0; j<5; ++j){
                        if(Grid[i][j] != C16[i][j])
                            checker ++;
                    }
                }
                if(checker == 0){
                    NSString *Thing = [NSString stringWithFormat:@"C%iSolved", ChallengeID];
                    int Solve = (int)[[NSUserDefaults standardUserDefaults] integerForKey:Thing];
                    Solve ++;
                    [[NSUserDefaults standardUserDefaults] setInteger:Solve forKey:Thing];
                    UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Challenge Completed" message:@"Yeah! Ok! You have completed Challenge 16, Good Job!." delegate:nil cancelButtonTitle:@"Phone-Five!" otherButtonTitles: nil];
                    
                    [alert show];
                }
                break;
                
                
            default:
                if(ScoreNo == 25){
                    UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"You Won!"
                                                                    message:@"Yeah, you won, big deal!"
                                                                   delegate:self
                                                          cancelButtonTitle:@"Dismiss"
                                                          otherButtonTitles:@"Again!",nil];
                    [alert show];
                }
                break;
        }
    }
    _Score.text = [NSString stringWithFormat:@"%i", ScoreNo];
}

- (void)alertView:(UIAlertView *)alertView clickedButtonAtIndex:(NSInteger)buttonIndex
{
    NSString *title = [alertView buttonTitleAtIndex:buttonIndex];
    if([title isEqualToString:@"Again!"])
    {
        ttp = 0;
        [[NSUserDefaults standardUserDefaults] setInteger:ttp forKey:@"5Times"];
        
        _Green1.hidden = YES;
        _Green2.hidden = YES;
        _Green3.hidden = YES;
        _Green4.hidden = YES;
        _Green5.hidden = YES;
        _Green6.hidden = YES;
        _Green7.hidden = YES;
        _Green8.hidden = YES;
        _Green9.hidden = YES;
        _Green10.hidden = YES;
        _Green11.hidden = YES;
        _Green12.hidden = YES;
        _Green13.hidden = YES;
        _Green14.hidden = YES;
        _Green15.hidden = YES;
        _Green16.hidden = YES;
        _Green17.hidden = YES;
        _Green18.hidden = YES;
        _Green19.hidden = YES;
        _Green20.hidden = YES;
        _Green21.hidden = YES;
        _Green22.hidden = YES;
        _Green23.hidden = YES;
        _Green24.hidden = YES;
        _Green25.hidden = YES;
        
        for(int i=0; i<5; ++i){
            for(int j=0; j<5; ++j)
                Grid[i][j] = false;
        }
        
        ttp = (int)[[NSUserDefaults standardUserDefaults] integerForKey:@"5Times"];
        
        switch(ttp % 20){
            case 0:
                Grid[1][2] = true;
                Grid[2][1] = true;
                Grid[2][2] = true;
                Grid[2][3] = true;
                Grid[3][2] = true;
                _Green8.hidden = NO;
                _Green12.hidden = NO;
                _Green13.hidden = NO;
                _Green14.hidden = NO;
                _Green18.hidden = NO;
                break;
                
            case 1:
                Grid[1][0] = true;
                Grid[4][1] = true;
                Grid[3][4] = true;
                Grid[0][3] = true;
                Grid[2][2] = true;
                _Green6.hidden = NO;
                _Green22.hidden = NO;
                _Green20.hidden = NO;
                _Green4.hidden = NO;
                _Green13.hidden = NO;
                break;
                
            case 2:
                Grid[0][0] = true;
                Grid[4][0] = true;
                Grid[4][4] = true;
                Grid[0][4] = true;
                Grid[2][2] = true;
                _Green1.hidden = NO;
                _Green5.hidden = NO;
                _Green21.hidden = NO;
                _Green25.hidden = NO;
                _Green13.hidden = NO;
                break;
                
            case 3:
                Grid[1][1] = true;
                Grid[1][3] = true;
                Grid[2][2] = true;
                Grid[3][1] = true;
                Grid[3][3] = true;
                _Green7.hidden = NO;
                _Green9.hidden = NO;
                _Green13.hidden = NO;
                _Green17.hidden = NO;
                _Green19.hidden = NO;
                break;
                
            case 4:
                Grid[0][2] = true;
                Grid[2][0] = true;
                Grid[2][2] = true;
                Grid[2][4] = true;
                Grid[4][2] = true;
                _Green3.hidden = NO;
                _Green11.hidden = NO;
                _Green13.hidden = NO;
                _Green15.hidden = NO;
                _Green23.hidden = NO;
                break;
                
            case 5:
                Grid[0][0] = true;
                Grid[1][1] = true;
                Grid[2][2] = true;
                Grid[3][3] = true;
                Grid[4][4] = true;
                _Green1.hidden = NO;
                _Green7.hidden = NO;
                _Green13.hidden = NO;
                _Green19.hidden = NO;
                _Green25.hidden = NO;
                break;
                
            case 6:
                Grid[0][4] = true;
                Grid[1][3] = true;
                Grid[2][2] = true;
                Grid[3][1] = true;
                Grid[4][0] = true;
                _Green5.hidden = NO;
                _Green9.hidden = NO;
                _Green13.hidden = NO;
                _Green17.hidden = NO;
                _Green21.hidden = NO;
                break;
                
            case 7:
                Grid[0][0] = true;
                Grid[0][4] = true;
                Grid[4][0] = true;
                Grid[4][4] = true;
                _Green1.hidden = NO;
                _Green5.hidden = NO;
                _Green21.hidden = NO;
                _Green25.hidden = NO;
                break;
                
            case 8:
                Grid[0][4] = true;
                Grid[0][2] = true;
                Grid[2][4] = true;
                Grid[2][0] = true;
                Grid[4][2] = true;
                Grid[4][0] = true;
                _Green5.hidden = NO;
                _Green3.hidden = NO;
                _Green15.hidden = NO;
                _Green11.hidden = NO;
                _Green23.hidden = NO;
                _Green21.hidden = NO;
                break;
                
            case 9:
                Grid[3][0] = true;
                Grid[0][1] = true;
                Grid[1][4] = true;
                Grid[4][3] = true;
                Grid[2][2] = true;
                _Green16.hidden = NO;
                _Green2.hidden = NO;
                _Green10.hidden = NO;
                _Green24.hidden = NO;
                _Green13.hidden = NO;
                break;
                
            case 10:
                Grid[3][0] = true;
                Grid[0][1] = true;
                Grid[1][4] = true;
                Grid[4][3] = true;
                _Green16.hidden = NO;
                _Green2.hidden = NO;
                _Green10.hidden = NO;
                _Green24.hidden = NO;
                break;
                
            case 11:
                Grid[1][0] = true;
                Grid[0][1] = true;
                Grid[3][1] = true;
                Grid[1][3] = true;
                Grid[2][2] = true;
                Grid[4][3] = true;
                Grid[3][4] = true;
                _Green6.hidden = NO;
                _Green2.hidden = NO;
                _Green17.hidden = NO;
                _Green9.hidden = NO;
                _Green13.hidden = NO;
                _Green24.hidden = NO;
                _Green20.hidden = NO;
                break;
                
            case 12:
                Grid[0][0] = true;
                Grid[1][1] = true;
                Grid[3][3] = true;
                Grid[4][4] = true;
                Grid[0][4] = true;
                Grid[1][3] = true;
                Grid[3][1] = true;
                Grid[4][0] = true;
                _Green1.hidden = NO;
                _Green7.hidden = NO;
                _Green19.hidden = NO;
                _Green25.hidden = NO;
                _Green5.hidden = NO;
                _Green9.hidden = NO;
                _Green17.hidden = NO;
                _Green21.hidden = NO;
                break;
                
            case 13:
                Grid[0][2] = true;
                Grid[1][1] = true;
                Grid[1][3] = true;
                Grid[2][0] = true;
                Grid[2][2] = true;
                Grid[2][4] = true;
                Grid[3][1] = true;
                Grid[3][3] = true;
                Grid[4][2] = true;
                _Green3.hidden = NO;
                _Green7.hidden = NO;
                _Green9.hidden = NO;
                _Green11.hidden = NO;
                _Green13.hidden = NO;
                _Green15.hidden = NO;
                _Green17.hidden = NO;
                _Green19.hidden = NO;
                _Green23.hidden = NO;
                break;
                
            case 14:
                Grid[0][2] = true;
                Grid[1][1] = true;
                Grid[1][3] = true;
                Grid[2][0] = true;
                Grid[2][2] = true;
                Grid[2][4] = true;
                Grid[3][1] = true;
                Grid[3][3] = true;
                Grid[4][2] = true;
                Grid[0][0] = true;
                Grid[0][4] = true;
                Grid[4][0] = true;
                Grid[4][4] = true;
                _Green1.hidden = NO;
                _Green5.hidden = NO;
                _Green21.hidden = NO;
                _Green25.hidden = NO;
                _Green3.hidden = NO;
                _Green7.hidden = NO;
                _Green9.hidden = NO;
                _Green11.hidden = NO;
                _Green13.hidden = NO;
                _Green15.hidden = NO;
                _Green17.hidden = NO;
                _Green19.hidden = NO;
                _Green23.hidden = NO;
                break;
                
            case 15:
                Grid[2][2] = true;
                _Green13.hidden = NO;
                break;
                
            case 16:
                Grid[1][2] = true;
                Grid[2][1] = true;
                Grid[2][3] = true;
                Grid[3][2] = true;
                _Green8.hidden = NO;
                _Green12.hidden = NO;
                _Green14.hidden = NO;
                _Green18.hidden = NO;
                break;
                
            case 17:
                Grid[2][0] = true;
                Grid[2][1] = true;
                Grid[2][2] = true;
                Grid[2][3] = true;
                Grid[2][4] = true;
                _Green11.hidden = NO;
                _Green12.hidden = NO;
                _Green13.hidden = NO;
                _Green14.hidden = NO;
                _Green15.hidden = NO;
                break;
                
            case 18:
                Grid[0][2] = true;
                Grid[1][2] = true;
                Grid[2][2] = true;
                Grid[3][2] = true;
                Grid[4][2] = true;
                _Green3.hidden = NO;
                _Green8.hidden = NO;
                _Green13.hidden = NO;
                _Green18.hidden = NO;
                _Green23.hidden = NO;
                break;
                
            case 19:
                Grid[2][0] = true;
                Grid[2][1] = true;
                Grid[2][3] = true;
                Grid[2][4] = true;
                Grid[0][2] = true;
                Grid[1][2] = true;
                Grid[3][2] = true;
                Grid[4][2] = true;
                _Green3.hidden = NO;
                _Green8.hidden = NO;
                _Green18.hidden = NO;
                _Green23.hidden = NO;
                _Green11.hidden = NO;
                _Green12.hidden = NO;
                _Green14.hidden = NO;
                _Green15.hidden = NO;
                break;
                
            default:
                Grid[1][2] = true;
                Grid[2][1] = true;
                Grid[2][2] = true;
                Grid[2][3] = true;
                Grid[3][2] = true;
                _Green8.hidden = NO;
                _Green12.hidden = NO;
                _Green13.hidden = NO;
                _Green14.hidden = NO;
                _Green18.hidden = NO;
                break;
                
        }
        
        
        
        ScoreNo = 0;
        
        for(int i=0; i<5; ++i){
            for(int j=0; j<5; ++j){
                if(Grid[i][j])
                    ScoreNo++;
            }
        }
        
        ttp ++;
        [[NSUserDefaults standardUserDefaults] setInteger:ttp forKey:@"5Times"];
        
        _Score.text = [NSString stringWithFormat:@"%i", ScoreNo];
    }
}

- (IBAction)Reset:(id)sender {
    _Green1.hidden = YES;
    _Green2.hidden = YES;
    _Green3.hidden = YES;
    _Green4.hidden = YES;
    _Green5.hidden = YES;
    _Green6.hidden = YES;
    _Green7.hidden = YES;
    _Green8.hidden = YES;
    _Green9.hidden = YES;
    _Green10.hidden = YES;
    _Green11.hidden = YES;
    _Green12.hidden = YES;
    _Green13.hidden = YES;
    _Green14.hidden = YES;
    _Green15.hidden = YES;
    _Green16.hidden = YES;
    _Green17.hidden = YES;
    _Green18.hidden = YES;
    _Green19.hidden = YES;
    _Green20.hidden = YES;
    _Green21.hidden = YES;
    _Green22.hidden = YES;
    _Green23.hidden = YES;
    _Green24.hidden = YES;
    _Green25.hidden = YES;
    
    for(int i=0; i<5; ++i){
        for(int j=0; j<5; ++j)
            Grid[i][j] = false;
    }
    
    if(ChallengeID == 0){
        
        _ImageView.hidden = YES;
        
        ttp = (int)[[NSUserDefaults standardUserDefaults] integerForKey:@"5Times"];
        
        switch(ttp%20){
            case 0:
                Grid[1][2] = true;
                Grid[2][1] = true;
                Grid[2][2] = true;
                Grid[2][3] = true;
                Grid[3][2] = true;
                _Green8.hidden = NO;
                _Green12.hidden = NO;
                _Green13.hidden = NO;
                _Green14.hidden = NO;
                _Green18.hidden = NO;
                break;
                
            case 1:
                Grid[1][0] = true;
                Grid[4][1] = true;
                Grid[3][4] = true;
                Grid[0][3] = true;
                Grid[2][2] = true;
                _Green6.hidden = NO;
                _Green22.hidden = NO;
                _Green20.hidden = NO;
                _Green4.hidden = NO;
                _Green13.hidden = NO;
                break;
                
            case 2:
                Grid[0][0] = true;
                Grid[4][0] = true;
                Grid[4][4] = true;
                Grid[0][4] = true;
                Grid[2][2] = true;
                _Green1.hidden = NO;
                _Green5.hidden = NO;
                _Green21.hidden = NO;
                _Green25.hidden = NO;
                _Green13.hidden = NO;
                break;
                
            case 3:
                Grid[1][1] = true;
                Grid[1][3] = true;
                Grid[2][2] = true;
                Grid[3][1] = true;
                Grid[3][3] = true;
                _Green7.hidden = NO;
                _Green9.hidden = NO;
                _Green13.hidden = NO;
                _Green17.hidden = NO;
                _Green19.hidden = NO;
                break;
                
            case 4:
                Grid[0][2] = true;
                Grid[2][0] = true;
                Grid[2][2] = true;
                Grid[2][4] = true;
                Grid[4][2] = true;
                _Green3.hidden = NO;
                _Green11.hidden = NO;
                _Green13.hidden = NO;
                _Green15.hidden = NO;
                _Green23.hidden = NO;
                break;
                
            case 5:
                Grid[0][0] = true;
                Grid[1][1] = true;
                Grid[2][2] = true;
                Grid[3][3] = true;
                Grid[4][4] = true;
                _Green1.hidden = NO;
                _Green7.hidden = NO;
                _Green13.hidden = NO;
                _Green19.hidden = NO;
                _Green25.hidden = NO;
                break;
                
            case 6:
                Grid[0][4] = true;
                Grid[1][3] = true;
                Grid[2][2] = true;
                Grid[3][1] = true;
                Grid[4][0] = true;
                _Green5.hidden = NO;
                _Green9.hidden = NO;
                _Green13.hidden = NO;
                _Green17.hidden = NO;
                _Green21.hidden = NO;
                break;
                
            case 7:
                Grid[0][0] = true;
                Grid[0][4] = true;
                Grid[4][0] = true;
                Grid[4][4] = true;
                _Green1.hidden = NO;
                _Green5.hidden = NO;
                _Green21.hidden = NO;
                _Green25.hidden = NO;
                break;
                
            case 8:
                Grid[0][4] = true;
                Grid[0][2] = true;
                Grid[2][4] = true;
                Grid[2][0] = true;
                Grid[4][2] = true;
                Grid[4][0] = true;
                _Green5.hidden = NO;
                _Green3.hidden = NO;
                _Green15.hidden = NO;
                _Green11.hidden = NO;
                _Green23.hidden = NO;
                _Green21.hidden = NO;
                break;
                
            case 9:
                Grid[3][0] = true;
                Grid[0][1] = true;
                Grid[1][4] = true;
                Grid[4][3] = true;
                Grid[2][2] = true;
                _Green16.hidden = NO;
                _Green2.hidden = NO;
                _Green10.hidden = NO;
                _Green24.hidden = NO;
                _Green13.hidden = NO;
                break;
                
            case 10:
                Grid[3][0] = true;
                Grid[0][1] = true;
                Grid[1][4] = true;
                Grid[4][3] = true;
                _Green16.hidden = NO;
                _Green2.hidden = NO;
                _Green10.hidden = NO;
                _Green24.hidden = NO;
                break;
                
            case 11:
                Grid[1][0] = true;
                Grid[0][1] = true;
                Grid[3][1] = true;
                Grid[1][3] = true;
                Grid[2][2] = true;
                Grid[4][3] = true;
                Grid[3][4] = true;
                _Green6.hidden = NO;
                _Green2.hidden = NO;
                _Green17.hidden = NO;
                _Green9.hidden = NO;
                _Green13.hidden = NO;
                _Green24.hidden = NO;
                _Green20.hidden = NO;
                break;
                
            case 12:
                Grid[0][0] = true;
                Grid[1][1] = true;
                Grid[3][3] = true;
                Grid[4][4] = true;
                Grid[0][4] = true;
                Grid[1][3] = true;
                Grid[3][1] = true;
                Grid[4][0] = true;
                _Green1.hidden = NO;
                _Green7.hidden = NO;
                _Green19.hidden = NO;
                _Green25.hidden = NO;
                _Green5.hidden = NO;
                _Green9.hidden = NO;
                _Green17.hidden = NO;
                _Green21.hidden = NO;
                break;
                
            case 13:
                Grid[0][2] = true;
                Grid[1][1] = true;
                Grid[1][3] = true;
                Grid[2][0] = true;
                Grid[2][2] = true;
                Grid[2][4] = true;
                Grid[3][1] = true;
                Grid[3][3] = true;
                Grid[4][2] = true;
                _Green3.hidden = NO;
                _Green7.hidden = NO;
                _Green9.hidden = NO;
                _Green11.hidden = NO;
                _Green13.hidden = NO;
                _Green15.hidden = NO;
                _Green17.hidden = NO;
                _Green19.hidden = NO;
                _Green23.hidden = NO;
                break;
                
            case 14:
                Grid[0][2] = true;
                Grid[1][1] = true;
                Grid[1][3] = true;
                Grid[2][0] = true;
                Grid[2][2] = true;
                Grid[2][4] = true;
                Grid[3][1] = true;
                Grid[3][3] = true;
                Grid[4][2] = true;
                Grid[0][0] = true;
                Grid[0][4] = true;
                Grid[4][0] = true;
                Grid[4][4] = true;
                _Green1.hidden = NO;
                _Green5.hidden = NO;
                _Green21.hidden = NO;
                _Green25.hidden = NO;
                _Green3.hidden = NO;
                _Green7.hidden = NO;
                _Green9.hidden = NO;
                _Green11.hidden = NO;
                _Green13.hidden = NO;
                _Green15.hidden = NO;
                _Green17.hidden = NO;
                _Green19.hidden = NO;
                _Green23.hidden = NO;
                break;
                
            case 15:
                Grid[2][2] = true;
                _Green13.hidden = NO;
                break;
                
            case 16:
                Grid[1][2] = true;
                Grid[2][1] = true;
                Grid[2][3] = true;
                Grid[3][2] = true;
                _Green8.hidden = NO;
                _Green12.hidden = NO;
                _Green14.hidden = NO;
                _Green18.hidden = NO;
                break;
                
            case 17:
                Grid[2][0] = true;
                Grid[2][1] = true;
                Grid[2][3] = true;
                Grid[2][4] = true;
                _Green11.hidden = NO;
                _Green12.hidden = NO;
                _Green14.hidden = NO;
                _Green15.hidden = NO;
                break;
                
            case 18:
                Grid[0][2] = true;
                Grid[1][2] = true;
                Grid[2][2] = true;
                Grid[3][2] = true;
                Grid[4][2] = true;
                Grid[4][1] = true;
                Grid[4][3] = true;
                _Green3.hidden = NO;
                _Green8.hidden = NO;
                _Green13.hidden = NO;
                _Green18.hidden = NO;
                _Green22.hidden = NO;
                _Green23.hidden = NO;
                _Green24.hidden = NO;
                break;
                
            case 19:
                _Green1.hidden = NO;
                _Green2.hidden = NO;
                _Green3.hidden = NO;
                _Green4.hidden = YES;
                _Green5.hidden = NO;
                _Green6.hidden = YES;
                _Green7.hidden = YES;
                _Green8.hidden = NO;
                _Green9.hidden = YES;
                _Green10.hidden = NO;
                _Green11.hidden = NO;
                _Green12.hidden = NO;
                _Green13.hidden = NO;
                _Green14.hidden = NO;
                _Green15.hidden = NO;
                _Green16.hidden = NO;
                _Green17.hidden = YES;
                _Green18.hidden = NO;
                _Green19.hidden = YES;
                _Green20.hidden = YES;
                _Green21.hidden = NO;
                _Green22.hidden = YES;
                _Green23.hidden = NO;
                _Green24.hidden = NO;
                _Green25.hidden = NO;
                
                for(int i=0; i<5; ++i){
                    for(int j=0; j<5; ++j)
                        Grid[i][j] = true;
                }
                
                Grid[1][0] = false;
                Grid[1][1] = false;
                Grid[0][3] = false;
                Grid[1][3] = false;
                Grid[3][3] = false;
                Grid[3][4] = false;
                Grid[3][1] = false;
                Grid[4][1] = false;
                break;
                
            default:
                Grid[1][2] = true;
                Grid[2][1] = true;
                Grid[2][2] = true;
                Grid[2][3] = true;
                Grid[3][2] = true;
                _Green8.hidden = NO;
                _Green12.hidden = NO;
                _Green13.hidden = NO;
                _Green14.hidden = NO;
                _Green18.hidden = NO;
                break;
        }
    }
    
    
    
    ScoreNo = 0;
    
    for(int i=0; i<5; ++i){
        for(int j=0; j<5; ++j){
            if(Grid[i][j])
                ScoreNo++;
        }
    }
    _Score.text = [NSString stringWithFormat:@"%i", ScoreNo];
}

- (IBAction)LongPressNumber:(id)sender {
    
    _Green1.hidden = NO;
    _Green2.hidden = NO;
    _Green3.hidden = NO;
    _Green4.hidden = YES;
    _Green5.hidden = NO;
    _Green6.hidden = YES;
    _Green7.hidden = YES;
    _Green8.hidden = NO;
    _Green9.hidden = YES;
    _Green10.hidden = NO;
    _Green11.hidden = NO;
    _Green12.hidden = NO;
    _Green13.hidden = NO;
    _Green14.hidden = NO;
    _Green15.hidden = NO;
    _Green16.hidden = NO;
    _Green17.hidden = YES;
    _Green18.hidden = NO;
    _Green19.hidden = YES;
    _Green20.hidden = YES;
    _Green21.hidden = NO;
    _Green22.hidden = YES;
    _Green23.hidden = NO;
    _Green24.hidden = NO;
    _Green25.hidden = NO;
    
    for(int i=0; i<5; ++i){
        for(int j=0; j<5; ++j)
            Grid[i][j] = true;
    }
    
    Grid[1][0] = false;
    Grid[1][1] = false;
    Grid[0][3] = false;
    Grid[1][3] = false;
    Grid[3][3] = false;
    Grid[3][4] = false;
    Grid[3][1] = false;
    Grid[4][1] = false;

    
}
@end
