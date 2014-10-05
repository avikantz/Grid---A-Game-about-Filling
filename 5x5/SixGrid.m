//
//  SixGrid.m
//  5x5
//
//  Created by Avikant on 07/18/14.
//  Copyright (c) 2014 Avikant. All rights reserved.
//

#import "SixGrid.h"

@interface SixGrid ()

@end

@implementation SixGrid

BOOL Grd[6][6] = {
    {false, false, false, false, false, false},
    {false, false, false, false, false, false},
    {false, false, false, false, false, false},
    {false, false, false, false, false, false},
    {false, false, false, false, false, false},
    {false, false, false, false, false, false}};

BOOL C17[6][6] = {
    {true, true, false, false, true, false},
    {true, true, true, false, true, true},
    {false, true, true, true, false, false},
    {false, false, true, true, true, false},
    {true, true, false, true, true, true},
    {false, true, false, false, true, true}};

BOOL C18[6][6] = {
    {true, true, false, false, true, true},
    {true, true, true, true, true, true},
    {false, true, false, false, true, false},
    {false, true, false, false, true, false},
    {true, true, true, true, true, true},
    {true, true, false, false, true, true}};

BOOL C19[6][6] = {
    {false, true, false, false, true, false},
    {true, true, true, true, true, true},
    {false, true, true, true, true, false},
    {false, true, true, true, true, false},
    {true, true, true, true, true, true},
    {false, true, false, false, true, false}};

BOOL C20[6][6] = {
    {false, true, true, true, true, false},
    {true, false, true, true, false, true},
    {true, true, true, true, true, true},
    {true, true, true, true, true, true},
    {true, false, true, true, false, true},
    {false, true, true, true, true, false}};

BOOL C21[6][6] = {
    {true, false, false, false, false, true},
    {false, false, true, true, false, false},
    {false, true, false, false, true, false},
    {false, true, false, false, true, false},
    {false, false, true, true, false, false},
    {true, false, false, false, false, true}};

BOOL C22[6][6] = {
    {true, true, true, true, false, true},
    {false, false, true, false, false, true},
    {true, false, true, true, true, true},
    {true, true, true, true, false, true},
    {true, false, false, true, false, false},
    {true, false, true, true, true, true}};

BOOL C23[6][6] = {
    {true, false, false, false, false, true},
    {false, true, false, false, true, false},
    {false, false, false, false, false, false},
    {false, false, false, false, false, false},
    {false, true, false, false, true, false},
    {true, false, false, false, false, true}};

BOOL C24[6][6] = {
    {true, true, false, false, true, true},
    {true, true, false, false, true, true},
    {false, false, true, true, false, false},
    {false, false, true, true, false, false},
    {true, true, false, false, true, true},
    {true, true, false, false, true, true}};

BOOL C25[6][6] = {
    {false, false, true, true, false, false},
    {false, false, true, true, false, false},
    {true, true, true, true, true, true},
    {true, true, true, true, true, true},
    {false, false, true, true, false, false},
    {false, false, true, true, false, false}};

BOOL C26[6][6] = {
    {false, true, true, true, true, true},
    {true, false, true, true, true, true},
    {true, true, false, true, true, true},
    {true, true, true, false, true, true},
    {true, true, true, true, false, true},
    {true, true, true, true, true, false}};

BOOL C27[6][6] = {
    {true, true, false, false, true, true},
    {false, false, true, true, false, false},
    {true, false, true, true, false, true},
    {true, false, true, true, false, true},
    {false, false, true, true, false, false},
    {true, true, false, false, true, true}};

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
    ChallengeID = (int)[[NSUserDefaults standardUserDefaults] integerForKey:@"ChallengeNo"];
    
    _BackToC2.hidden = YES;
    _BackToC3.hidden = YES;
    _BackToHome.hidden = YES;
    
    if(ChallengeID == 17 || ChallengeID == 18)
        _BackToC2.hidden = NO;
    
    else if(ChallengeID >= 19 && ChallengeID <= 27)
        _BackToC3.hidden = NO;
    
    else
        _BackToHome.hidden = NO;
    
    _G00.hidden = YES;
    _G01.hidden = YES;
    _G02.hidden = YES;
    _G03.hidden = YES;
    _G04.hidden = YES;
    _G05.hidden = YES;
    
    _G10.hidden = YES;
    _G11.hidden = YES;
    _G12.hidden = YES;
    _G13.hidden = YES;
    _G14.hidden = YES;
    _G15.hidden = YES;
    
    _G20.hidden = YES;
    _G21.hidden = YES;
    _G22.hidden = YES;
    _G23.hidden = YES;
    _G24.hidden = YES;
    _G25.hidden = YES;
    
    _G30.hidden = YES;
    _G31.hidden = YES;
    _G32.hidden = YES;
    _G33.hidden = YES;
    _G34.hidden = YES;
    _G35.hidden = YES;
    
    _G40.hidden = YES;
    _G41.hidden = YES;
    _G42.hidden = YES;
    _G43.hidden = YES;
    _G44.hidden = YES;
    _G45.hidden = YES;
    
    _G50.hidden = YES;
    _G51.hidden = YES;
    _G52.hidden = YES;
    _G53.hidden = YES;
    _G54.hidden = YES;
    _G55.hidden = YES;
    
    for(int i=0; i<6; ++i){
        for(int j=0; j<6; ++j)
            Grd[i][j] = false;
    }
    
    ttp = (int)[[NSUserDefaults standardUserDefaults] integerForKey:@"6Times"];
    
    if(ChallengeID == 0){
        
        _ImageView.hidden = YES;
        
        _InfoLabel.text = [NSString stringWithFormat:@"Fill the Grid with Green Squares."];
        
        switch (ttp % 16) {
            case 0:
                Grd[0][0] = true;
                Grd[1][1] = true;
                Grd[1][4] = true;
                Grd[4][1] = true;
                Grd[4][4] = true;
                Grd[5][5] = true;
                _G00.hidden = NO;
                _G11.hidden = NO;
                _G14.hidden = NO;
                _G41.hidden = NO;
                _G44.hidden = NO;
                _G55.hidden = NO;
                break;
                
            case 2:
                Grd[0][0] = true;
                Grd[0][5] = true;
                Grd[2][2] = true;
                Grd[2][3] = true;
                Grd[3][2] = true;
                Grd[3][3] = true;
                Grd[5][0] = true;
                Grd[5][5] = true;
                _G00.hidden = NO;
                _G05.hidden = NO;
                _G22.hidden = NO;
                _G23.hidden = NO;
                _G32.hidden = NO;
                _G33.hidden = NO;
                _G50.hidden = NO;
                _G55.hidden = NO;
                break;
                
            case 3:
                Grd[0][0] = true;
                Grd[0][5] = true;
                Grd[1][1] = true;
                Grd[1][4] = true;
                Grd[4][1] = true;
                Grd[4][4] = true;
                Grd[5][0] = true;
                Grd[5][5] = true;
                _G00.hidden = NO;
                _G05.hidden = NO;
                _G11.hidden = NO;
                _G14.hidden = NO;
                _G41.hidden = NO;
                _G44.hidden = NO;
                _G50.hidden = NO;
                _G55.hidden = NO;
                break;
                
            case 4:
                Grd[2][0] = true;
                Grd[3][0] = true;
                Grd[0][2] = true;
                Grd[0][3] = true;
                Grd[2][5] = true;
                Grd[3][5] = true;
                Grd[5][2] = true;
                Grd[5][3] = true;
                _G20.hidden = NO;
                _G30.hidden = NO;
                _G02.hidden = NO;
                _G03.hidden = NO;
                _G25.hidden = NO;
                _G35.hidden = NO;
                _G52.hidden = NO;
                _G53.hidden = NO;
                break;
                
            case 5:
                Grd[0][0] = true;
                Grd[1][1] = true;
                Grd[2][2] = true;
                Grd[3][3] = true;
                Grd[4][4] = true;
                Grd[5][5] = true;
                Grd[2][3] = true;
                Grd[3][2] = true;
                _G00.hidden = NO;
                _G11.hidden = NO;
                _G22.hidden = NO;
                _G33.hidden = NO;
                _G44.hidden = NO;
                _G55.hidden = NO;
                _G23.hidden = NO;
                _G32.hidden = NO;
                break;
                
            case 6:
                Grd[0][5] = true;
                Grd[1][4] = true;
                Grd[2][3] = true;
                Grd[3][2] = true;
                Grd[4][1] = true;
                Grd[5][0] = true;
                Grd[1][1] = true;
                Grd[4][4] = true;
                _G05.hidden = NO;
                _G14.hidden = NO;
                _G23.hidden = NO;
                _G32.hidden = NO;
                _G41.hidden = NO;
                _G50.hidden = NO;
                _G11.hidden = NO;
                _G44.hidden = NO;
                break;
                
            case 7:
                Grd[1][1] = true;
                Grd[1][4] = true;
                Grd[2][2] = true;
                Grd[2][3] = true;
                Grd[3][2] = true;
                Grd[3][3] = true;
                Grd[4][1] = true;
                Grd[4][4] = true;
                _G11.hidden = NO;
                _G14.hidden = NO;
                _G22.hidden = NO;
                _G23.hidden = NO;
                _G32.hidden = NO;
                _G33.hidden = NO;
                _G41.hidden = NO;
                _G44.hidden = NO;
                break;
                
            case 8:
                Grd[1][0] = true;
                Grd[0][1] = true;
                Grd[0][4] = true;
                Grd[1][5] = true;
                Grd[4][5] = true;
                Grd[5][4] = true;
                Grd[4][0] = true;
                Grd[5][1] = true;
                _G10.hidden = NO;
                _G01.hidden = NO;
                _G04.hidden = NO;
                _G15.hidden = NO;
                _G45.hidden = NO;
                _G54.hidden = NO;
                _G40.hidden = NO;
                _G51.hidden = NO;
                break;
                
            case 9:
                Grd[1][2] = true;
                Grd[1][3] = true;
                Grd[2][1] = true;
                Grd[3][1] = true;
                Grd[2][4] = true;
                Grd[3][4] = true;
                Grd[4][2] = true;
                Grd[4][3] = true;
                _G12.hidden = NO;
                _G13.hidden = NO;
                _G21.hidden = NO;
                _G31.hidden = NO;
                _G24.hidden = NO;
                _G34.hidden = NO;
                _G42.hidden = NO;
                _G43.hidden = NO;
                break;
                
            case 10:
                Grd[1][1] = true;
                Grd[1][2] = true;
                Grd[1][4] = true;
                Grd[2][4] = true;
                Grd[4][4] = true;
                Grd[4][3] = true;
                Grd[4][1] = true;
                Grd[3][1] = true;
                _G11.hidden = NO;
                _G12.hidden = NO;
                _G14.hidden = NO;
                _G24.hidden = NO;
                _G44.hidden = NO;
                _G43.hidden = NO;
                _G41.hidden = NO;
                _G31.hidden = NO;
                break;
                
            case 11:
                Grd[0][3] = true;
                Grd[0][4] = true;
                Grd[0][5] = true;
                Grd[0][2] = true;
                Grd[5][0] = true;
                Grd[5][1] = true;
                Grd[5][2] = true;
                Grd[5][3] = true;
                _G02.hidden = NO;
                _G03.hidden = NO;
                _G04.hidden = NO;
                _G05.hidden = NO;
                _G50.hidden = NO;
                _G51.hidden = NO;
                _G52.hidden = NO;
                _G53.hidden = NO;
                break;
                
            case 12:
                Grd[1][2] = true;
                Grd[2][2] = true;
                Grd[2][3] = true;
                Grd[2][4] = true;
                Grd[3][1] = true;
                Grd[3][2] = true;
                Grd[3][3] = true;
                Grd[4][3] = true;
                _G12.hidden = NO;
                _G22.hidden = NO;
                _G23.hidden = NO;
                _G24.hidden = NO;
                _G31.hidden = NO;
                _G32.hidden = NO;
                _G33.hidden = NO;
                _G43.hidden = NO;
                break;
                
            case 13:
                Grd[0][1] = true;
                Grd[0][2] = true;
                Grd[0][3] = true;
                Grd[0][4] = true;
                Grd[1][5] = true;
                Grd[2][5] = true;
                Grd[3][5] = true;
                Grd[4][5] = true;
                Grd[5][4] = true;
                Grd[5][3] = true;
                Grd[5][2] = true;
                Grd[5][1] = true;
                Grd[1][0] = true;
                Grd[2][0] = true;
                Grd[3][0] = true;
                Grd[4][0] = true;
                _G01.hidden = NO;
                _G02.hidden = NO;
                _G03.hidden = NO;
                _G04.hidden = NO;
                _G15.hidden = NO;
                _G25.hidden = NO;
                _G35.hidden = NO;
                _G45.hidden = NO;
                _G51.hidden = NO;
                _G52.hidden = NO;
                _G53.hidden = NO;
                _G54.hidden = NO;
                _G10.hidden = NO;
                _G20.hidden = NO;
                _G30.hidden = NO;
                _G40.hidden = NO;
                break;
                
            case 14:
                Grd[2][0] = true;
                Grd[3][0] = true;
                Grd[4][0] = true;
                Grd[2][3] = true;
                Grd[0][5] = true;
                Grd[1][5] = true;
                Grd[2][5] = true;
                _G20.hidden = NO;
                _G30.hidden = NO;
                _G40.hidden = NO;
                _G23.hidden = NO;
                _G05.hidden = NO;
                _G15.hidden = NO;
                _G25.hidden = NO;
                break;
                
            case 15:
                Grd[1][3] = true;
                Grd[1][4] = true;
                Grd[1][5] = true;
                Grd[2][2] = true;
                Grd[3][3] = true;
                Grd[4][0] = true;
                Grd[4][1] = true;
                Grd[4][2] = true;
                _G13.hidden = NO;
                _G14.hidden = NO;
                _G15.hidden = NO;
                _G22.hidden = NO;
                _G33.hidden = NO;
                _G40.hidden = NO;
                _G41.hidden = NO;
                _G42.hidden = NO;
                break;
                
            default:
                Grd[0][0] = true;
                Grd[1][1] = true;
                Grd[1][4] = true;
                Grd[4][1] = true;
                Grd[4][4] = true;
                Grd[5][5] = true;
                _G00.hidden = NO;
                _G11.hidden = NO;
                _G14.hidden = NO;
                _G41.hidden = NO;
                _G44.hidden = NO;
                _G55.hidden = NO;
                break;
        }
    }
    
    else{
        _ImageView.hidden = NO;
        _InfoLabel.text = [NSString stringWithFormat:@"Fill the Grid with the same pattern as shown above."];
        
        switch (ChallengeID) {
            case 17:
                _ImageView.image = [UIImage imageNamed:@"Challenge17.png"];
                break;
                
            case 18:
                _ImageView.image = [UIImage imageNamed:@"Challenge18.png"];
                break;
                
            case 19:
                _ImageView.image = [UIImage imageNamed:@"Challenge19.png"];
                break;
                
            case 20:
                _ImageView.image = [UIImage imageNamed:@"Challenge20.png"];
                break;
                
            case 21:
                _ImageView.image = [UIImage imageNamed:@"Challenge21.png"];
                break;
                
            case 22:
                _ImageView.image = [UIImage imageNamed:@"Challenge22.png"];
                break;
                
            case 23:
                _ImageView.image = [UIImage imageNamed:@"Challenge23.png"];
                break;
                
            case 24:
                _ImageView.image = [UIImage imageNamed:@"Challenge24.png"];
                break;
                
            case 25:
                _ImageView.image = [UIImage imageNamed:@"Challenge25.png"];
                break;
                
            case 26:
                _ImageView.image = [UIImage imageNamed:@"Challenge26.png"];
                break;
                
            case 27:
                _ImageView.image = [UIImage imageNamed:@"Challenge27.png"];
                break;
                
            default:
                _ImageView.hidden = YES;
                
                _InfoLabel.text = [NSString stringWithFormat:@"Fill the Grid with Green Squares."];
                
                switch (ttp % 16) {
                    case 0:
                        Grd[0][0] = true;
                        Grd[1][1] = true;
                        Grd[1][4] = true;
                        Grd[4][1] = true;
                        Grd[4][4] = true;
                        Grd[5][5] = true;
                        _G00.hidden = NO;
                        _G11.hidden = NO;
                        _G14.hidden = NO;
                        _G41.hidden = NO;
                        _G44.hidden = NO;
                        _G55.hidden = NO;
                        break;
                        
                    case 2:
                        Grd[0][0] = true;
                        Grd[0][5] = true;
                        Grd[2][2] = true;
                        Grd[2][3] = true;
                        Grd[3][2] = true;
                        Grd[3][3] = true;
                        Grd[5][0] = true;
                        Grd[5][5] = true;
                        _G00.hidden = NO;
                        _G05.hidden = NO;
                        _G22.hidden = NO;
                        _G23.hidden = NO;
                        _G32.hidden = NO;
                        _G33.hidden = NO;
                        _G50.hidden = NO;
                        _G55.hidden = NO;
                        break;
                        
                    case 3:
                        Grd[0][0] = true;
                        Grd[0][5] = true;
                        Grd[1][1] = true;
                        Grd[1][4] = true;
                        Grd[4][1] = true;
                        Grd[4][4] = true;
                        Grd[5][0] = true;
                        Grd[5][5] = true;
                        _G00.hidden = NO;
                        _G05.hidden = NO;
                        _G11.hidden = NO;
                        _G14.hidden = NO;
                        _G41.hidden = NO;
                        _G44.hidden = NO;
                        _G50.hidden = NO;
                        _G55.hidden = NO;
                        break;
                        
                    case 4:
                        Grd[2][0] = true;
                        Grd[3][0] = true;
                        Grd[0][2] = true;
                        Grd[0][3] = true;
                        Grd[2][5] = true;
                        Grd[3][5] = true;
                        Grd[5][2] = true;
                        Grd[5][3] = true;
                        _G20.hidden = NO;
                        _G30.hidden = NO;
                        _G02.hidden = NO;
                        _G03.hidden = NO;
                        _G25.hidden = NO;
                        _G35.hidden = NO;
                        _G52.hidden = NO;
                        _G53.hidden = NO;
                        break;
                        
                    case 5:
                        Grd[0][0] = true;
                        Grd[1][1] = true;
                        Grd[2][2] = true;
                        Grd[3][3] = true;
                        Grd[4][4] = true;
                        Grd[5][5] = true;
                        Grd[2][3] = true;
                        Grd[3][2] = true;
                        _G00.hidden = NO;
                        _G11.hidden = NO;
                        _G22.hidden = NO;
                        _G33.hidden = NO;
                        _G44.hidden = NO;
                        _G55.hidden = NO;
                        _G23.hidden = NO;
                        _G32.hidden = NO;
                        break;
                        
                    case 6:
                        Grd[0][5] = true;
                        Grd[1][4] = true;
                        Grd[2][3] = true;
                        Grd[3][2] = true;
                        Grd[4][1] = true;
                        Grd[5][0] = true;
                        Grd[1][1] = true;
                        Grd[4][4] = true;
                        _G05.hidden = NO;
                        _G14.hidden = NO;
                        _G23.hidden = NO;
                        _G32.hidden = NO;
                        _G41.hidden = NO;
                        _G50.hidden = NO;
                        _G11.hidden = NO;
                        _G44.hidden = NO;
                        break;
                        
                    case 7:
                        Grd[1][1] = true;
                        Grd[1][4] = true;
                        Grd[2][2] = true;
                        Grd[2][3] = true;
                        Grd[3][2] = true;
                        Grd[3][3] = true;
                        Grd[4][1] = true;
                        Grd[4][4] = true;
                        _G11.hidden = NO;
                        _G14.hidden = NO;
                        _G22.hidden = NO;
                        _G23.hidden = NO;
                        _G32.hidden = NO;
                        _G33.hidden = NO;
                        _G41.hidden = NO;
                        _G44.hidden = NO;
                        break;
                        
                    case 8:
                        Grd[1][0] = true;
                        Grd[0][1] = true;
                        Grd[0][4] = true;
                        Grd[1][5] = true;
                        Grd[4][5] = true;
                        Grd[5][4] = true;
                        Grd[4][0] = true;
                        Grd[5][1] = true;
                        _G10.hidden = NO;
                        _G01.hidden = NO;
                        _G04.hidden = NO;
                        _G15.hidden = NO;
                        _G45.hidden = NO;
                        _G54.hidden = NO;
                        _G40.hidden = NO;
                        _G51.hidden = NO;
                        break;
                        
                    case 9:
                        Grd[1][2] = true;
                        Grd[1][3] = true;
                        Grd[2][1] = true;
                        Grd[3][1] = true;
                        Grd[2][4] = true;
                        Grd[3][4] = true;
                        Grd[4][2] = true;
                        Grd[4][3] = true;
                        _G12.hidden = NO;
                        _G13.hidden = NO;
                        _G21.hidden = NO;
                        _G31.hidden = NO;
                        _G24.hidden = NO;
                        _G34.hidden = NO;
                        _G42.hidden = NO;
                        _G43.hidden = NO;
                        break;
                        
                    case 10:
                        Grd[1][1] = true;
                        Grd[1][2] = true;
                        Grd[1][4] = true;
                        Grd[2][4] = true;
                        Grd[4][4] = true;
                        Grd[4][3] = true;
                        Grd[4][1] = true;
                        Grd[3][1] = true;
                        _G11.hidden = NO;
                        _G12.hidden = NO;
                        _G14.hidden = NO;
                        _G24.hidden = NO;
                        _G44.hidden = NO;
                        _G43.hidden = NO;
                        _G41.hidden = NO;
                        _G31.hidden = NO;
                        break;
                        
                    case 11:
                        Grd[0][3] = true;
                        Grd[0][4] = true;
                        Grd[0][5] = true;
                        Grd[0][2] = true;
                        Grd[5][0] = true;
                        Grd[5][1] = true;
                        Grd[5][2] = true;
                        Grd[5][3] = true;
                        _G02.hidden = NO;
                        _G03.hidden = NO;
                        _G04.hidden = NO;
                        _G05.hidden = NO;
                        _G50.hidden = NO;
                        _G51.hidden = NO;
                        _G52.hidden = NO;
                        _G53.hidden = NO;
                        break;
                        
                    case 12:
                        Grd[1][2] = true;
                        Grd[2][2] = true;
                        Grd[2][3] = true;
                        Grd[2][4] = true;
                        Grd[3][1] = true;
                        Grd[3][2] = true;
                        Grd[3][3] = true;
                        Grd[4][3] = true;
                        _G12.hidden = NO;
                        _G22.hidden = NO;
                        _G23.hidden = NO;
                        _G24.hidden = NO;
                        _G31.hidden = NO;
                        _G32.hidden = NO;
                        _G33.hidden = NO;
                        _G43.hidden = NO;
                        break;
                        
                    case 13:
                        Grd[0][1] = true;
                        Grd[0][2] = true;
                        Grd[0][3] = true;
                        Grd[0][4] = true;
                        Grd[1][5] = true;
                        Grd[2][5] = true;
                        Grd[3][5] = true;
                        Grd[4][5] = true;
                        Grd[5][4] = true;
                        Grd[5][3] = true;
                        Grd[5][2] = true;
                        Grd[5][1] = true;
                        Grd[1][0] = true;
                        Grd[2][0] = true;
                        Grd[3][0] = true;
                        Grd[4][0] = true;
                        _G01.hidden = NO;
                        _G02.hidden = NO;
                        _G03.hidden = NO;
                        _G04.hidden = NO;
                        _G15.hidden = NO;
                        _G25.hidden = NO;
                        _G35.hidden = NO;
                        _G45.hidden = NO;
                        _G51.hidden = NO;
                        _G52.hidden = NO;
                        _G53.hidden = NO;
                        _G54.hidden = NO;
                        _G10.hidden = NO;
                        _G20.hidden = NO;
                        _G30.hidden = NO;
                        _G40.hidden = NO;
                        break;
                        
                    case 14:
                        Grd[2][0] = true;
                        Grd[3][0] = true;
                        Grd[4][0] = true;
                        Grd[2][3] = true;
                        Grd[0][5] = true;
                        Grd[1][5] = true;
                        Grd[2][5] = true;
                        _G20.hidden = NO;
                        _G30.hidden = NO;
                        _G40.hidden = NO;
                        _G23.hidden = NO;
                        _G05.hidden = NO;
                        _G15.hidden = NO;
                        _G25.hidden = NO;
                        break;
                        
                    case 15:
                        Grd[1][3] = true;
                        Grd[1][4] = true;
                        Grd[1][5] = true;
                        Grd[2][2] = true;
                        Grd[3][3] = true;
                        Grd[4][0] = true;
                        Grd[4][1] = true;
                        Grd[4][2] = true;
                        _G13.hidden = NO;
                        _G14.hidden = NO;
                        _G15.hidden = NO;
                        _G22.hidden = NO;
                        _G33.hidden = NO;
                        _G40.hidden = NO;
                        _G41.hidden = NO;
                        _G42.hidden = NO;
                        break;
                        
                    default:
                        Grd[0][0] = true;
                        Grd[1][1] = true;
                        Grd[1][4] = true;
                        Grd[4][1] = true;
                        Grd[4][4] = true;
                        Grd[5][5] = true;
                        _G00.hidden = NO;
                        _G11.hidden = NO;
                        _G14.hidden = NO;
                        _G41.hidden = NO;
                        _G44.hidden = NO;
                        _G55.hidden = NO;
                        break;
                }
                break;
        }
    }
    
    
    ScoreNo = 0;
    
    for(int i=0; i<6; ++i){
        for(int j=0; j<6; ++j){
            if(Grd[i][j])
                ScoreNo++;
        }
    }
    
    _Score.text = [NSString stringWithFormat:@"%i", ScoreNo];
    
    ttp ++;
    [[NSUserDefaults standardUserDefaults] setInteger:ttp forKey:@"6Times"];
    
    
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
    if(Grd[0][0]){
        Grd[0][0] = false;
        _G00.hidden = YES;
    }
    else{
        Grd[0][0] = true;
        _G00.hidden = NO;
    }
    
    if(Grd[0][1]){
        Grd[0][1] = false;
        _G01.hidden = YES;
    }
    else{
        Grd[0][1] = true;
        _G01.hidden = NO;
    }
    if(Grd[1][0]){
        Grd[1][0] = false;
        _G10.hidden = YES;
    }
    else{
        Grd[1][0] = true;
        _G10.hidden = NO;
    }
    
    ScoreNo = 0;
    
    for(int i=0; i<6; ++i){
        for(int j=0; j<6; ++j){
            if(Grd[i][j])
                ScoreNo++;
        }
    }
    
    if(ChallengeID == 0){
        if(ScoreNo == 36){
            UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"You Won!"
                                                            message:@"Yeah, you won, big deal!"
                                                           delegate:self
                                                  cancelButtonTitle:@"Back"
                                                  otherButtonTitles:@"Again!",nil];
            [alert show];
        }
    }
    else{
        switch (ChallengeID) {
            case 17:
                checker = 0;
                for(int i=0; i<6; ++i){
                    for(int j=0; j<6; ++j){
                        if(Grd[i][j] != C17[i][j])
                            checker ++;
                    }
                }
                if(checker == 0){
                        NSString *Thing = [NSString stringWithFormat:@"C%iSolved", ChallengeID];
                        int Solve = (int)[[NSUserDefaults standardUserDefaults] integerForKey:Thing];
                        Solve ++;
                        [[NSUserDefaults standardUserDefaults] setInteger:Solve forKey:Thing];
                        
                    UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Challenge Completed" message:@"Yeah! Ok! You have completed Challenge 17, Good Job!." delegate:nil cancelButtonTitle:@"Phone-Five!" otherButtonTitles: nil];
                    
                    [alert show];
                }
                break;
                
            case 18:
                checker = 0;
                for(int i=0; i<6; ++i){
                    for(int j=0; j<6; ++j){
                        if(Grd[i][j] != C18[i][j])
                            checker ++;
                    }
                }
                if(checker == 0){
                        NSString *Thing = [NSString stringWithFormat:@"C%iSolved", ChallengeID];
                        int Solve = (int)[[NSUserDefaults standardUserDefaults] integerForKey:Thing];
                        Solve ++;
                        [[NSUserDefaults standardUserDefaults] setInteger:Solve forKey:Thing];
                    UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Challenge Completed" message:@"Yeah! Ok! You have completed Challenge 18, Good Job!." delegate:nil cancelButtonTitle:@"Phone-Five!" otherButtonTitles: nil];
                    
                    [alert show];
                }
                break;
                
                
            case 19:
                checker = 0;
                for(int i=0; i<6; ++i){
                    for(int j=0; j<6; ++j){
                        if(Grd[i][j] != C19[i][j])
                            checker ++;
                    }
                }
                if(checker == 0){
                        NSString *Thing = [NSString stringWithFormat:@"C%iSolved", ChallengeID];
                        int Solve = (int)[[NSUserDefaults standardUserDefaults] integerForKey:Thing];
                        Solve ++;
                        [[NSUserDefaults standardUserDefaults] setInteger:Solve forKey:Thing];
                    UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Challenge Completed" message:@"Yeah! Ok! You have completed Challenge 19, Good Job!." delegate:nil cancelButtonTitle:@"Phone-Five!" otherButtonTitles: nil];
                    
                    [alert show];
                }
                break;
                
            case 20:
                checker = 0;
                for(int i=0; i<6; ++i){
                    for(int j=0; j<6; ++j){
                        if(Grd[i][j] != C20[i][j])
                            checker ++;
                    }
                }
                if(checker == 0){
                        NSString *Thing = [NSString stringWithFormat:@"C%iSolved", ChallengeID];
                        int Solve = (int)[[NSUserDefaults standardUserDefaults] integerForKey:Thing];
                        Solve ++;
                        [[NSUserDefaults standardUserDefaults] setInteger:Solve forKey:Thing];
                    UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Challenge Completed" message:@"Yeah! Ok! You have completed Challenge 20, Good Job!." delegate:nil cancelButtonTitle:@"Phone-Five!" otherButtonTitles: nil];
                    
                    [alert show];
                }
                break;
                
            case 21:
                checker = 0;
                for(int i=0; i<6; ++i){
                    for(int j=0; j<6; ++j){
                        if(Grd[i][j] != C21[i][j])
                            checker ++;
                    }
                }
                if(checker == 0){
                        NSString *Thing = [NSString stringWithFormat:@"C%iSolved", ChallengeID];
                        int Solve = (int)[[NSUserDefaults standardUserDefaults] integerForKey:Thing];
                        Solve ++;
                        [[NSUserDefaults standardUserDefaults] setInteger:Solve forKey:Thing];
                    UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Challenge Completed" message:@"Yeah! Ok! You have completed Challenge 21, Good Job!." delegate:nil cancelButtonTitle:@"Phone-Five!" otherButtonTitles: nil];
                    
                    [alert show];
                }
                break;
                
            case 22:
                checker = 0;
                for(int i=0; i<6; ++i){
                    for(int j=0; j<6; ++j){
                        if(Grd[i][j] != C22[i][j])
                            checker ++;
                    }
                }
                if(checker == 0){
                        NSString *Thing = [NSString stringWithFormat:@"C%iSolved", ChallengeID];
                        int Solve = (int)[[NSUserDefaults standardUserDefaults] integerForKey:Thing];
                        Solve ++;
                        [[NSUserDefaults standardUserDefaults] setInteger:Solve forKey:Thing];
                    UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Challenge Completed" message:@"Yeah! Ok! You have completed Challenge 22, Good Job!." delegate:nil cancelButtonTitle:@"Phone-Five!" otherButtonTitles: nil];
                    
                    [alert show];
                }
                break;
                
                
            case 23:
                checker = 0;
                for(int i=0; i<6; ++i){
                    for(int j=0; j<6; ++j){
                        if(Grd[i][j] != C23[i][j])
                            checker ++;
                    }
                }
                if(checker == 0){
                        NSString *Thing = [NSString stringWithFormat:@"C%iSolved", ChallengeID];
                        int Solve = (int)[[NSUserDefaults standardUserDefaults] integerForKey:Thing];
                        Solve ++;
                        [[NSUserDefaults standardUserDefaults] setInteger:Solve forKey:Thing];
                    UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Challenge Completed" message:@"Yeah! Ok! You have completed Challenge 23, Good Job!." delegate:nil cancelButtonTitle:@"Phone-Five!" otherButtonTitles: nil];
                    
                    [alert show];
                }
                break;
                
            case 24:
                checker = 0;
                for(int i=0; i<6; ++i){
                    for(int j=0; j<6; ++j){
                        if(Grd[i][j] != C24[i][j])
                            checker ++;
                    }
                }
                if(checker == 0){
                        NSString *Thing = [NSString stringWithFormat:@"C%iSolved", ChallengeID];
                        int Solve = (int)[[NSUserDefaults standardUserDefaults] integerForKey:Thing];
                        Solve ++;
                        [[NSUserDefaults standardUserDefaults] setInteger:Solve forKey:Thing];
                    UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Challenge Completed" message:@"Yeah! Ok! You have completed Challenge 24, Good Job!." delegate:nil cancelButtonTitle:@"Phone-Five!" otherButtonTitles: nil];
                    
                    [alert show];
                }
                break;
                
            case 25:
                checker = 0;
                for(int i=0; i<6; ++i){
                    for(int j=0; j<6; ++j){
                        if(Grd[i][j] != C25[i][j])
                            checker ++;
                    }
                }
                if(checker == 0){
                        NSString *Thing = [NSString stringWithFormat:@"C%iSolved", ChallengeID];
                        int Solve = (int)[[NSUserDefaults standardUserDefaults] integerForKey:Thing];
                        Solve ++;
                        [[NSUserDefaults standardUserDefaults] setInteger:Solve forKey:Thing];
                    UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Challenge Completed" message:@"Yeah! Ok! You have completed Challenge 25, Good Job!." delegate:nil cancelButtonTitle:@"Phone-Five!" otherButtonTitles: nil];
                    
                    [alert show];
                }
                break;
                
            case 26:
                checker = 0;
                for(int i=0; i<6; ++i){
                    for(int j=0; j<6; ++j){
                        if(Grd[i][j] != C26[i][j])
                            checker ++;
                    }
                }
                if(checker == 0){
                        NSString *Thing = [NSString stringWithFormat:@"C%iSolved", ChallengeID];
                        int Solve = (int)[[NSUserDefaults standardUserDefaults] integerForKey:Thing];
                        Solve ++;
                        [[NSUserDefaults standardUserDefaults] setInteger:Solve forKey:Thing];
                    UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Challenge Completed" message:@"Yeah! Ok! You have completed Challenge 26, Good Job!." delegate:nil cancelButtonTitle:@"Phone-Five!" otherButtonTitles: nil];
                    
                    [alert show];
                }
                break;
                
            case 27:
                checker = 0;
                for(int i=0; i<6; ++i){
                    for(int j=0; j<6; ++j){
                        if(Grd[i][j] != C27[i][j])
                            checker ++;
                    }
                }
                if(checker == 0){
                        NSString *Thing = [NSString stringWithFormat:@"C%iSolved", ChallengeID];
                        int Solve = (int)[[NSUserDefaults standardUserDefaults] integerForKey:Thing];
                        Solve ++;
                        [[NSUserDefaults standardUserDefaults] setInteger:Solve forKey:Thing];
                    UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Challenge Completed" message:@"Yeah! Ok! You have completed Challenge 27, Good Job!." delegate:nil cancelButtonTitle:@"Phone-Five!" otherButtonTitles: nil];
                    
                    [alert show];
                }
                break;
                
                
            default:
                break;
        }
    }
    
    _Score.text = [NSString stringWithFormat:@"%i", ScoreNo];


}

- (IBAction)TopRight:(id)sender {
    
    if(Grd[0][4]){
        Grd[0][4] = false;
        _G04.hidden = YES;
    }
    else{
        Grd[0][4] = true;
        _G04.hidden = NO;
    }
    
    if(Grd[0][5]){
        Grd[0][5] = false;
        _G05.hidden = YES;
    }
    else{
        Grd[0][5] = true;
        _G05.hidden = NO;
    }
    if(Grd[1][5]){
        Grd[1][5] = false;
        _G15.hidden = YES;
    }
    else{
        Grd[1][5] = true;
        _G15.hidden = NO;
    }

    
    ScoreNo = 0;
    
    for(int i=0; i<6; ++i){
        for(int j=0; j<6; ++j){
            if(Grd[i][j])
                ScoreNo++;
        }
    }
    
    if(ScoreNo == 36){
        UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"You Won!"
                                                        message:@"Yeah, you won, big deal!"
                                                       delegate:self
                                              cancelButtonTitle:@"Back"
                                              otherButtonTitles:@"Again!",nil];
        [alert show];
    }
    
    
    _Score.text = [NSString stringWithFormat:@"%i", ScoreNo];
}

- (IBAction)BottomLeft:(id)sender {
    
    if(Grd[4][0]){
        Grd[4][0] = false;
        _G40.hidden = YES;
    }
    else{
        Grd[4][0] = true;
        _G40.hidden = NO;
    }
    if(Grd[5][0]){
        Grd[5][0] = false;
        _G50.hidden = YES;
    }
    else{
        Grd[5][0] = true;
        _G50.hidden = NO;
    }
    
    if(Grd[5][1]){
        Grd[5][1] = false;
        _G51.hidden = YES;
    }
    else{
        Grd[5][1] = true;
        _G51.hidden = NO;
    }

    
    ScoreNo = 0;
    
    for(int i=0; i<6; ++i){
        for(int j=0; j<6; ++j){
            if(Grd[i][j])
                ScoreNo++;
        }
    }
    
    if(ChallengeID == 0){
        if(ScoreNo == 36){
            UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"You Won!"
                                                            message:@"Yeah, you won, big deal!"
                                                           delegate:self
                                                  cancelButtonTitle:@"Back"
                                                  otherButtonTitles:@"Again!",nil];
            [alert show];
        }
    }
    else{
        switch (ChallengeID) {
            case 17:
                checker = 0;
                for(int i=0; i<6; ++i){
                    for(int j=0; j<6; ++j){
                        if(Grd[i][j] != C17[i][j])
                            checker ++;
                    }
                }
                if(checker == 0){
                        NSString *Thing = [NSString stringWithFormat:@"C%iSolved", ChallengeID];
                        int Solve = (int)[[NSUserDefaults standardUserDefaults] integerForKey:Thing];
                        Solve ++;
                        [[NSUserDefaults standardUserDefaults] setInteger:Solve forKey:Thing];
                    UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Challenge Completed" message:@"Yeah! Ok! You have completed Challenge 17, Good Job!." delegate:nil cancelButtonTitle:@"Phone-Five!" otherButtonTitles: nil];
                    
                    [alert show];
                }
                break;
                
            case 18:
                checker = 0;
                for(int i=0; i<6; ++i){
                    for(int j=0; j<6; ++j){
                        if(Grd[i][j] != C18[i][j])
                            checker ++;
                    }
                }
                if(checker == 0){
                        NSString *Thing = [NSString stringWithFormat:@"C%iSolved", ChallengeID];
                        int Solve = (int)[[NSUserDefaults standardUserDefaults] integerForKey:Thing];
                        Solve ++;
                        [[NSUserDefaults standardUserDefaults] setInteger:Solve forKey:Thing];
                    UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Challenge Completed" message:@"Yeah! Ok! You have completed Challenge 18, Good Job!." delegate:nil cancelButtonTitle:@"Phone-Five!" otherButtonTitles: nil];
                    
                    [alert show];
                }
                break;
                
                
            case 19:
                checker = 0;
                for(int i=0; i<6; ++i){
                    for(int j=0; j<6; ++j){
                        if(Grd[i][j] != C19[i][j])
                            checker ++;
                    }
                }
                if(checker == 0){
                        NSString *Thing = [NSString stringWithFormat:@"C%iSolved", ChallengeID];
                        int Solve = (int)[[NSUserDefaults standardUserDefaults] integerForKey:Thing];
                        Solve ++;
                        [[NSUserDefaults standardUserDefaults] setInteger:Solve forKey:Thing];
                    UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Challenge Completed" message:@"Yeah! Ok! You have completed Challenge 19, Good Job!." delegate:nil cancelButtonTitle:@"Phone-Five!" otherButtonTitles: nil];
                    
                    [alert show];
                }
                break;
                
            case 20:
                checker = 0;
                for(int i=0; i<6; ++i){
                    for(int j=0; j<6; ++j){
                        if(Grd[i][j] != C20[i][j])
                            checker ++;
                    }
                }
                if(checker == 0){
                        NSString *Thing = [NSString stringWithFormat:@"C%iSolved", ChallengeID];
                        int Solve = (int)[[NSUserDefaults standardUserDefaults] integerForKey:Thing];
                        Solve ++;
                        [[NSUserDefaults standardUserDefaults] setInteger:Solve forKey:Thing];
                    UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Challenge Completed" message:@"Yeah! Ok! You have completed Challenge 20, Good Job!." delegate:nil cancelButtonTitle:@"Phone-Five!" otherButtonTitles: nil];
                    
                    [alert show];
                }
                break;
                
            case 21:
                checker = 0;
                for(int i=0; i<6; ++i){
                    for(int j=0; j<6; ++j){
                        if(Grd[i][j] != C21[i][j])
                            checker ++;
                    }
                }
                if(checker == 0){
                        NSString *Thing = [NSString stringWithFormat:@"C%iSolved", ChallengeID];
                        int Solve = (int)[[NSUserDefaults standardUserDefaults] integerForKey:Thing];
                        Solve ++;
                        [[NSUserDefaults standardUserDefaults] setInteger:Solve forKey:Thing];
                    UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Challenge Completed" message:@"Yeah! Ok! You have completed Challenge 21, Good Job!." delegate:nil cancelButtonTitle:@"Phone-Five!" otherButtonTitles: nil];
                    
                    [alert show];
                }
                break;
                
            case 22:
                checker = 0;
                for(int i=0; i<6; ++i){
                    for(int j=0; j<6; ++j){
                        if(Grd[i][j] != C22[i][j])
                            checker ++;
                    }
                }
                if(checker == 0){
                        NSString *Thing = [NSString stringWithFormat:@"C%iSolved", ChallengeID];
                        int Solve = (int)[[NSUserDefaults standardUserDefaults] integerForKey:Thing];
                        Solve ++;
                        [[NSUserDefaults standardUserDefaults] setInteger:Solve forKey:Thing];
                    UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Challenge Completed" message:@"Yeah! Ok! You have completed Challenge 22, Good Job!." delegate:nil cancelButtonTitle:@"Phone-Five!" otherButtonTitles: nil];
                    
                    [alert show];
                }
                break;
                
                
            case 23:
                checker = 0;
                for(int i=0; i<6; ++i){
                    for(int j=0; j<6; ++j){
                        if(Grd[i][j] != C23[i][j])
                            checker ++;
                    }
                }
                if(checker == 0){
                        NSString *Thing = [NSString stringWithFormat:@"C%iSolved", ChallengeID];
                        int Solve = (int)[[NSUserDefaults standardUserDefaults] integerForKey:Thing];
                        Solve ++;
                        [[NSUserDefaults standardUserDefaults] setInteger:Solve forKey:Thing];
                    UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Challenge Completed" message:@"Yeah! Ok! You have completed Challenge 23, Good Job!." delegate:nil cancelButtonTitle:@"Phone-Five!" otherButtonTitles: nil];
                    
                    [alert show];
                }
                break;
                
            case 24:
                checker = 0;
                for(int i=0; i<6; ++i){
                    for(int j=0; j<6; ++j){
                        if(Grd[i][j] != C24[i][j])
                            checker ++;
                    }
                }
                if(checker == 0){
                        NSString *Thing = [NSString stringWithFormat:@"C%iSolved", ChallengeID];
                        int Solve = (int)[[NSUserDefaults standardUserDefaults] integerForKey:Thing];
                        Solve ++;
                        [[NSUserDefaults standardUserDefaults] setInteger:Solve forKey:Thing];
                    UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Challenge Completed" message:@"Yeah! Ok! You have completed Challenge 24, Good Job!." delegate:nil cancelButtonTitle:@"Phone-Five!" otherButtonTitles: nil];
                    
                    [alert show];
                }
                break;
                
            case 25:
                checker = 0;
                for(int i=0; i<6; ++i){
                    for(int j=0; j<6; ++j){
                        if(Grd[i][j] != C25[i][j])
                            checker ++;
                    }
                }
                if(checker == 0){
                        NSString *Thing = [NSString stringWithFormat:@"C%iSolved", ChallengeID];
                        int Solve = (int)[[NSUserDefaults standardUserDefaults] integerForKey:Thing];
                        Solve ++;
                        [[NSUserDefaults standardUserDefaults] setInteger:Solve forKey:Thing];
                    UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Challenge Completed" message:@"Yeah! Ok! You have completed Challenge 25, Good Job!." delegate:nil cancelButtonTitle:@"Phone-Five!" otherButtonTitles: nil];
                    
                    [alert show];
                }
                break;
                
            case 26:
                checker = 0;
                for(int i=0; i<6; ++i){
                    for(int j=0; j<6; ++j){
                        if(Grd[i][j] != C26[i][j])
                            checker ++;
                    }
                }
                if(checker == 0){
                        NSString *Thing = [NSString stringWithFormat:@"C%iSolved", ChallengeID];
                        int Solve = (int)[[NSUserDefaults standardUserDefaults] integerForKey:Thing];
                        Solve ++;
                        [[NSUserDefaults standardUserDefaults] setInteger:Solve forKey:Thing];
                    UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Challenge Completed" message:@"Yeah! Ok! You have completed Challenge 26, Good Job!." delegate:nil cancelButtonTitle:@"Phone-Five!" otherButtonTitles: nil];
                    
                    [alert show];
                }
                break;
                
            case 27:
                checker = 0;
                for(int i=0; i<6; ++i){
                    for(int j=0; j<6; ++j){
                        if(Grd[i][j] != C27[i][j])
                            checker ++;
                    }
                }
                if(checker == 0){
                        NSString *Thing = [NSString stringWithFormat:@"C%iSolved", ChallengeID];
                        int Solve = (int)[[NSUserDefaults standardUserDefaults] integerForKey:Thing];
                        Solve ++;
                        [[NSUserDefaults standardUserDefaults] setInteger:Solve forKey:Thing];
                    UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Challenge Completed" message:@"Yeah! Ok! You have completed Challenge 27, Good Job!." delegate:nil cancelButtonTitle:@"Phone-Five!" otherButtonTitles: nil];
                    
                    [alert show];
                }
                break;
                
                
            default:
                break;
        }
    }
    
    _Score.text = [NSString stringWithFormat:@"%i", ScoreNo];
}

- (IBAction)BottomRight:(id)sender {
    
    if(Grd[4][5]){
        Grd[4][5] = false;
        _G45.hidden = YES;
    }
    else{
        Grd[4][5] = true;
        _G45.hidden = NO;
    }
    
    if(Grd[5][4]){
        Grd[5][4] = false;
        _G54.hidden = YES;
    }
    else{
        Grd[5][4] = true;
        _G54.hidden = NO;
    }
    
    if(Grd[5][5]){
        Grd[5][5] = false;
        _G55.hidden = YES;
    }
    else{
        Grd[5][5] = true;
        _G55.hidden = NO;
    }
    
    ScoreNo = 0;
    
    for(int i=0; i<6; ++i){
        for(int j=0; j<6; ++j){
            if(Grd[i][j])
                ScoreNo++;
        }
    }
    
    if(ChallengeID == 0){
        if(ScoreNo == 36){
            UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"You Won!"
                                                            message:@"Yeah, you won, big deal!"
                                                           delegate:self
                                                  cancelButtonTitle:@"Back"
                                                  otherButtonTitles:@"Again!",nil];
            [alert show];
        }
    }
    else{
        switch (ChallengeID) {
            case 17:
                checker = 0;
                for(int i=0; i<6; ++i){
                    for(int j=0; j<6; ++j){
                        if(Grd[i][j] != C17[i][j])
                            checker ++;
                    }
                }
                if(checker == 0){
                        NSString *Thing = [NSString stringWithFormat:@"C%iSolved", ChallengeID];
                        int Solve = (int)[[NSUserDefaults standardUserDefaults] integerForKey:Thing];
                        Solve ++;
                        [[NSUserDefaults standardUserDefaults] setInteger:Solve forKey:Thing];
                    UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Challenge Completed" message:@"Yeah! Ok! You have completed Challenge 17, Good Job!." delegate:nil cancelButtonTitle:@"Phone-Five!" otherButtonTitles: nil];
                    
                    [alert show];
                }
                break;
                
            case 18:
                checker = 0;
                for(int i=0; i<6; ++i){
                    for(int j=0; j<6; ++j){
                        if(Grd[i][j] != C18[i][j])
                            checker ++;
                    }
                }
                if(checker == 0){
                        NSString *Thing = [NSString stringWithFormat:@"C%iSolved", ChallengeID];
                        int Solve = (int)[[NSUserDefaults standardUserDefaults] integerForKey:Thing];
                        Solve ++;
                        [[NSUserDefaults standardUserDefaults] setInteger:Solve forKey:Thing];
                    UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Challenge Completed" message:@"Yeah! Ok! You have completed Challenge 18, Good Job!." delegate:nil cancelButtonTitle:@"Phone-Five!" otherButtonTitles: nil];
                    
                    [alert show];
                }
                break;
                
                
            case 19:
                checker = 0;
                for(int i=0; i<6; ++i){
                    for(int j=0; j<6; ++j){
                        if(Grd[i][j] != C19[i][j])
                            checker ++;
                    }
                }
                if(checker == 0){
                        NSString *Thing = [NSString stringWithFormat:@"C%iSolved", ChallengeID];
                        int Solve = (int)[[NSUserDefaults standardUserDefaults] integerForKey:Thing];
                        Solve ++;
                        [[NSUserDefaults standardUserDefaults] setInteger:Solve forKey:Thing];
                    UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Challenge Completed" message:@"Yeah! Ok! You have completed Challenge 19, Good Job!." delegate:nil cancelButtonTitle:@"Phone-Five!" otherButtonTitles: nil];
                    
                    [alert show];
                }
                break;
                
            case 20:
                checker = 0;
                for(int i=0; i<6; ++i){
                    for(int j=0; j<6; ++j){
                        if(Grd[i][j] != C20[i][j])
                            checker ++;
                    }
                }
                if(checker == 0){
                        NSString *Thing = [NSString stringWithFormat:@"C%iSolved", ChallengeID];
                        int Solve = (int)[[NSUserDefaults standardUserDefaults] integerForKey:Thing];
                        Solve ++;
                        [[NSUserDefaults standardUserDefaults] setInteger:Solve forKey:Thing];
                    UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Challenge Completed" message:@"Yeah! Ok! You have completed Challenge 20, Good Job!." delegate:nil cancelButtonTitle:@"Phone-Five!" otherButtonTitles: nil];
                    
                    [alert show];
                }
                break;
                
            case 21:
                checker = 0;
                for(int i=0; i<6; ++i){
                    for(int j=0; j<6; ++j){
                        if(Grd[i][j] != C21[i][j])
                            checker ++;
                    }
                }
                if(checker == 0){
                        NSString *Thing = [NSString stringWithFormat:@"C%iSolved", ChallengeID];
                        int Solve = (int)[[NSUserDefaults standardUserDefaults] integerForKey:Thing];
                        Solve ++;
                        [[NSUserDefaults standardUserDefaults] setInteger:Solve forKey:Thing];
                    UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Challenge Completed" message:@"Yeah! Ok! You have completed Challenge 21, Good Job!." delegate:nil cancelButtonTitle:@"Phone-Five!" otherButtonTitles: nil];
                    
                    [alert show];
                }
                break;
                
            case 22:
                checker = 0;
                for(int i=0; i<6; ++i){
                    for(int j=0; j<6; ++j){
                        if(Grd[i][j] != C22[i][j])
                            checker ++;
                    }
                }
                if(checker == 0){
                        NSString *Thing = [NSString stringWithFormat:@"C%iSolved", ChallengeID];
                        int Solve = (int)[[NSUserDefaults standardUserDefaults] integerForKey:Thing];
                        Solve ++;
                        [[NSUserDefaults standardUserDefaults] setInteger:Solve forKey:Thing];
                    UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Challenge Completed" message:@"Yeah! Ok! You have completed Challenge 22, Good Job!." delegate:nil cancelButtonTitle:@"Phone-Five!" otherButtonTitles: nil];
                    
                    [alert show];
                }
                break;
                
                
            case 23:
                checker = 0;
                for(int i=0; i<6; ++i){
                    for(int j=0; j<6; ++j){
                        if(Grd[i][j] != C23[i][j])
                            checker ++;
                    }
                }
                if(checker == 0){
                        NSString *Thing = [NSString stringWithFormat:@"C%iSolved", ChallengeID];
                        int Solve = (int)[[NSUserDefaults standardUserDefaults] integerForKey:Thing];
                        Solve ++;
                        [[NSUserDefaults standardUserDefaults] setInteger:Solve forKey:Thing];
                    UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Challenge Completed" message:@"Yeah! Ok! You have completed Challenge 23, Good Job!." delegate:nil cancelButtonTitle:@"Phone-Five!" otherButtonTitles: nil];
                    
                    [alert show];
                }
                break;
                
            case 24:
                checker = 0;
                for(int i=0; i<6; ++i){
                    for(int j=0; j<6; ++j){
                        if(Grd[i][j] != C24[i][j])
                            checker ++;
                    }
                }
                if(checker == 0){
                        NSString *Thing = [NSString stringWithFormat:@"C%iSolved", ChallengeID];
                        int Solve = (int)[[NSUserDefaults standardUserDefaults] integerForKey:Thing];
                        Solve ++;
                        [[NSUserDefaults standardUserDefaults] setInteger:Solve forKey:Thing];
                    UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Challenge Completed" message:@"Yeah! Ok! You have completed Challenge 24, Good Job!." delegate:nil cancelButtonTitle:@"Phone-Five!" otherButtonTitles: nil];
                    
                    [alert show];
                }
                break;
                
            case 25:
                checker = 0;
                for(int i=0; i<6; ++i){
                    for(int j=0; j<6; ++j){
                        if(Grd[i][j] != C25[i][j])
                            checker ++;
                    }
                }
                if(checker == 0){
                        NSString *Thing = [NSString stringWithFormat:@"C%iSolved", ChallengeID];
                        int Solve = (int)[[NSUserDefaults standardUserDefaults] integerForKey:Thing];
                        Solve ++;
                        [[NSUserDefaults standardUserDefaults] setInteger:Solve forKey:Thing];
                    UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Challenge Completed" message:@"Yeah! Ok! You have completed Challenge 25, Good Job!." delegate:nil cancelButtonTitle:@"Phone-Five!" otherButtonTitles: nil];
                    
                    [alert show];
                }
                break;
                
            case 26:
                checker = 0;
                for(int i=0; i<6; ++i){
                    for(int j=0; j<6; ++j){
                        if(Grd[i][j] != C26[i][j])
                            checker ++;
                    }
                }
                if(checker == 0){
                        NSString *Thing = [NSString stringWithFormat:@"C%iSolved", ChallengeID];
                        int Solve = (int)[[NSUserDefaults standardUserDefaults] integerForKey:Thing];
                        Solve ++;
                        [[NSUserDefaults standardUserDefaults] setInteger:Solve forKey:Thing];
                    UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Challenge Completed" message:@"Yeah! Ok! You have completed Challenge 26, Good Job!." delegate:nil cancelButtonTitle:@"Phone-Five!" otherButtonTitles: nil];
                    
                    [alert show];
                }
                break;
                
            case 27:
                checker = 0;
                for(int i=0; i<6; ++i){
                    for(int j=0; j<6; ++j){
                        if(Grd[i][j] != C27[i][j])
                            checker ++;
                    }
                }
                if(checker == 0){
                        NSString *Thing = [NSString stringWithFormat:@"C%iSolved", ChallengeID];
                        int Solve = (int)[[NSUserDefaults standardUserDefaults] integerForKey:Thing];
                        Solve ++;
                        [[NSUserDefaults standardUserDefaults] setInteger:Solve forKey:Thing];
                    UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Challenge Completed" message:@"Yeah! Ok! You have completed Challenge 27, Good Job!." delegate:nil cancelButtonTitle:@"Phone-Five!" otherButtonTitles: nil];
                    
                    [alert show];
                }
                break;
                
                
            default:
                break;
        }
    }
    
    _Score.text = [NSString stringWithFormat:@"%i", ScoreNo];
}

- (IBAction)Top:(id)sender {
    
    switch ([sender tag]) {
        case 1:
            if(Grd[0][0]){
                Grd[0][0] = false;
                _G00.hidden = YES;
            }
            else{
                Grd[0][0] = true;
                _G00.hidden = NO;
            }
            
            if(Grd[0][1]){
                Grd[0][1] = false;
                _G01.hidden = YES;
            }
            else{
                Grd[0][1] = true;
                _G01.hidden = NO;
            }
            
            if(Grd[0][2]){
                Grd[0][2] = false;
                _G02.hidden = YES;
            }
            else{
                Grd[0][2] = true;
                _G02.hidden = NO;
            }
            if(Grd[1][1]){
                Grd[1][1] = false;
                _G11.hidden = YES;
            }
            else{
                Grd[1][1] = true;
                _G11.hidden = NO;
            }
            break;
            
        case 2:
            if(Grd[0][1]){
                Grd[0][1] = false;
                _G01.hidden = YES;
            }
            else{
                Grd[0][1] = true;
                _G01.hidden = NO;
            }
            
            if(Grd[0][2]){
                Grd[0][2] = false;
                _G02.hidden = YES;
            }
            else{
                Grd[0][2] = true;
                _G02.hidden = NO;
            }
            
            if(Grd[0][3]){
                Grd[0][3] = false;
                _G03.hidden = YES;
            }
            else{
                Grd[0][3] = true;
                _G03.hidden = NO;
            }
            if(Grd[1][2]){
                Grd[1][2] = false;
                _G12.hidden = YES;
            }
            else{
                Grd[1][2] = true;
                _G12.hidden = NO;
            }
            break;
            
        case 3:
            if(Grd[0][2]){
                Grd[0][2] = false;
                _G02.hidden = YES;
            }
            else{
                Grd[0][2] = true;
                _G02.hidden = NO;
            }
            
            if(Grd[0][3]){
                Grd[0][3] = false;
                _G03.hidden = YES;
            }
            else{
                Grd[0][3] = true;
                _G03.hidden = NO;
            }
            
            if(Grd[0][4]){
                Grd[0][4] = false;
                _G04.hidden = YES;
            }
            else{
                Grd[0][4] = true;
                _G04.hidden = NO;
            }
            if(Grd[1][3]){
                Grd[1][3] = false;
                _G13.hidden = YES;
            }
            else{
                Grd[1][3] = true;
                _G13.hidden = NO;
            }
            break;
            
        case 4:
            if(Grd[0][3]){
                Grd[0][3] = false;
                _G03.hidden = YES;
            }
            else{
                Grd[0][3] = true;
                _G03.hidden = NO;
            }
            
            if(Grd[0][4]){
                Grd[0][4] = false;
                _G04.hidden = YES;
            }
            else{
                Grd[0][4] = true;
                _G04.hidden = NO;
            }
            
            if(Grd[0][5]){
                Grd[0][5] = false;
                _G05.hidden = YES;
            }
            else{
                Grd[0][5] = true;
                _G05.hidden = NO;
            }
            if(Grd[1][4]){
                Grd[1][4] = false;
                _G14.hidden = YES;
            }
            else{
                Grd[1][4] = true;
                _G14.hidden = NO;
            }
            break;
            
        default:
            break;
    }
    
    ScoreNo = 0;
    
    for(int i=0; i<6; ++i){
        for(int j=0; j<6; ++j){
            if(Grd[i][j])
                ScoreNo++;
        }
    }
    
    if(ChallengeID == 0){
        if(ScoreNo == 36){
            UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"You Won!"
                                                            message:@"Yeah, you won, big deal!"
                                                           delegate:self
                                                  cancelButtonTitle:@"Back"
                                                  otherButtonTitles:@"Again!",nil];
            [alert show];
        }
    }
    else{
        switch (ChallengeID) {
            case 17:
                checker = 0;
                for(int i=0; i<6; ++i){
                    for(int j=0; j<6; ++j){
                        if(Grd[i][j] != C17[i][j])
                            checker ++;
                    }
                }
                if(checker == 0){
                        NSString *Thing = [NSString stringWithFormat:@"C%iSolved", ChallengeID];
                        int Solve = (int)[[NSUserDefaults standardUserDefaults] integerForKey:Thing];
                        Solve ++;
                        [[NSUserDefaults standardUserDefaults] setInteger:Solve forKey:Thing];
                    UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Challenge Completed" message:@"Yeah! Ok! You have completed Challenge 17, Good Job!." delegate:nil cancelButtonTitle:@"Phone-Five!" otherButtonTitles: nil];
                    
                    [alert show];
                }
                break;
                
            case 18:
                checker = 0;
                for(int i=0; i<6; ++i){
                    for(int j=0; j<6; ++j){
                        if(Grd[i][j] != C18[i][j])
                            checker ++;
                    }
                }
                if(checker == 0){
                        NSString *Thing = [NSString stringWithFormat:@"C%iSolved", ChallengeID];
                        int Solve = (int)[[NSUserDefaults standardUserDefaults] integerForKey:Thing];
                        Solve ++;
                        [[NSUserDefaults standardUserDefaults] setInteger:Solve forKey:Thing];
                    UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Challenge Completed" message:@"Yeah! Ok! You have completed Challenge 18, Good Job!." delegate:nil cancelButtonTitle:@"Phone-Five!" otherButtonTitles: nil];
                    
                    [alert show];
                }
                break;
                
                
            case 19:
                checker = 0;
                for(int i=0; i<6; ++i){
                    for(int j=0; j<6; ++j){
                        if(Grd[i][j] != C19[i][j])
                            checker ++;
                    }
                }
                if(checker == 0){
                        NSString *Thing = [NSString stringWithFormat:@"C%iSolved", ChallengeID];
                        int Solve = (int)[[NSUserDefaults standardUserDefaults] integerForKey:Thing];
                        Solve ++;
                        [[NSUserDefaults standardUserDefaults] setInteger:Solve forKey:Thing];
                    UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Challenge Completed" message:@"Yeah! Ok! You have completed Challenge 19, Good Job!." delegate:nil cancelButtonTitle:@"Phone-Five!" otherButtonTitles: nil];
                    
                    [alert show];
                }
                break;
                
            case 20:
                checker = 0;
                for(int i=0; i<6; ++i){
                    for(int j=0; j<6; ++j){
                        if(Grd[i][j] != C20[i][j])
                            checker ++;
                    }
                }
                if(checker == 0){
                        NSString *Thing = [NSString stringWithFormat:@"C%iSolved", ChallengeID];
                        int Solve = (int)[[NSUserDefaults standardUserDefaults] integerForKey:Thing];
                        Solve ++;
                        [[NSUserDefaults standardUserDefaults] setInteger:Solve forKey:Thing];
                    UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Challenge Completed" message:@"Yeah! Ok! You have completed Challenge 20, Good Job!." delegate:nil cancelButtonTitle:@"Phone-Five!" otherButtonTitles: nil];
                    
                    [alert show];
                }
                break;
                
            case 21:
                checker = 0;
                for(int i=0; i<6; ++i){
                    for(int j=0; j<6; ++j){
                        if(Grd[i][j] != C21[i][j])
                            checker ++;
                    }
                }
                if(checker == 0){
                        NSString *Thing = [NSString stringWithFormat:@"C%iSolved", ChallengeID];
                        int Solve = (int)[[NSUserDefaults standardUserDefaults] integerForKey:Thing];
                        Solve ++;
                        [[NSUserDefaults standardUserDefaults] setInteger:Solve forKey:Thing];
                    UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Challenge Completed" message:@"Yeah! Ok! You have completed Challenge 21, Good Job!." delegate:nil cancelButtonTitle:@"Phone-Five!" otherButtonTitles: nil];
                    
                    [alert show];
                }
                break;
                
            case 22:
                checker = 0;
                for(int i=0; i<6; ++i){
                    for(int j=0; j<6; ++j){
                        if(Grd[i][j] != C22[i][j])
                            checker ++;
                    }
                }
                if(checker == 0){
                        NSString *Thing = [NSString stringWithFormat:@"C%iSolved", ChallengeID];
                        int Solve = (int)[[NSUserDefaults standardUserDefaults] integerForKey:Thing];
                        Solve ++;
                        [[NSUserDefaults standardUserDefaults] setInteger:Solve forKey:Thing];
                    UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Challenge Completed" message:@"Yeah! Ok! You have completed Challenge 22, Good Job!." delegate:nil cancelButtonTitle:@"Phone-Five!" otherButtonTitles: nil];
                    
                    [alert show];
                }
                break;
                
                
            case 23:
                checker = 0;
                for(int i=0; i<6; ++i){
                    for(int j=0; j<6; ++j){
                        if(Grd[i][j] != C23[i][j])
                            checker ++;
                    }
                }
                if(checker == 0){
                        NSString *Thing = [NSString stringWithFormat:@"C%iSolved", ChallengeID];
                        int Solve = (int)[[NSUserDefaults standardUserDefaults] integerForKey:Thing];
                        Solve ++;
                        [[NSUserDefaults standardUserDefaults] setInteger:Solve forKey:Thing];
                    UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Challenge Completed" message:@"Yeah! Ok! You have completed Challenge 23, Good Job!." delegate:nil cancelButtonTitle:@"Phone-Five!" otherButtonTitles: nil];
                    
                    [alert show];
                }
                break;
                
            case 24:
                checker = 0;
                for(int i=0; i<6; ++i){
                    for(int j=0; j<6; ++j){
                        if(Grd[i][j] != C24[i][j])
                            checker ++;
                    }
                }
                if(checker == 0){
                        NSString *Thing = [NSString stringWithFormat:@"C%iSolved", ChallengeID];
                        int Solve = (int)[[NSUserDefaults standardUserDefaults] integerForKey:Thing];
                        Solve ++;
                        [[NSUserDefaults standardUserDefaults] setInteger:Solve forKey:Thing];
                    UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Challenge Completed" message:@"Yeah! Ok! You have completed Challenge 24, Good Job!." delegate:nil cancelButtonTitle:@"Phone-Five!" otherButtonTitles: nil];
                    
                    [alert show];
                }
                break;
                
            case 25:
                checker = 0;
                for(int i=0; i<6; ++i){
                    for(int j=0; j<6; ++j){
                        if(Grd[i][j] != C25[i][j])
                            checker ++;
                    }
                }
                if(checker == 0){
                        NSString *Thing = [NSString stringWithFormat:@"C%iSolved", ChallengeID];
                        int Solve = (int)[[NSUserDefaults standardUserDefaults] integerForKey:Thing];
                        Solve ++;
                        [[NSUserDefaults standardUserDefaults] setInteger:Solve forKey:Thing];
                    UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Challenge Completed" message:@"Yeah! Ok! You have completed Challenge 25, Good Job!." delegate:nil cancelButtonTitle:@"Phone-Five!" otherButtonTitles: nil];
                    
                    [alert show];
                }
                break;
                
            case 26:
                checker = 0;
                for(int i=0; i<6; ++i){
                    for(int j=0; j<6; ++j){
                        if(Grd[i][j] != C26[i][j])
                            checker ++;
                    }
                }
                if(checker == 0){
                        NSString *Thing = [NSString stringWithFormat:@"C%iSolved", ChallengeID];
                        int Solve = (int)[[NSUserDefaults standardUserDefaults] integerForKey:Thing];
                        Solve ++;
                        [[NSUserDefaults standardUserDefaults] setInteger:Solve forKey:Thing];
                    UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Challenge Completed" message:@"Yeah! Ok! You have completed Challenge 26, Good Job!." delegate:nil cancelButtonTitle:@"Phone-Five!" otherButtonTitles: nil];
                    
                    [alert show];
                }
                break;
                
            case 27:
                checker = 0;
                for(int i=0; i<6; ++i){
                    for(int j=0; j<6; ++j){
                        if(Grd[i][j] != C27[i][j])
                            checker ++;
                    }
                }
                if(checker == 0){
                        NSString *Thing = [NSString stringWithFormat:@"C%iSolved", ChallengeID];
                        int Solve = (int)[[NSUserDefaults standardUserDefaults] integerForKey:Thing];
                        Solve ++;
                        [[NSUserDefaults standardUserDefaults] setInteger:Solve forKey:Thing];
                    UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Challenge Completed" message:@"Yeah! Ok! You have completed Challenge 27, Good Job!." delegate:nil cancelButtonTitle:@"Phone-Five!" otherButtonTitles: nil];
                    
                    [alert show];
                }
                break;
                
                
            default:
                break;
        }
    }
    
    
    _Score.text = [NSString stringWithFormat:@"%i", ScoreNo];
}

- (IBAction)Right:(id)sender {
    
    switch ([sender tag]) {
        case 15:
            if(Grd[0][5]){
                Grd[0][5] = false;
                _G05.hidden = YES;
            }
            else{
                Grd[0][5] = true;
                _G05.hidden = NO;
            }
            if(Grd[1][4]){
                Grd[1][4] = false;
                _G14.hidden = YES;
            }
            else{
                Grd[1][4] = true;
                _G14.hidden = NO;
            }
            
            if(Grd[1][5]){
                Grd[1][5] = false;
                _G15.hidden = YES;
            }
            else{
                Grd[1][5] = true;
                _G15.hidden = NO;
            }
            if(Grd[2][5]){
                Grd[2][5] = false;
                _G25.hidden = YES;
            }
            else{
                Grd[2][5] = true;
                _G25.hidden = NO;
            }
            break;
            
        case 25:
            if(Grd[1][5]){
                Grd[1][5] = false;
                _G15.hidden = YES;
            }
            else{
                Grd[1][5] = true;
                _G15.hidden = NO;
            }
            if(Grd[2][4]){
                Grd[2][4] = false;
                _G24.hidden = YES;
            }
            else{
                Grd[2][4] = true;
                _G24.hidden = NO;
            }
            
            if(Grd[2][5]){
                Grd[2][5] = false;
                _G25.hidden = YES;
            }
            else{
                Grd[2][5] = true;
                _G25.hidden = NO;
            }
            if(Grd[3][5]){
                Grd[3][5] = false;
                _G35.hidden = YES;
            }
            else{
                Grd[3][5] = true;
                _G35.hidden = NO;
            }
            break;
            
        case 35:
            if(Grd[2][5]){
                Grd[2][5] = false;
                _G25.hidden = YES;
            }
            else{
                Grd[2][5] = true;
                _G25.hidden = NO;
            }
            if(Grd[3][4]){
                Grd[3][4] = false;
                _G34.hidden = YES;
            }
            else{
                Grd[3][4] = true;
                _G34.hidden = NO;
            }
            
            if(Grd[3][5]){
                Grd[3][5] = false;
                _G35.hidden = YES;
            }
            else{
                Grd[3][5] = true;
                _G35.hidden = NO;
            }
            if(Grd[4][5]){
                Grd[4][5] = false;
                _G45.hidden = YES;
            }
            else{
                Grd[4][5] = true;
                _G45.hidden = NO;
            }
            break;
            
        case 45:
            if(Grd[3][5]){
                Grd[3][5] = false;
                _G35.hidden = YES;
            }
            else{
                Grd[3][5] = true;
                _G35.hidden = NO;
            }
            if(Grd[4][4]){
                Grd[4][4] = false;
                _G44.hidden = YES;
            }
            else{
                Grd[4][4] = true;
                _G44.hidden = NO;
            }
            
            if(Grd[4][5]){
                Grd[4][5] = false;
                _G45.hidden = YES;
            }
            else{
                Grd[4][5] = true;
                _G45.hidden = NO;
            }
            if(Grd[5][5]){
                Grd[5][5] = false;
                _G55.hidden = YES;
            }
            else{
                Grd[5][5] = true;
                _G55.hidden = NO;
            }
            
        default:
            break;
    }
    
    ScoreNo = 0;
    
    for(int i=0; i<6; ++i){
        for(int j=0; j<6; ++j){
            if(Grd[i][j])
                ScoreNo++;
        }
    }
    
    if(ChallengeID == 0){
        if(ScoreNo == 36){
            UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"You Won!"
                                                            message:@"Yeah, you won, big deal!"
                                                           delegate:self
                                                  cancelButtonTitle:@"Back"
                                                  otherButtonTitles:@"Again!",nil];
            [alert show];
        }
    }
    else{
        switch (ChallengeID) {
            case 17:
                checker = 0;
                for(int i=0; i<6; ++i){
                    for(int j=0; j<6; ++j){
                        if(Grd[i][j] != C17[i][j])
                            checker ++;
                    }
                }
                if(checker == 0){
                        NSString *Thing = [NSString stringWithFormat:@"C%iSolved", ChallengeID];
                        int Solve = (int)[[NSUserDefaults standardUserDefaults] integerForKey:Thing];
                        Solve ++;
                        [[NSUserDefaults standardUserDefaults] setInteger:Solve forKey:Thing];
                    UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Challenge Completed" message:@"Yeah! Ok! You have completed Challenge 17, Good Job!." delegate:nil cancelButtonTitle:@"Phone-Five!" otherButtonTitles: nil];
                    
                    [alert show];
                }
                break;
                
            case 18:
                checker = 0;
                for(int i=0; i<6; ++i){
                    for(int j=0; j<6; ++j){
                        if(Grd[i][j] != C18[i][j])
                            checker ++;
                    }
                }
                if(checker == 0){
                        NSString *Thing = [NSString stringWithFormat:@"C%iSolved", ChallengeID];
                        int Solve = (int)[[NSUserDefaults standardUserDefaults] integerForKey:Thing];
                        Solve ++;
                        [[NSUserDefaults standardUserDefaults] setInteger:Solve forKey:Thing];
                    UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Challenge Completed" message:@"Yeah! Ok! You have completed Challenge 18, Good Job!." delegate:nil cancelButtonTitle:@"Phone-Five!" otherButtonTitles: nil];
                    
                    [alert show];
                }
                break;
                
                
            case 19:
                checker = 0;
                for(int i=0; i<6; ++i){
                    for(int j=0; j<6; ++j){
                        if(Grd[i][j] != C19[i][j])
                            checker ++;
                    }
                }
                if(checker == 0){
                        NSString *Thing = [NSString stringWithFormat:@"C%iSolved", ChallengeID];
                        int Solve = (int)[[NSUserDefaults standardUserDefaults] integerForKey:Thing];
                        Solve ++;
                        [[NSUserDefaults standardUserDefaults] setInteger:Solve forKey:Thing];
                    UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Challenge Completed" message:@"Yeah! Ok! You have completed Challenge 19, Good Job!." delegate:nil cancelButtonTitle:@"Phone-Five!" otherButtonTitles: nil];
                    
                    [alert show];
                }
                break;
                
            case 20:
                checker = 0;
                for(int i=0; i<6; ++i){
                    for(int j=0; j<6; ++j){
                        if(Grd[i][j] != C20[i][j])
                            checker ++;
                    }
                }
                if(checker == 0){
                        NSString *Thing = [NSString stringWithFormat:@"C%iSolved", ChallengeID];
                        int Solve = (int)[[NSUserDefaults standardUserDefaults] integerForKey:Thing];
                        Solve ++;
                        [[NSUserDefaults standardUserDefaults] setInteger:Solve forKey:Thing];
                    UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Challenge Completed" message:@"Yeah! Ok! You have completed Challenge 20, Good Job!." delegate:nil cancelButtonTitle:@"Phone-Five!" otherButtonTitles: nil];
                    
                    [alert show];
                }
                break;
                
            case 21:
                checker = 0;
                for(int i=0; i<6; ++i){
                    for(int j=0; j<6; ++j){
                        if(Grd[i][j] != C21[i][j])
                            checker ++;
                    }
                }
                if(checker == 0){
                        NSString *Thing = [NSString stringWithFormat:@"C%iSolved", ChallengeID];
                        int Solve = (int)[[NSUserDefaults standardUserDefaults] integerForKey:Thing];
                        Solve ++;
                        [[NSUserDefaults standardUserDefaults] setInteger:Solve forKey:Thing];
                    UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Challenge Completed" message:@"Yeah! Ok! You have completed Challenge 21, Good Job!." delegate:nil cancelButtonTitle:@"Phone-Five!" otherButtonTitles: nil];
                    
                    [alert show];
                }
                break;
                
            case 22:
                checker = 0;
                for(int i=0; i<6; ++i){
                    for(int j=0; j<6; ++j){
                        if(Grd[i][j] != C22[i][j])
                            checker ++;
                    }
                }
                if(checker == 0){
                        NSString *Thing = [NSString stringWithFormat:@"C%iSolved", ChallengeID];
                        int Solve = (int)[[NSUserDefaults standardUserDefaults] integerForKey:Thing];
                        Solve ++;
                        [[NSUserDefaults standardUserDefaults] setInteger:Solve forKey:Thing];
                    UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Challenge Completed" message:@"Yeah! Ok! You have completed Challenge 22, Good Job!." delegate:nil cancelButtonTitle:@"Phone-Five!" otherButtonTitles: nil];
                    
                    [alert show];
                }
                break;
                
                
            case 23:
                checker = 0;
                for(int i=0; i<6; ++i){
                    for(int j=0; j<6; ++j){
                        if(Grd[i][j] != C23[i][j])
                            checker ++;
                    }
                }
                if(checker == 0){
                        NSString *Thing = [NSString stringWithFormat:@"C%iSolved", ChallengeID];
                        int Solve = (int)[[NSUserDefaults standardUserDefaults] integerForKey:Thing];
                        Solve ++;
                        [[NSUserDefaults standardUserDefaults] setInteger:Solve forKey:Thing];
                    UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Challenge Completed" message:@"Yeah! Ok! You have completed Challenge 23, Good Job!." delegate:nil cancelButtonTitle:@"Phone-Five!" otherButtonTitles: nil];
                    
                    [alert show];
                }
                break;
                
            case 24:
                checker = 0;
                for(int i=0; i<6; ++i){
                    for(int j=0; j<6; ++j){
                        if(Grd[i][j] != C24[i][j])
                            checker ++;
                    }
                }
                if(checker == 0){
                        NSString *Thing = [NSString stringWithFormat:@"C%iSolved", ChallengeID];
                        int Solve = (int)[[NSUserDefaults standardUserDefaults] integerForKey:Thing];
                        Solve ++;
                        [[NSUserDefaults standardUserDefaults] setInteger:Solve forKey:Thing];
                    UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Challenge Completed" message:@"Yeah! Ok! You have completed Challenge 24, Good Job!." delegate:nil cancelButtonTitle:@"Phone-Five!" otherButtonTitles: nil];
                    
                    [alert show];
                }
                break;
                
            case 25:
                checker = 0;
                for(int i=0; i<6; ++i){
                    for(int j=0; j<6; ++j){
                        if(Grd[i][j] != C25[i][j])
                            checker ++;
                    }
                }
                if(checker == 0){
                        NSString *Thing = [NSString stringWithFormat:@"C%iSolved", ChallengeID];
                        int Solve = (int)[[NSUserDefaults standardUserDefaults] integerForKey:Thing];
                        Solve ++;
                        [[NSUserDefaults standardUserDefaults] setInteger:Solve forKey:Thing];
                    UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Challenge Completed" message:@"Yeah! Ok! You have completed Challenge 25, Good Job!." delegate:nil cancelButtonTitle:@"Phone-Five!" otherButtonTitles: nil];
                    
                    [alert show];
                }
                break;
                
            case 26:
                checker = 0;
                for(int i=0; i<6; ++i){
                    for(int j=0; j<6; ++j){
                        if(Grd[i][j] != C26[i][j])
                            checker ++;
                    }
                }
                if(checker == 0){
                        NSString *Thing = [NSString stringWithFormat:@"C%iSolved", ChallengeID];
                        int Solve = (int)[[NSUserDefaults standardUserDefaults] integerForKey:Thing];
                        Solve ++;
                        [[NSUserDefaults standardUserDefaults] setInteger:Solve forKey:Thing];
                    UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Challenge Completed" message:@"Yeah! Ok! You have completed Challenge 26, Good Job!." delegate:nil cancelButtonTitle:@"Phone-Five!" otherButtonTitles: nil];
                    
                    [alert show];
                }
                break;
                
            case 27:
                checker = 0;
                for(int i=0; i<6; ++i){
                    for(int j=0; j<6; ++j){
                        if(Grd[i][j] != C27[i][j])
                            checker ++;
                    }
                }
                if(checker == 0){
                        NSString *Thing = [NSString stringWithFormat:@"C%iSolved", ChallengeID];
                        int Solve = (int)[[NSUserDefaults standardUserDefaults] integerForKey:Thing];
                        Solve ++;
                        [[NSUserDefaults standardUserDefaults] setInteger:Solve forKey:Thing];
                    UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Challenge Completed" message:@"Yeah! Ok! You have completed Challenge 27, Good Job!." delegate:nil cancelButtonTitle:@"Phone-Five!" otherButtonTitles: nil];
                    
                    [alert show];
                }
                break;
                
                
            default:
                break;
        }
    }
    
    _Score.text = [NSString stringWithFormat:@"%i", ScoreNo];
}

- (IBAction)Bottom:(id)sender {
    
    switch ([sender tag]) {
        case 51:
            if(Grd[4][1]){
                Grd[4][1] = false;
                _G41.hidden = YES;
            }
            else{
                Grd[4][1] = true;
                _G41.hidden = NO;
            }
            if(Grd[5][0]){
                Grd[5][0] = false;
                _G50.hidden = YES;
            }
            else{
                Grd[5][0] = true;
                _G50.hidden = NO;
            }
            
            if(Grd[5][1]){
                Grd[5][1] = false;
                _G51.hidden = YES;
            }
            else{
                Grd[5][1] = true;
                _G51.hidden = NO;
            }
            
            if(Grd[5][2]){
                Grd[5][2] = false;
                _G52.hidden = YES;
            }
            else{
                Grd[5][2] = true;
                _G52.hidden = NO;
            }
            break;
            
        case 52:
            if(Grd[4][2]){
                Grd[4][2] = false;
                _G42.hidden = YES;
            }
            else{
                Grd[4][2] = true;
                _G42.hidden = NO;
            }
            if(Grd[5][1]){
                Grd[5][1] = false;
                _G51.hidden = YES;
            }
            else{
                Grd[5][1] = true;
                _G51.hidden = NO;
            }
            
            if(Grd[5][2]){
                Grd[5][2] = false;
                _G52.hidden = YES;
            }
            else{
                Grd[5][2] = true;
                _G52.hidden = NO;
            }
            
            if(Grd[5][3]){
                Grd[5][3] = false;
                _G53.hidden = YES;
            }
            else{
                Grd[5][3] = true;
                _G53.hidden = NO;
            }
            break;
            
        case 53:
            if(Grd[4][3]){
                Grd[4][3] = false;
                _G43.hidden = YES;
            }
            else{
                Grd[4][3] = true;
                _G43.hidden = NO;
            }
            if(Grd[5][2]){
                Grd[5][2] = false;
                _G52.hidden = YES;
            }
            else{
                Grd[5][2] = true;
                _G52.hidden = NO;
            }
            
            if(Grd[5][3]){
                Grd[5][3] = false;
                _G53.hidden = YES;
            }
            else{
                Grd[5][3] = true;
                _G53.hidden = NO;
            }
            
            if(Grd[5][4]){
                Grd[5][4] = false;
                _G54.hidden = YES;
            }
            else{
                Grd[5][4] = true;
                _G54.hidden = NO;
            }
            break;
            
        case 54:
            if(Grd[4][4]){
                Grd[4][4] = false;
                _G44.hidden = YES;
            }
            else{
                Grd[4][4] = true;
                _G44.hidden = NO;
            }
            if(Grd[5][3]){
                Grd[5][3] = false;
                _G53.hidden = YES;
            }
            else{
                Grd[5][3] = true;
                _G53.hidden = NO;
            }
            
            if(Grd[5][4]){
                Grd[5][4] = false;
                _G54.hidden = YES;
            }
            else{
                Grd[5][4] = true;
                _G54.hidden = NO;
            }
            
            if(Grd[5][5]){
                Grd[5][5] = false;
                _G55.hidden = YES;
            }
            else{
                Grd[5][5] = true;
                _G55.hidden = NO;
            }
            break;
            
        default:
            break;
    }
    
    ScoreNo = 0;
    
    for(int i=0; i<6; ++i){
        for(int j=0; j<6; ++j){
            if(Grd[i][j])
                ScoreNo++;
        }
    }
    
    if(ChallengeID == 0){
        if(ScoreNo == 36){
            UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"You Won!"
                                                            message:@"Yeah, you won, big deal!"
                                                           delegate:self
                                                  cancelButtonTitle:@"Back"
                                                  otherButtonTitles:@"Again!",nil];
            [alert show];
        }
    }
    else{
        switch (ChallengeID) {
            case 17:
                checker = 0;
                for(int i=0; i<6; ++i){
                    for(int j=0; j<6; ++j){
                        if(Grd[i][j] != C17[i][j])
                            checker ++;
                    }
                }
                if(checker == 0){
                        NSString *Thing = [NSString stringWithFormat:@"C%iSolved", ChallengeID];
                        int Solve = (int)[[NSUserDefaults standardUserDefaults] integerForKey:Thing];
                        Solve ++;
                        [[NSUserDefaults standardUserDefaults] setInteger:Solve forKey:Thing];
                    UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Challenge Completed" message:@"Yeah! Ok! You have completed Challenge 17, Good Job!." delegate:nil cancelButtonTitle:@"Phone-Five!" otherButtonTitles: nil];
                    
                    [alert show];
                }
                break;
                
            case 18:
                checker = 0;
                for(int i=0; i<6; ++i){
                    for(int j=0; j<6; ++j){
                        if(Grd[i][j] != C18[i][j])
                            checker ++;
                    }
                }
                if(checker == 0){
                        NSString *Thing = [NSString stringWithFormat:@"C%iSolved", ChallengeID];
                        int Solve = (int)[[NSUserDefaults standardUserDefaults] integerForKey:Thing];
                        Solve ++;
                        [[NSUserDefaults standardUserDefaults] setInteger:Solve forKey:Thing];
                    UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Challenge Completed" message:@"Yeah! Ok! You have completed Challenge 18, Good Job!." delegate:nil cancelButtonTitle:@"Phone-Five!" otherButtonTitles: nil];
                    
                    [alert show];
                }
                break;
                
                
            case 19:
                checker = 0;
                for(int i=0; i<6; ++i){
                    for(int j=0; j<6; ++j){
                        if(Grd[i][j] != C19[i][j])
                            checker ++;
                    }
                }
                if(checker == 0){
                        NSString *Thing = [NSString stringWithFormat:@"C%iSolved", ChallengeID];
                        int Solve = (int)[[NSUserDefaults standardUserDefaults] integerForKey:Thing];
                        Solve ++;
                        [[NSUserDefaults standardUserDefaults] setInteger:Solve forKey:Thing];
                    UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Challenge Completed" message:@"Yeah! Ok! You have completed Challenge 19, Good Job!." delegate:nil cancelButtonTitle:@"Phone-Five!" otherButtonTitles: nil];
                    
                    [alert show];
                }
                break;
                
            case 20:
                checker = 0;
                for(int i=0; i<6; ++i){
                    for(int j=0; j<6; ++j){
                        if(Grd[i][j] != C20[i][j])
                            checker ++;
                    }
                }
                if(checker == 0){
                        NSString *Thing = [NSString stringWithFormat:@"C%iSolved", ChallengeID];
                        int Solve = (int)[[NSUserDefaults standardUserDefaults] integerForKey:Thing];
                        Solve ++;
                        [[NSUserDefaults standardUserDefaults] setInteger:Solve forKey:Thing];
                    UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Challenge Completed" message:@"Yeah! Ok! You have completed Challenge 20, Good Job!." delegate:nil cancelButtonTitle:@"Phone-Five!" otherButtonTitles: nil];
                    
                    [alert show];
                }
                break;
                
            case 21:
                checker = 0;
                for(int i=0; i<6; ++i){
                    for(int j=0; j<6; ++j){
                        if(Grd[i][j] != C21[i][j])
                            checker ++;
                    }
                }
                if(checker == 0){
                        NSString *Thing = [NSString stringWithFormat:@"C%iSolved", ChallengeID];
                        int Solve = (int)[[NSUserDefaults standardUserDefaults] integerForKey:Thing];
                        Solve ++;
                        [[NSUserDefaults standardUserDefaults] setInteger:Solve forKey:Thing];
                    UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Challenge Completed" message:@"Yeah! Ok! You have completed Challenge 21, Good Job!." delegate:nil cancelButtonTitle:@"Phone-Five!" otherButtonTitles: nil];
                    
                    [alert show];
                }
                break;
                
            case 22:
                checker = 0;
                for(int i=0; i<6; ++i){
                    for(int j=0; j<6; ++j){
                        if(Grd[i][j] != C22[i][j])
                            checker ++;
                    }
                }
                if(checker == 0){
                        NSString *Thing = [NSString stringWithFormat:@"C%iSolved", ChallengeID];
                        int Solve = (int)[[NSUserDefaults standardUserDefaults] integerForKey:Thing];
                        Solve ++;
                        [[NSUserDefaults standardUserDefaults] setInteger:Solve forKey:Thing];
                    UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Challenge Completed" message:@"Yeah! Ok! You have completed Challenge 22, Good Job!." delegate:nil cancelButtonTitle:@"Phone-Five!" otherButtonTitles: nil];
                    
                    [alert show];
                }
                break;
                
                
            case 23:
                checker = 0;
                for(int i=0; i<6; ++i){
                    for(int j=0; j<6; ++j){
                        if(Grd[i][j] != C23[i][j])
                            checker ++;
                    }
                }
                if(checker == 0){
                        NSString *Thing = [NSString stringWithFormat:@"C%iSolved", ChallengeID];
                        int Solve = (int)[[NSUserDefaults standardUserDefaults] integerForKey:Thing];
                        Solve ++;
                        [[NSUserDefaults standardUserDefaults] setInteger:Solve forKey:Thing];
                    UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Challenge Completed" message:@"Yeah! Ok! You have completed Challenge 23, Good Job!." delegate:nil cancelButtonTitle:@"Phone-Five!" otherButtonTitles: nil];
                    
                    [alert show];
                }
                break;
                
            case 24:
                checker = 0;
                for(int i=0; i<6; ++i){
                    for(int j=0; j<6; ++j){
                        if(Grd[i][j] != C24[i][j])
                            checker ++;
                    }
                }
                if(checker == 0){
                        NSString *Thing = [NSString stringWithFormat:@"C%iSolved", ChallengeID];
                        int Solve = (int)[[NSUserDefaults standardUserDefaults] integerForKey:Thing];
                        Solve ++;
                        [[NSUserDefaults standardUserDefaults] setInteger:Solve forKey:Thing];
                    UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Challenge Completed" message:@"Yeah! Ok! You have completed Challenge 24, Good Job!." delegate:nil cancelButtonTitle:@"Phone-Five!" otherButtonTitles: nil];
                    
                    [alert show];
                }
                break;
                
            case 25:
                checker = 0;
                for(int i=0; i<6; ++i){
                    for(int j=0; j<6; ++j){
                        if(Grd[i][j] != C25[i][j])
                            checker ++;
                    }
                }
                if(checker == 0){
                        NSString *Thing = [NSString stringWithFormat:@"C%iSolved", ChallengeID];
                        int Solve = (int)[[NSUserDefaults standardUserDefaults] integerForKey:Thing];
                        Solve ++;
                        [[NSUserDefaults standardUserDefaults] setInteger:Solve forKey:Thing];
                    UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Challenge Completed" message:@"Yeah! Ok! You have completed Challenge 25, Good Job!." delegate:nil cancelButtonTitle:@"Phone-Five!" otherButtonTitles: nil];
                    
                    [alert show];
                }
                break;
                
            case 26:
                checker = 0;
                for(int i=0; i<6; ++i){
                    for(int j=0; j<6; ++j){
                        if(Grd[i][j] != C26[i][j])
                            checker ++;
                    }
                }
                if(checker == 0){
                        NSString *Thing = [NSString stringWithFormat:@"C%iSolved", ChallengeID];
                        int Solve = (int)[[NSUserDefaults standardUserDefaults] integerForKey:Thing];
                        Solve ++;
                        [[NSUserDefaults standardUserDefaults] setInteger:Solve forKey:Thing];
                    UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Challenge Completed" message:@"Yeah! Ok! You have completed Challenge 26, Good Job!." delegate:nil cancelButtonTitle:@"Phone-Five!" otherButtonTitles: nil];
                    
                    [alert show];
                }
                break;
                
            case 27:
                checker = 0;
                for(int i=0; i<6; ++i){
                    for(int j=0; j<6; ++j){
                        if(Grd[i][j] != C27[i][j])
                            checker ++;
                    }
                }
                if(checker == 0){
                        NSString *Thing = [NSString stringWithFormat:@"C%iSolved", ChallengeID];
                        int Solve = (int)[[NSUserDefaults standardUserDefaults] integerForKey:Thing];
                        Solve ++;
                        [[NSUserDefaults standardUserDefaults] setInteger:Solve forKey:Thing];
                    UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Challenge Completed" message:@"Yeah! Ok! You have completed Challenge 27, Good Job!." delegate:nil cancelButtonTitle:@"Phone-Five!" otherButtonTitles: nil];
                    
                    [alert show];
                }
                break;
                
                
            default:
                break;
        }
    }
    
    _Score.text = [NSString stringWithFormat:@"%i", ScoreNo];
}

- (IBAction)Left:(id)sender {
    
    switch ([sender tag]) {
        case 10:
            if(Grd[0][0]){
                Grd[0][0] = false;
                _G00.hidden = YES;
            }
            else{
                Grd[0][0] = true;
                _G00.hidden = NO;
            }
            if(Grd[1][0]){
                Grd[1][0] = false;
                _G10.hidden = YES;
            }
            else{
                Grd[1][0] = true;
                _G10.hidden = NO;
            }
            
            if(Grd[1][1]){
                Grd[1][1] = false;
                _G11.hidden = YES;
            }
            else{
                Grd[1][1] = true;
                _G11.hidden = NO;
            }
            if(Grd[2][0]){
                Grd[2][0] = false;
                _G20.hidden = YES;
            }
            else{
                Grd[2][0] = true;
                _G20.hidden = NO;
            }
            break;
            
        case 20:
            if(Grd[1][0]){
                Grd[1][0] = false;
                _G10.hidden = YES;
            }
            else{
                Grd[1][0] = true;
                _G10.hidden = NO;
            }
            if(Grd[2][0]){
                Grd[2][0] = false;
                _G20.hidden = YES;
            }
            else{
                Grd[2][0] = true;
                _G20.hidden = NO;
            }
            
            if(Grd[2][1]){
                Grd[2][1] = false;
                _G21.hidden = YES;
            }
            else{
                Grd[2][1] = true;
                _G21.hidden = NO;
            }
            if(Grd[3][0]){
                Grd[3][0] = false;
                _G30.hidden = YES;
            }
            else{
                Grd[3][0] = true;
                _G30.hidden = NO;
            }
            break;
            
        case 30:
            if(Grd[2][0]){
                Grd[2][0] = false;
                _G20.hidden = YES;
            }
            else{
                Grd[2][0] = true;
                _G20.hidden = NO;
            }
            if(Grd[3][0]){
                Grd[3][0] = false;
                _G30.hidden = YES;
            }
            else{
                Grd[3][0] = true;
                _G30.hidden = NO;
            }
            
            if(Grd[3][1]){
                Grd[3][1] = false;
                _G31.hidden = YES;
            }
            else{
                Grd[3][1] = true;
                _G31.hidden = NO;
            }
            if(Grd[4][0]){
                Grd[4][0] = false;
                _G40.hidden = YES;
            }
            else{
                Grd[4][0] = true;
                _G40.hidden = NO;
            }
            break;
            
        case 40:
            if(Grd[3][0]){
                Grd[3][0] = false;
                _G30.hidden = YES;
            }
            else{
                Grd[3][0] = true;
                _G30.hidden = NO;
            }
            if(Grd[4][0]){
                Grd[4][0] = false;
                _G40.hidden = YES;
            }
            else{
                Grd[4][0] = true;
                _G40.hidden = NO;
            }
            
            if(Grd[4][1]){
                Grd[4][1] = false;
                _G41.hidden = YES;
            }
            else{
                Grd[4][1] = true;
                _G41.hidden = NO;
            }
            if(Grd[5][0]){
                Grd[5][0] = false;
                _G50.hidden = YES;
            }
            else{
                Grd[5][0] = true;
                _G50.hidden = NO;
            }
            
        default:
            break;
    }
    
    ScoreNo = 0;
    
    for(int i=0; i<6; ++i){
        for(int j=0; j<6; ++j){
            if(Grd[i][j])
                ScoreNo++;
        }
    }
    
    if(ChallengeID == 0){
        if(ScoreNo == 36){
            UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"You Won!"
                                                            message:@"Yeah, you won, big deal!"
                                                           delegate:self
                                                  cancelButtonTitle:@"Back"
                                                  otherButtonTitles:@"Again!",nil];
            [alert show];
        }
    }
    else{
        switch (ChallengeID) {
            case 17:
                checker = 0;
                for(int i=0; i<6; ++i){
                    for(int j=0; j<6; ++j){
                        if(Grd[i][j] != C17[i][j])
                            checker ++;
                    }
                }
                if(checker == 0){
                        NSString *Thing = [NSString stringWithFormat:@"C%iSolved", ChallengeID];
                        int Solve = (int)[[NSUserDefaults standardUserDefaults] integerForKey:Thing];
                        Solve ++;
                        [[NSUserDefaults standardUserDefaults] setInteger:Solve forKey:Thing];
                    UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Challenge Completed" message:@"Yeah! Ok! You have completed Challenge 17, Good Job!." delegate:nil cancelButtonTitle:@"Phone-Five!" otherButtonTitles: nil];
                    
                    [alert show];
                }
                break;
                
            case 18:
                checker = 0;
                for(int i=0; i<6; ++i){
                    for(int j=0; j<6; ++j){
                        if(Grd[i][j] != C18[i][j])
                            checker ++;
                    }
                }
                if(checker == 0){
                        NSString *Thing = [NSString stringWithFormat:@"C%iSolved", ChallengeID];
                        int Solve = (int)[[NSUserDefaults standardUserDefaults] integerForKey:Thing];
                        Solve ++;
                        [[NSUserDefaults standardUserDefaults] setInteger:Solve forKey:Thing];
                    UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Challenge Completed" message:@"Yeah! Ok! You have completed Challenge 18, Good Job!." delegate:nil cancelButtonTitle:@"Phone-Five!" otherButtonTitles: nil];
                    
                    [alert show];
                }
                break;
                
                
            case 19:
                checker = 0;
                for(int i=0; i<6; ++i){
                    for(int j=0; j<6; ++j){
                        if(Grd[i][j] != C19[i][j])
                            checker ++;
                    }
                }
                if(checker == 0){
                        NSString *Thing = [NSString stringWithFormat:@"C%iSolved", ChallengeID];
                        int Solve = (int)[[NSUserDefaults standardUserDefaults] integerForKey:Thing];
                        Solve ++;
                        [[NSUserDefaults standardUserDefaults] setInteger:Solve forKey:Thing];
                    UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Challenge Completed" message:@"Yeah! Ok! You have completed Challenge 19, Good Job!." delegate:nil cancelButtonTitle:@"Phone-Five!" otherButtonTitles: nil];
                    
                    [alert show];
                }
                break;
                
            case 20:
                checker = 0;
                for(int i=0; i<6; ++i){
                    for(int j=0; j<6; ++j){
                        if(Grd[i][j] != C20[i][j])
                            checker ++;
                    }
                }
                if(checker == 0){
                        NSString *Thing = [NSString stringWithFormat:@"C%iSolved", ChallengeID];
                        int Solve = (int)[[NSUserDefaults standardUserDefaults] integerForKey:Thing];
                        Solve ++;
                        [[NSUserDefaults standardUserDefaults] setInteger:Solve forKey:Thing];
                    UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Challenge Completed" message:@"Yeah! Ok! You have completed Challenge 20, Good Job!." delegate:nil cancelButtonTitle:@"Phone-Five!" otherButtonTitles: nil];
                    
                    [alert show];
                }
                break;
                
            case 21:
                checker = 0;
                for(int i=0; i<6; ++i){
                    for(int j=0; j<6; ++j){
                        if(Grd[i][j] != C21[i][j])
                            checker ++;
                    }
                }
                if(checker == 0){
                        NSString *Thing = [NSString stringWithFormat:@"C%iSolved", ChallengeID];
                        int Solve = (int)[[NSUserDefaults standardUserDefaults] integerForKey:Thing];
                        Solve ++;
                        [[NSUserDefaults standardUserDefaults] setInteger:Solve forKey:Thing];
                    UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Challenge Completed" message:@"Yeah! Ok! You have completed Challenge 21, Good Job!." delegate:nil cancelButtonTitle:@"Phone-Five!" otherButtonTitles: nil];
                    
                    [alert show];
                }
                break;
                
            case 22:
                checker = 0;
                for(int i=0; i<6; ++i){
                    for(int j=0; j<6; ++j){
                        if(Grd[i][j] != C22[i][j])
                            checker ++;
                    }
                }
                if(checker == 0){
                        NSString *Thing = [NSString stringWithFormat:@"C%iSolved", ChallengeID];
                        int Solve = (int)[[NSUserDefaults standardUserDefaults] integerForKey:Thing];
                        Solve ++;
                        [[NSUserDefaults standardUserDefaults] setInteger:Solve forKey:Thing];
                    UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Challenge Completed" message:@"Yeah! Ok! You have completed Challenge 22, Good Job!." delegate:nil cancelButtonTitle:@"Phone-Five!" otherButtonTitles: nil];
                    
                    [alert show];
                }
                break;
                
                
            case 23:
                checker = 0;
                for(int i=0; i<6; ++i){
                    for(int j=0; j<6; ++j){
                        if(Grd[i][j] != C23[i][j])
                            checker ++;
                    }
                }
                if(checker == 0){
                        NSString *Thing = [NSString stringWithFormat:@"C%iSolved", ChallengeID];
                        int Solve = (int)[[NSUserDefaults standardUserDefaults] integerForKey:Thing];
                        Solve ++;
                        [[NSUserDefaults standardUserDefaults] setInteger:Solve forKey:Thing];
                    UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Challenge Completed" message:@"Yeah! Ok! You have completed Challenge 23, Good Job!." delegate:nil cancelButtonTitle:@"Phone-Five!" otherButtonTitles: nil];
                    
                    [alert show];
                }
                break;
                
            case 24:
                checker = 0;
                for(int i=0; i<6; ++i){
                    for(int j=0; j<6; ++j){
                        if(Grd[i][j] != C24[i][j])
                            checker ++;
                    }
                }
                if(checker == 0){
                        NSString *Thing = [NSString stringWithFormat:@"C%iSolved", ChallengeID];
                        int Solve = (int)[[NSUserDefaults standardUserDefaults] integerForKey:Thing];
                        Solve ++;
                        [[NSUserDefaults standardUserDefaults] setInteger:Solve forKey:Thing];
                    UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Challenge Completed" message:@"Yeah! Ok! You have completed Challenge 24, Good Job!." delegate:nil cancelButtonTitle:@"Phone-Five!" otherButtonTitles: nil];
                    
                    [alert show];
                }
                break;
                
            case 25:
                checker = 0;
                for(int i=0; i<6; ++i){
                    for(int j=0; j<6; ++j){
                        if(Grd[i][j] != C25[i][j])
                            checker ++;
                    }
                }
                if(checker == 0){
                        NSString *Thing = [NSString stringWithFormat:@"C%iSolved", ChallengeID];
                        int Solve = (int)[[NSUserDefaults standardUserDefaults] integerForKey:Thing];
                        Solve ++;
                        [[NSUserDefaults standardUserDefaults] setInteger:Solve forKey:Thing];
                    UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Challenge Completed" message:@"Yeah! Ok! You have completed Challenge 25, Good Job!." delegate:nil cancelButtonTitle:@"Phone-Five!" otherButtonTitles: nil];
                    
                    [alert show];
                }
                break;
                
            case 26:
                checker = 0;
                for(int i=0; i<6; ++i){
                    for(int j=0; j<6; ++j){
                        if(Grd[i][j] != C26[i][j])
                            checker ++;
                    }
                }
                if(checker == 0){
                        NSString *Thing = [NSString stringWithFormat:@"C%iSolved", ChallengeID];
                        int Solve = (int)[[NSUserDefaults standardUserDefaults] integerForKey:Thing];
                        Solve ++;
                        [[NSUserDefaults standardUserDefaults] setInteger:Solve forKey:Thing];
                    UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Challenge Completed" message:@"Yeah! Ok! You have completed Challenge 26, Good Job!." delegate:nil cancelButtonTitle:@"Phone-Five!" otherButtonTitles: nil];
                    
                    [alert show];
                }
                break;
                
            case 27:
                checker = 0;
                for(int i=0; i<6; ++i){
                    for(int j=0; j<6; ++j){
                        if(Grd[i][j] != C27[i][j])
                            checker ++;
                    }
                }
                if(checker == 0){
                        NSString *Thing = [NSString stringWithFormat:@"C%iSolved", ChallengeID];
                        int Solve = (int)[[NSUserDefaults standardUserDefaults] integerForKey:Thing];
                        Solve ++;
                        [[NSUserDefaults standardUserDefaults] setInteger:Solve forKey:Thing];
                    UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Challenge Completed" message:@"Yeah! Ok! You have completed Challenge 27, Good Job!." delegate:nil cancelButtonTitle:@"Phone-Five!" otherButtonTitles: nil];
                    
                    [alert show];
                }
                break;
                
                
            default:
                break;
        }
    }
    
    _Score.text = [NSString stringWithFormat:@"%i", ScoreNo];
}

- (IBAction)Center:(id)sender {
    
    switch ([sender tag]) {
        case 11:
            if(Grd[0][1] == false){
                Grd[0][1] = true;
                _G01.hidden = NO;
            }
            else{
                Grd[0][1] = false;
                _G01.hidden = YES;
            }
            if(Grd[1][0] == false){
                Grd[1][0] = true;
                _G10.hidden = NO;
            }
            else{
                Grd[1][0] = false;
                _G10.hidden = YES;
            }
            
            if(Grd[1][1] == false){
                Grd[1][1] = true;
                _G11.hidden = NO;
            }
            else{
                Grd[1][1] = false;
                _G11.hidden = YES;
            }
            
            if(Grd[1][2] == false){
                Grd[1][2] = true;
                _G12.hidden = NO;
            }
            else{
                Grd[1][2] = false;
                _G12.hidden = YES;
            }
            if(Grd[2][1] == false){
                Grd[2][1] = true;
                _G21.hidden = NO;
            }
            else{
                Grd[2][1] = false;
                _G21.hidden = YES;
            }
            break;
            
        case 12:
            if(Grd[0][2] == false){
                Grd[0][2] = true;
                _G02.hidden = NO;
            }
            else{
                Grd[0][2] = false;
                _G02.hidden = YES;
            }
            
            if(Grd[1][1] == false){
                Grd[1][1] = true;
                _G11.hidden = NO;
            }
            else{
                Grd[1][1] = false;
                _G11.hidden = YES;
            }
            
            if(Grd[1][2] == false){
                Grd[1][2] = true;
                _G12.hidden = NO;
            }
            else{
                Grd[1][2] = false;
                _G12.hidden = YES;
            }
            
            if(Grd[1][3] == false){
                Grd[1][3] = true;
                _G13.hidden = NO;
            }
            else{
                Grd[1][3] = false;
                _G13.hidden = YES;
            }
            if(Grd[2][2] == false){
                Grd[2][2] = true;
                _G22.hidden = NO;
            }
            else{
                Grd[2][2] = false;
                _G22.hidden = YES;
            }
            break;
            
        case 13:
            if(Grd[0][3]){
                Grd[0][3] = false;
                _G03.hidden = YES;
            }
            else{
                Grd[0][3] = true;
                _G03.hidden = NO;
            }
            if(Grd[1][2]){
                Grd[1][2] = false;
                _G12.hidden = YES;
            }
            else{
                Grd[1][2] = true;
                _G12.hidden = NO;
            }
            
            if(Grd[1][3]){
                Grd[1][3] = false;
                _G13.hidden = YES;
            }
            else{
                Grd[1][3] = true;
                _G13.hidden = NO;
            }
            
            if(Grd[1][4]){
                Grd[1][4] = false;
                _G14.hidden = YES;
            }
            else{
                Grd[1][4] = true;
                _G14.hidden = NO;
            }
            if(Grd[2][3]){
                Grd[2][3] = false;
                _G23.hidden = YES;
            }
            else{
                Grd[2][3] = true;
                _G23.hidden = NO;
            }
            break;

        case 14:
            if(Grd[0][4]){
                Grd[0][4] = false;
                _G04.hidden = YES;
            }
            else{
                Grd[0][4] = true;
                _G04.hidden = NO;
            }
            if(Grd[1][3]){
                Grd[1][3] = false;
                _G13.hidden = YES;
            }
            else{
                Grd[1][3] = true;
                _G13.hidden = NO;
            }
            
            if(Grd[1][4]){
                Grd[1][4] = false;
                _G14.hidden = YES;
            }
            else{
                Grd[1][4] = true;
                _G14.hidden = NO;
            }
            
            if(Grd[1][5]){
                Grd[1][5] = false;
                _G15.hidden = YES;
            }
            else{
                Grd[1][5] = true;
                _G15.hidden = NO;
            }
            if(Grd[2][4]){
                Grd[2][4] = false;
                _G24.hidden = YES;
            }
            else{
                Grd[2][4] = true;
                _G24.hidden = NO;
            }
            break;

        case 21:
            if(Grd[1][1] == false){
                Grd[1][1] = true;
                _G11.hidden = NO;
            }
            else{
                Grd[1][1] = false;
                _G11.hidden = YES;
            }
            if(Grd[2][0] == false){
                Grd[2][0] = true;
                _G20.hidden = NO;
            }
            else{
                Grd[2][0] = false;
                _G20.hidden = YES;
            }
            
            if(Grd[2][1] == false){
                Grd[2][1] = true;
                _G21.hidden = NO;
            }
            else{
                Grd[2][1] = false;
                _G21.hidden = YES;
            }
            
            if(Grd[2][2] == false){
                Grd[2][2] = true;
                _G22.hidden = NO;
            }
            else{
                Grd[2][2] = false;
                _G22.hidden = YES;
            }
            if(Grd[3][1] == false){
                Grd[3][1] = true;
                _G31.hidden = NO;
            }
            else{
                Grd[3][1] = false;
                _G31.hidden = YES;
            }
            break;
            
        case 22:
            if(Grd[1][2] == false){
                Grd[1][2] = true;
                _G12.hidden = NO;
            }
            else{
                Grd[1][2] = false;
                _G12.hidden = YES;
            }
            if(Grd[2][1] == false){
                Grd[2][1] = true;
                _G21.hidden = NO;
            }
            else{
                Grd[2][1] = false;
                _G21.hidden = YES;
            }
            
            if(Grd[2][2] == false){
                Grd[2][2] = true;
                _G22.hidden = NO;
            }
            else{
                Grd[2][2] = false;
                _G22.hidden = YES;
            }
            
            if(Grd[2][3] == false){
                Grd[2][3] = true;
                _G23.hidden = NO;
            }
            else{
                Grd[2][3] = false;
                _G23.hidden = YES;
            }
            if(Grd[3][2] == false){
                Grd[3][2] = true;
                _G32.hidden = NO;
            }
            else{
                Grd[3][2] = false;
                _G32.hidden = YES;
            }
            break;
            
        case 23:
            if(Grd[1][3] == false){
                Grd[1][3] = true;
                _G13.hidden = NO;
            }
            else{
                Grd[1][3] = false;
                _G13.hidden = YES;
            }
            if(Grd[2][2] == false){
                Grd[2][2] = true;
                _G22.hidden = NO;
            }
            else{
                Grd[2][2] = false;
                _G22.hidden = YES;
            }
            
            if(Grd[2][3] == false){
                Grd[2][3] = true;
                _G23.hidden = NO;
            }
            else{
                Grd[2][3] = false;
                _G23.hidden = YES;
            }
            if(Grd[2][4]){
                Grd[2][4] = false;
                _G24.hidden = YES;
            }
            else{
                Grd[2][4] = true;
                _G24.hidden = NO;
            }
            if(Grd[3][3] == false){
                Grd[3][3] = true;
                _G33.hidden = NO;
            }
            else{
                Grd[3][3] = false;
                _G33.hidden = YES;
            }
            break;

        case 24:
            if(Grd[1][4]){
                Grd[1][4] = false;
                _G14.hidden = YES;
            }
            else{
                Grd[1][4] = true;
                _G14.hidden = NO;
            }
            if(Grd[2][3]){
                Grd[2][3] = false;
                _G23.hidden = YES;
            }
            else{
                Grd[2][3] = true;
                _G23.hidden = NO;
            }
            
            if(Grd[2][4]){
                Grd[2][4] = false;
                _G24.hidden = YES;
            }
            else{
                Grd[2][4] = true;
                _G24.hidden = NO;
            }
            
            if(Grd[2][5]){
                Grd[2][5] = false;
                _G25.hidden = YES;
            }
            else{
                Grd[2][5] = true;
                _G25.hidden = NO;
            }
            if(Grd[3][4]){
                Grd[3][4] = false;
                _G34.hidden = YES;
            }
            else{
                Grd[3][4] = true;
                _G34.hidden = NO;
            }
            break;
            
        case 31:
            if(Grd[2][1]){
                Grd[2][1] = false;
                _G21.hidden = YES;
            }
            else{
                Grd[2][1] = true;
                _G21.hidden = NO;
            }
            if(Grd[3][0]){
                Grd[3][0] = false;
                _G30.hidden = YES;
            }
            else{
                Grd[3][0] = true;
                _G30.hidden = NO;
            }
            
            if(Grd[3][1]){
                Grd[3][1] = false;
                _G31.hidden = YES;
            }
            else{
                Grd[3][1] = true;
                _G31.hidden = NO;
            }
            
            if(Grd[3][2]){
                Grd[3][2] = false;
                _G32.hidden = YES;
            }
            else{
                Grd[3][2] = true;
                _G32.hidden = NO;
            }
            if(Grd[4][1]){
                Grd[4][1] = false;
                _G41.hidden = YES;
            }
            else{
                Grd[4][1] = true;
                _G41.hidden = NO;
            }
            break;
            
        case 32:
            if(Grd[2][2]){
                Grd[2][2] = false;
                _G22.hidden = YES;
            }
            else{
                Grd[2][2] = true;
                _G22.hidden = NO;
            }
            if(Grd[3][1]){
                Grd[3][1] = false;
                _G31.hidden = YES;
            }
            else{
                Grd[3][1] = true;
                _G31.hidden = NO;
            }
            
            if(Grd[3][2]){
                Grd[3][2] = false;
                _G32.hidden = YES;
            }
            else{
                Grd[3][2] = true;
                _G32.hidden = NO;
            }
            
            if(Grd[3][3]){
                Grd[3][3] = false;
                _G33.hidden = YES;
            }
            else{
                Grd[3][3] = true;
                _G33.hidden = NO;
            }
            if(Grd[4][2]){
                Grd[4][2] = false;
                _G42.hidden = YES;
            }
            else{
                Grd[4][2] = true;
                _G42.hidden = NO;
            }
            break;
            
        case 33:
            if(Grd[2][3]){
                Grd[2][3] = false;
                _G23.hidden = YES;
            }
            else{
                Grd[2][3] = true;
                _G23.hidden = NO;
            }
            if(Grd[3][2]){
                Grd[3][2] = false;
                _G32.hidden = YES;
            }
            else{
                Grd[3][2] = true;
                _G32.hidden = NO;
            }
            
            if(Grd[3][3]){
                Grd[3][3] = false;
                _G33.hidden = YES;
            }
            else{
                Grd[3][3] = true;
                _G33.hidden = NO;
            }
            
            if(Grd[3][4]){
                Grd[3][4] = false;
                _G34.hidden = YES;
            }
            else{
                Grd[3][4] = true;
                _G34.hidden = NO;
            }
            if(Grd[4][3]){
                Grd[4][3] = false;
                _G43.hidden = YES;
            }
            else{
                Grd[4][3] = true;
                _G43.hidden = NO;
            }
            break;
            
        case 34:
            if(Grd[2][4]){
                Grd[2][4] = false;
                _G24.hidden = YES;
            }
            else{
                Grd[2][4] = true;
                _G24.hidden = NO;
            }
            if(Grd[3][3]){
                Grd[3][3] = false;
                _G33.hidden = YES;
            }
            else{
                Grd[3][3] = true;
                _G33.hidden = NO;
            }
            
            if(Grd[3][4]){
                Grd[3][4] = false;
                _G34.hidden = YES;
            }
            else{
                Grd[3][4] = true;
                _G34.hidden = NO;
            }
            
            if(Grd[3][5]){
                Grd[3][5] = false;
                _G35.hidden = YES;
            }
            else{
                Grd[3][5] = true;
                _G35.hidden = NO;
            }
            if(Grd[4][4]){
                Grd[4][4] = false;
                _G44.hidden = YES;
            }
            else{
                Grd[4][4] = true;
                _G44.hidden = NO;
            }
            break;
            
        case 41:
            if(Grd[3][1]){
                Grd[3][1] = false;
                _G31.hidden = YES;
            }
            else{
                Grd[3][1] = true;
                _G31.hidden = NO;
            }
            if(Grd[4][0]){
                Grd[4][0] = false;
                _G40.hidden = YES;
            }
            else{
                Grd[4][0] = true;
                _G40.hidden = NO;
            }
            
            if(Grd[4][1]){
                Grd[4][1] = false;
                _G41.hidden = YES;
            }
            else{
                Grd[4][1] = true;
                _G41.hidden = NO;
            }
            
            if(Grd[4][2]){
                Grd[4][2] = false;
                _G42.hidden = YES;
            }
            else{
                Grd[4][2] = true;
                _G42.hidden = NO;
            }
            if(Grd[5][1]){
                Grd[5][1] = false;
                _G51.hidden = YES;
            }
            else{
                Grd[5][1] = true;
                _G51.hidden = NO;
            }
            break;
            
        case 42:
            if(Grd[3][2]){
                Grd[3][2] = false;
                _G32.hidden = YES;
            }
            else{
                Grd[3][2] = true;
                _G32.hidden = NO;
            }
            if(Grd[4][1]){
                Grd[4][1] = false;
                _G41.hidden = YES;
            }
            else{
                Grd[4][1] = true;
                _G41.hidden = NO;
            }
            
            if(Grd[4][2]){
                Grd[4][2] = false;
                _G42.hidden = YES;
            }
            else{
                Grd[4][2] = true;
                _G42.hidden = NO;
            }
            
            if(Grd[4][3]){
                Grd[4][3] = false;
                _G43.hidden = YES;
            }
            else{
                Grd[4][3] = true;
                _G43.hidden = NO;
            }
            if(Grd[5][2]){
                Grd[5][2] = false;
                _G52.hidden = YES;
            }
            else{
                Grd[5][2] = true;
                _G52.hidden = NO;
            }
            break;
            
        case 43:
            if(Grd[3][3]){
                Grd[3][3] = false;
                _G33.hidden = YES;
            }
            else{
                Grd[3][3] = true;
                _G33.hidden = NO;
            }
            if(Grd[4][2]){
                Grd[4][2] = false;
                _G42.hidden = YES;
            }
            else{
                Grd[4][2] = true;
                _G42.hidden = NO;
            }
            
            if(Grd[4][3]){
                Grd[4][3] = false;
                _G43.hidden = YES;
            }
            else{
                Grd[4][3] = true;
                _G43.hidden = NO;
            }
            
            if(Grd[4][4]){
                Grd[4][4] = false;
                _G44.hidden = YES;
            }
            else{
                Grd[4][4] = true;
                _G44.hidden = NO;
            }
            if(Grd[5][3]){
                Grd[5][3] = false;
                _G53.hidden = YES;
            }
            else{
                Grd[5][3] = true;
                _G53.hidden = NO;
            }
            break;
            
        case 44:
            if(Grd[3][4]){
                Grd[3][4] = false;
                _G34.hidden = YES;
            }
            else{
                Grd[3][4] = true;
                _G34.hidden = NO;
            }
            if(Grd[4][3]){
                Grd[4][3] = false;
                _G43.hidden = YES;
            }
            else{
                Grd[4][3] = true;
                _G43.hidden = NO;
            }
            
            if(Grd[4][4]){
                Grd[4][4] = false;
                _G44.hidden = YES;
            }
            else{
                Grd[4][4] = true;
                _G44.hidden = NO;
            }
            
            if(Grd[4][5]){
                Grd[4][5] = false;
                _G45.hidden = YES;
            }
            else{
                Grd[4][5] = true;
                _G45.hidden = NO;
            }
            if(Grd[5][4]){
                Grd[5][4] = false;
                _G54.hidden = YES;
            }
            else{
                Grd[5][4] = true;
                _G54.hidden = NO;
            }
            
        default:
            break;
    }
    
    ScoreNo = 0;
    
    for(int i=0; i<6; ++i){
        for(int j=0; j<6; ++j){
            if(Grd[i][j])
                ScoreNo++;
        }
    }
    
    if(ChallengeID == 0){
        if(ScoreNo == 36){
            UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"You Won!"
                                                            message:@"Yeah, you won, big deal!"
                                                           delegate:self
                                                  cancelButtonTitle:@"Back"
                                                  otherButtonTitles:@"Again!",nil];
            [alert show];
        }
    }
    else{
        switch (ChallengeID) {
            case 17:
                checker = 0;
                for(int i=0; i<6; ++i){
                    for(int j=0; j<6; ++j){
                        if(Grd[i][j] != C17[i][j])
                            checker ++;
                    }
                }
                if(checker == 0){
                        NSString *Thing = [NSString stringWithFormat:@"C%iSolved", ChallengeID];
                        int Solve = (int)[[NSUserDefaults standardUserDefaults] integerForKey:Thing];
                        Solve ++;
                        [[NSUserDefaults standardUserDefaults] setInteger:Solve forKey:Thing];
                    UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Challenge Completed" message:@"Yeah! Ok! You have completed Challenge 17, Good Job!." delegate:nil cancelButtonTitle:@"Phone-Five!" otherButtonTitles: nil];
                    
                    [alert show];
                }
                break;

            case 18:
                checker = 0;
                for(int i=0; i<6; ++i){
                    for(int j=0; j<6; ++j){
                        if(Grd[i][j] != C18[i][j])
                            checker ++;
                    }
                }
                if(checker == 0){
                        NSString *Thing = [NSString stringWithFormat:@"C%iSolved", ChallengeID];
                        int Solve = (int)[[NSUserDefaults standardUserDefaults] integerForKey:Thing];
                        Solve ++;
                        [[NSUserDefaults standardUserDefaults] setInteger:Solve forKey:Thing];
                    UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Challenge Completed" message:@"Yeah! Ok! You have completed Challenge 18, Good Job!." delegate:nil cancelButtonTitle:@"Phone-Five!" otherButtonTitles: nil];
                    
                    [alert show];
                }
                break;
                
                
            case 19:
                checker = 0;
                for(int i=0; i<6; ++i){
                    for(int j=0; j<6; ++j){
                        if(Grd[i][j] != C19[i][j])
                            checker ++;
                    }
                }
                if(checker == 0){
                        NSString *Thing = [NSString stringWithFormat:@"C%iSolved", ChallengeID];
                        int Solve = (int)[[NSUserDefaults standardUserDefaults] integerForKey:Thing];
                        Solve ++;
                        [[NSUserDefaults standardUserDefaults] setInteger:Solve forKey:Thing];
                    UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Challenge Completed" message:@"Yeah! Ok! You have completed Challenge 19, Good Job!." delegate:nil cancelButtonTitle:@"Phone-Five!" otherButtonTitles: nil];
                    
                    [alert show];
                }
                break;
                
            case 20:
                checker = 0;
                for(int i=0; i<6; ++i){
                    for(int j=0; j<6; ++j){
                        if(Grd[i][j] != C20[i][j])
                            checker ++;
                    }
                }
                if(checker == 0){
                        NSString *Thing = [NSString stringWithFormat:@"C%iSolved", ChallengeID];
                        int Solve = (int)[[NSUserDefaults standardUserDefaults] integerForKey:Thing];
                        Solve ++;
                        [[NSUserDefaults standardUserDefaults] setInteger:Solve forKey:Thing];
                    UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Challenge Completed" message:@"Yeah! Ok! You have completed Challenge 20, Good Job!." delegate:nil cancelButtonTitle:@"Phone-Five!" otherButtonTitles: nil];
                    
                    [alert show];
                }
                break;
                
            case 21:
                checker = 0;
                for(int i=0; i<6; ++i){
                    for(int j=0; j<6; ++j){
                        if(Grd[i][j] != C21[i][j])
                            checker ++;
                    }
                }
                if(checker == 0){
                        NSString *Thing = [NSString stringWithFormat:@"C%iSolved", ChallengeID];
                        int Solve = (int)[[NSUserDefaults standardUserDefaults] integerForKey:Thing];
                        Solve ++;
                        [[NSUserDefaults standardUserDefaults] setInteger:Solve forKey:Thing];
                    UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Challenge Completed" message:@"Yeah! Ok! You have completed Challenge 21, Good Job!." delegate:nil cancelButtonTitle:@"Phone-Five!" otherButtonTitles: nil];
                    
                    [alert show];
                }
                break;
                
            case 22:
                checker = 0;
                for(int i=0; i<6; ++i){
                    for(int j=0; j<6; ++j){
                        if(Grd[i][j] != C22[i][j])
                            checker ++;
                    }
                }
                if(checker == 0){
                        NSString *Thing = [NSString stringWithFormat:@"C%iSolved", ChallengeID];
                        int Solve = (int)[[NSUserDefaults standardUserDefaults] integerForKey:Thing];
                        Solve ++;
                        [[NSUserDefaults standardUserDefaults] setInteger:Solve forKey:Thing];
                    UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Challenge Completed" message:@"Yeah! Ok! You have completed Challenge 22, Good Job!." delegate:nil cancelButtonTitle:@"Phone-Five!" otherButtonTitles: nil];
                    
                    [alert show];
                }
                break;
                
                
            case 23:
                checker = 0;
                for(int i=0; i<6; ++i){
                    for(int j=0; j<6; ++j){
                        if(Grd[i][j] != C23[i][j])
                            checker ++;
                    }
                }
                if(checker == 0){
                        NSString *Thing = [NSString stringWithFormat:@"C%iSolved", ChallengeID];
                        int Solve = (int)[[NSUserDefaults standardUserDefaults] integerForKey:Thing];
                        Solve ++;
                        [[NSUserDefaults standardUserDefaults] setInteger:Solve forKey:Thing];
                    UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Challenge Completed" message:@"Yeah! Ok! You have completed Challenge 23, Good Job!." delegate:nil cancelButtonTitle:@"Phone-Five!" otherButtonTitles: nil];
                    
                    [alert show];
                }
                break;

            case 24:
                checker = 0;
                for(int i=0; i<6; ++i){
                    for(int j=0; j<6; ++j){
                        if(Grd[i][j] != C24[i][j])
                            checker ++;
                    }
                }
                if(checker == 0){
                        NSString *Thing = [NSString stringWithFormat:@"C%iSolved", ChallengeID];
                        int Solve = (int)[[NSUserDefaults standardUserDefaults] integerForKey:Thing];
                        Solve ++;
                        [[NSUserDefaults standardUserDefaults] setInteger:Solve forKey:Thing];
                    UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Challenge Completed" message:@"Yeah! Ok! You have completed Challenge 24, Good Job!." delegate:nil cancelButtonTitle:@"Phone-Five!" otherButtonTitles: nil];
                    
                    [alert show];
                }
                break;
                
            case 25:
                checker = 0;
                for(int i=0; i<6; ++i){
                    for(int j=0; j<6; ++j){
                        if(Grd[i][j] != C25[i][j])
                            checker ++;
                    }
                }
                if(checker == 0){
                        NSString *Thing = [NSString stringWithFormat:@"C%iSolved", ChallengeID];
                        int Solve = (int)[[NSUserDefaults standardUserDefaults] integerForKey:Thing];
                        Solve ++;
                        [[NSUserDefaults standardUserDefaults] setInteger:Solve forKey:Thing];
                    UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Challenge Completed" message:@"Yeah! Ok! You have completed Challenge 25, Good Job!." delegate:nil cancelButtonTitle:@"Phone-Five!" otherButtonTitles: nil];
                    
                    [alert show];
                }
                break;
                
            case 26:
                checker = 0;
                for(int i=0; i<6; ++i){
                    for(int j=0; j<6; ++j){
                        if(Grd[i][j] != C26[i][j])
                            checker ++;
                    }
                }
                if(checker == 0){
                        NSString *Thing = [NSString stringWithFormat:@"C%iSolved", ChallengeID];
                        int Solve = (int)[[NSUserDefaults standardUserDefaults] integerForKey:Thing];
                        Solve ++;
                        [[NSUserDefaults standardUserDefaults] setInteger:Solve forKey:Thing];
                    UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Challenge Completed" message:@"Yeah! Ok! You have completed Challenge 26, Good Job!." delegate:nil cancelButtonTitle:@"Phone-Five!" otherButtonTitles: nil];
                    
                    [alert show];
                }
                break;
                
            case 27:
                checker = 0;
                for(int i=0; i<6; ++i){
                    for(int j=0; j<6; ++j){
                        if(Grd[i][j] != C27[i][j])
                            checker ++;
                    }
                }
                if(checker == 0){
                        NSString *Thing = [NSString stringWithFormat:@"C%iSolved", ChallengeID];
                        int Solve = (int)[[NSUserDefaults standardUserDefaults] integerForKey:Thing];
                        Solve ++;
                        [[NSUserDefaults standardUserDefaults] setInteger:Solve forKey:Thing];
                    UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Challenge Completed" message:@"Yeah! Ok! You have completed Challenge 27, Good Job!." delegate:nil cancelButtonTitle:@"Phone-Five!" otherButtonTitles: nil];
                    
                    [alert show];
                }
                break;
                
                
            default:
                break;
        }
    }
    _Score.text = [NSString stringWithFormat:@"%i", ScoreNo];
}

- (void)alertView:(UIAlertView *)alertView clickedButtonAtIndex:(NSInteger)buttonIndex
{
    NSString *title = [alertView buttonTitleAtIndex:buttonIndex];
    if([title isEqualToString:@"Again!"]){
        
        ttp = 0;
        [[NSUserDefaults standardUserDefaults] setInteger:ttp forKey:@"6Times"];
        
        _G00.hidden = YES;
        _G01.hidden = YES;
        _G02.hidden = YES;
        _G03.hidden = YES;
        _G04.hidden = YES;
        _G05.hidden = YES;
        
        _G10.hidden = YES;
        _G11.hidden = YES;
        _G12.hidden = YES;
        _G13.hidden = YES;
        _G14.hidden = YES;
        _G15.hidden = YES;
        
        _G20.hidden = YES;
        _G21.hidden = YES;
        _G22.hidden = YES;
        _G23.hidden = YES;
        _G24.hidden = YES;
        _G25.hidden = YES;
        
        _G30.hidden = YES;
        _G31.hidden = YES;
        _G32.hidden = YES;
        _G33.hidden = YES;
        _G34.hidden = YES;
        _G35.hidden = YES;
        
        _G40.hidden = YES;
        _G41.hidden = YES;
        _G42.hidden = YES;
        _G43.hidden = YES;
        _G44.hidden = YES;
        _G45.hidden = YES;
        
        _G50.hidden = YES;
        _G51.hidden = YES;
        _G52.hidden = YES;
        _G53.hidden = YES;
        _G54.hidden = YES;
        _G55.hidden = YES;
        
        for(int i=0; i<6; ++i){
            for(int j=0; j<6; ++j)
                Grd[i][j] = false;
        }
        
        ttp = (int)[[NSUserDefaults standardUserDefaults] integerForKey:@"6Times"];
        
        if(ChallengeID == 0){
            
            _ImageView.hidden = YES;
            
            _InfoLabel.text = [NSString stringWithFormat:@"Fill the Grid with Green Squares."];
            
            switch (ttp % 16) {
                case 0:
                    Grd[0][0] = true;
                    Grd[1][1] = true;
                    Grd[1][4] = true;
                    Grd[4][1] = true;
                    Grd[4][4] = true;
                    Grd[5][5] = true;
                    _G00.hidden = NO;
                    _G11.hidden = NO;
                    _G14.hidden = NO;
                    _G41.hidden = NO;
                    _G44.hidden = NO;
                    _G55.hidden = NO;
                    break;
                    
                case 2:
                    Grd[0][0] = true;
                    Grd[0][5] = true;
                    Grd[2][2] = true;
                    Grd[2][3] = true;
                    Grd[3][2] = true;
                    Grd[3][3] = true;
                    Grd[5][0] = true;
                    Grd[5][5] = true;
                    _G00.hidden = NO;
                    _G05.hidden = NO;
                    _G22.hidden = NO;
                    _G23.hidden = NO;
                    _G32.hidden = NO;
                    _G33.hidden = NO;
                    _G50.hidden = NO;
                    _G55.hidden = NO;
                    break;
                    
                case 3:
                    Grd[0][0] = true;
                    Grd[0][5] = true;
                    Grd[1][1] = true;
                    Grd[1][4] = true;
                    Grd[4][1] = true;
                    Grd[4][4] = true;
                    Grd[5][0] = true;
                    Grd[5][5] = true;
                    _G00.hidden = NO;
                    _G05.hidden = NO;
                    _G11.hidden = NO;
                    _G14.hidden = NO;
                    _G41.hidden = NO;
                    _G44.hidden = NO;
                    _G50.hidden = NO;
                    _G55.hidden = NO;
                    break;
                    
                case 4:
                    Grd[2][0] = true;
                    Grd[3][0] = true;
                    Grd[0][2] = true;
                    Grd[0][3] = true;
                    Grd[2][5] = true;
                    Grd[3][5] = true;
                    Grd[5][2] = true;
                    Grd[5][3] = true;
                    _G20.hidden = NO;
                    _G30.hidden = NO;
                    _G02.hidden = NO;
                    _G03.hidden = NO;
                    _G25.hidden = NO;
                    _G35.hidden = NO;
                    _G52.hidden = NO;
                    _G53.hidden = NO;
                    break;
                    
                case 5:
                    Grd[0][0] = true;
                    Grd[1][1] = true;
                    Grd[2][2] = true;
                    Grd[3][3] = true;
                    Grd[4][4] = true;
                    Grd[5][5] = true;
                    Grd[2][3] = true;
                    Grd[3][2] = true;
                    _G00.hidden = NO;
                    _G11.hidden = NO;
                    _G22.hidden = NO;
                    _G33.hidden = NO;
                    _G44.hidden = NO;
                    _G55.hidden = NO;
                    _G23.hidden = NO;
                    _G32.hidden = NO;
                    break;
                    
                case 6:
                    Grd[0][5] = true;
                    Grd[1][4] = true;
                    Grd[2][3] = true;
                    Grd[3][2] = true;
                    Grd[4][1] = true;
                    Grd[5][0] = true;
                    Grd[1][1] = true;
                    Grd[4][4] = true;
                    _G05.hidden = NO;
                    _G14.hidden = NO;
                    _G23.hidden = NO;
                    _G32.hidden = NO;
                    _G41.hidden = NO;
                    _G50.hidden = NO;
                    _G11.hidden = NO;
                    _G44.hidden = NO;
                    break;
                    
                case 7:
                    Grd[1][1] = true;
                    Grd[1][4] = true;
                    Grd[2][2] = true;
                    Grd[2][3] = true;
                    Grd[3][2] = true;
                    Grd[3][3] = true;
                    Grd[4][1] = true;
                    Grd[4][4] = true;
                    _G11.hidden = NO;
                    _G14.hidden = NO;
                    _G22.hidden = NO;
                    _G23.hidden = NO;
                    _G32.hidden = NO;
                    _G33.hidden = NO;
                    _G41.hidden = NO;
                    _G44.hidden = NO;
                    break;
                    
                case 8:
                    Grd[1][0] = true;
                    Grd[0][1] = true;
                    Grd[0][4] = true;
                    Grd[1][5] = true;
                    Grd[4][5] = true;
                    Grd[5][4] = true;
                    Grd[4][0] = true;
                    Grd[5][1] = true;
                    _G10.hidden = NO;
                    _G01.hidden = NO;
                    _G04.hidden = NO;
                    _G15.hidden = NO;
                    _G45.hidden = NO;
                    _G54.hidden = NO;
                    _G40.hidden = NO;
                    _G51.hidden = NO;
                    break;
                    
                case 9:
                    Grd[1][2] = true;
                    Grd[1][3] = true;
                    Grd[2][1] = true;
                    Grd[3][1] = true;
                    Grd[2][4] = true;
                    Grd[3][4] = true;
                    Grd[4][2] = true;
                    Grd[4][3] = true;
                    _G12.hidden = NO;
                    _G13.hidden = NO;
                    _G21.hidden = NO;
                    _G31.hidden = NO;
                    _G24.hidden = NO;
                    _G34.hidden = NO;
                    _G42.hidden = NO;
                    _G43.hidden = NO;
                    break;
                    
                case 10:
                    Grd[1][1] = true;
                    Grd[1][2] = true;
                    Grd[1][4] = true;
                    Grd[2][4] = true;
                    Grd[4][4] = true;
                    Grd[4][3] = true;
                    Grd[4][1] = true;
                    Grd[3][1] = true;
                    _G11.hidden = NO;
                    _G12.hidden = NO;
                    _G14.hidden = NO;
                    _G24.hidden = NO;
                    _G44.hidden = NO;
                    _G43.hidden = NO;
                    _G41.hidden = NO;
                    _G31.hidden = NO;
                    break;
                    
                case 11:
                    Grd[0][3] = true;
                    Grd[0][4] = true;
                    Grd[0][5] = true;
                    Grd[0][2] = true;
                    Grd[5][0] = true;
                    Grd[5][1] = true;
                    Grd[5][2] = true;
                    Grd[5][3] = true;
                    _G02.hidden = NO;
                    _G03.hidden = NO;
                    _G04.hidden = NO;
                    _G05.hidden = NO;
                    _G50.hidden = NO;
                    _G51.hidden = NO;
                    _G52.hidden = NO;
                    _G53.hidden = NO;
                    break;
                    
                case 12:
                    Grd[1][2] = true;
                    Grd[2][2] = true;
                    Grd[2][3] = true;
                    Grd[2][4] = true;
                    Grd[3][1] = true;
                    Grd[3][2] = true;
                    Grd[3][3] = true;
                    Grd[4][3] = true;
                    _G12.hidden = NO;
                    _G22.hidden = NO;
                    _G23.hidden = NO;
                    _G24.hidden = NO;
                    _G31.hidden = NO;
                    _G32.hidden = NO;
                    _G33.hidden = NO;
                    _G43.hidden = NO;
                    break;
                    
                case 13:
                    Grd[0][1] = true;
                    Grd[0][2] = true;
                    Grd[0][3] = true;
                    Grd[0][4] = true;
                    Grd[1][5] = true;
                    Grd[2][5] = true;
                    Grd[3][5] = true;
                    Grd[4][5] = true;
                    Grd[5][4] = true;
                    Grd[5][3] = true;
                    Grd[5][2] = true;
                    Grd[5][1] = true;
                    Grd[1][0] = true;
                    Grd[2][0] = true;
                    Grd[3][0] = true;
                    Grd[4][0] = true;
                    _G01.hidden = NO;
                    _G02.hidden = NO;
                    _G03.hidden = NO;
                    _G04.hidden = NO;
                    _G15.hidden = NO;
                    _G25.hidden = NO;
                    _G35.hidden = NO;
                    _G45.hidden = NO;
                    _G51.hidden = NO;
                    _G52.hidden = NO;
                    _G53.hidden = NO;
                    _G54.hidden = NO;
                    _G10.hidden = NO;
                    _G20.hidden = NO;
                    _G30.hidden = NO;
                    _G40.hidden = NO;
                    break;
                    
                case 14:
                    Grd[2][0] = true;
                    Grd[3][0] = true;
                    Grd[4][0] = true;
                    Grd[2][3] = true;
                    Grd[0][5] = true;
                    Grd[1][5] = true;
                    Grd[2][5] = true;
                    _G20.hidden = NO;
                    _G30.hidden = NO;
                    _G40.hidden = NO;
                    _G23.hidden = NO;
                    _G05.hidden = NO;
                    _G15.hidden = NO;
                    _G25.hidden = NO;
                    break;
                    
                case 15:
                    Grd[1][3] = true;
                    Grd[1][4] = true;
                    Grd[1][5] = true;
                    Grd[2][2] = true;
                    Grd[3][3] = true;
                    Grd[4][0] = true;
                    Grd[4][1] = true;
                    Grd[4][2] = true;
                    _G13.hidden = NO;
                    _G14.hidden = NO;
                    _G15.hidden = NO;
                    _G22.hidden = NO;
                    _G33.hidden = NO;
                    _G40.hidden = NO;
                    _G41.hidden = NO;
                    _G42.hidden = NO;
                    break;
                    
                default:
                    Grd[0][0] = true;
                    Grd[1][1] = true;
                    Grd[1][4] = true;
                    Grd[4][1] = true;
                    Grd[4][4] = true;
                    Grd[5][5] = true;
                    _G00.hidden = NO;
                    _G11.hidden = NO;
                    _G14.hidden = NO;
                    _G41.hidden = NO;
                    _G44.hidden = NO;
                    _G55.hidden = NO;
                    break;
            }
        }
        
        else{
            _ImageView.hidden = NO;
            _InfoLabel.text = [NSString stringWithFormat:@"Fill the Grid with the same pattern as shown above."];
            
            switch (ChallengeID) {
                case 17:
                    _ImageView.image = [UIImage imageNamed:@"Challenge17.png"];
                    break;
                    
                case 18:
                    _ImageView.image = [UIImage imageNamed:@"Challenge18.png"];
                    break;
                    
                case 19:
                    _ImageView.image = [UIImage imageNamed:@"Challenge19.png"];
                    break;
                    
                case 20:
                    _ImageView.image = [UIImage imageNamed:@"Challenge20.png"];
                    break;
                    
                case 21:
                    _ImageView.image = [UIImage imageNamed:@"Challenge21.png"];
                    break;
                    
                case 22:
                    _ImageView.image = [UIImage imageNamed:@"Challenge22.png"];
                    break;
                    
                case 23:
                    _ImageView.image = [UIImage imageNamed:@"Challenge23.png"];
                    break;
                    
                case 24:
                    _ImageView.image = [UIImage imageNamed:@"Challenge24.png"];
                    break;
                    
                case 25:
                    _ImageView.image = [UIImage imageNamed:@"Challenge25.png"];
                    break;
                    
                case 26:
                    _ImageView.image = [UIImage imageNamed:@"Challenge26.png"];
                    break;
                    
                case 27:
                    _ImageView.image = [UIImage imageNamed:@"Challenge27.png"];
                    break;
                    
                default:
                    _ImageView.hidden = YES;
                    
                    _InfoLabel.text = [NSString stringWithFormat:@"Fill the Grid with Green Squares."];
                    
                    switch (ttp % 16) {
                        case 0:
                            Grd[0][0] = true;
                            Grd[1][1] = true;
                            Grd[1][4] = true;
                            Grd[4][1] = true;
                            Grd[4][4] = true;
                            Grd[5][5] = true;
                            _G00.hidden = NO;
                            _G11.hidden = NO;
                            _G14.hidden = NO;
                            _G41.hidden = NO;
                            _G44.hidden = NO;
                            _G55.hidden = NO;
                            break;
                            
                        case 2:
                            Grd[0][0] = true;
                            Grd[0][5] = true;
                            Grd[2][2] = true;
                            Grd[2][3] = true;
                            Grd[3][2] = true;
                            Grd[3][3] = true;
                            Grd[5][0] = true;
                            Grd[5][5] = true;
                            _G00.hidden = NO;
                            _G05.hidden = NO;
                            _G22.hidden = NO;
                            _G23.hidden = NO;
                            _G32.hidden = NO;
                            _G33.hidden = NO;
                            _G50.hidden = NO;
                            _G55.hidden = NO;
                            break;
                            
                        case 3:
                            Grd[0][0] = true;
                            Grd[0][5] = true;
                            Grd[1][1] = true;
                            Grd[1][4] = true;
                            Grd[4][1] = true;
                            Grd[4][4] = true;
                            Grd[5][0] = true;
                            Grd[5][5] = true;
                            _G00.hidden = NO;
                            _G05.hidden = NO;
                            _G11.hidden = NO;
                            _G14.hidden = NO;
                            _G41.hidden = NO;
                            _G44.hidden = NO;
                            _G50.hidden = NO;
                            _G55.hidden = NO;
                            break;
                            
                        case 4:
                            Grd[2][0] = true;
                            Grd[3][0] = true;
                            Grd[0][2] = true;
                            Grd[0][3] = true;
                            Grd[2][5] = true;
                            Grd[3][5] = true;
                            Grd[5][2] = true;
                            Grd[5][3] = true;
                            _G20.hidden = NO;
                            _G30.hidden = NO;
                            _G02.hidden = NO;
                            _G03.hidden = NO;
                            _G25.hidden = NO;
                            _G35.hidden = NO;
                            _G52.hidden = NO;
                            _G53.hidden = NO;
                            break;
                            
                        case 5:
                            Grd[0][0] = true;
                            Grd[1][1] = true;
                            Grd[2][2] = true;
                            Grd[3][3] = true;
                            Grd[4][4] = true;
                            Grd[5][5] = true;
                            Grd[2][3] = true;
                            Grd[3][2] = true;
                            _G00.hidden = NO;
                            _G11.hidden = NO;
                            _G22.hidden = NO;
                            _G33.hidden = NO;
                            _G44.hidden = NO;
                            _G55.hidden = NO;
                            _G23.hidden = NO;
                            _G32.hidden = NO;
                            break;
                            
                        case 6:
                            Grd[0][5] = true;
                            Grd[1][4] = true;
                            Grd[2][3] = true;
                            Grd[3][2] = true;
                            Grd[4][1] = true;
                            Grd[5][0] = true;
                            Grd[1][1] = true;
                            Grd[4][4] = true;
                            _G05.hidden = NO;
                            _G14.hidden = NO;
                            _G23.hidden = NO;
                            _G32.hidden = NO;
                            _G41.hidden = NO;
                            _G50.hidden = NO;
                            _G11.hidden = NO;
                            _G44.hidden = NO;
                            break;
                            
                        case 7:
                            Grd[1][1] = true;
                            Grd[1][4] = true;
                            Grd[2][2] = true;
                            Grd[2][3] = true;
                            Grd[3][2] = true;
                            Grd[3][3] = true;
                            Grd[4][1] = true;
                            Grd[4][4] = true;
                            _G11.hidden = NO;
                            _G14.hidden = NO;
                            _G22.hidden = NO;
                            _G23.hidden = NO;
                            _G32.hidden = NO;
                            _G33.hidden = NO;
                            _G41.hidden = NO;
                            _G44.hidden = NO;
                            break;
                            
                        case 8:
                            Grd[1][0] = true;
                            Grd[0][1] = true;
                            Grd[0][4] = true;
                            Grd[1][5] = true;
                            Grd[4][5] = true;
                            Grd[5][4] = true;
                            Grd[4][0] = true;
                            Grd[5][1] = true;
                            _G10.hidden = NO;
                            _G01.hidden = NO;
                            _G04.hidden = NO;
                            _G15.hidden = NO;
                            _G45.hidden = NO;
                            _G54.hidden = NO;
                            _G40.hidden = NO;
                            _G51.hidden = NO;
                            break;
                            
                        case 9:
                            Grd[1][2] = true;
                            Grd[1][3] = true;
                            Grd[2][1] = true;
                            Grd[3][1] = true;
                            Grd[2][4] = true;
                            Grd[3][4] = true;
                            Grd[4][2] = true;
                            Grd[4][3] = true;
                            _G12.hidden = NO;
                            _G13.hidden = NO;
                            _G21.hidden = NO;
                            _G31.hidden = NO;
                            _G24.hidden = NO;
                            _G34.hidden = NO;
                            _G42.hidden = NO;
                            _G43.hidden = NO;
                            break;
                            
                        case 10:
                            Grd[1][1] = true;
                            Grd[1][2] = true;
                            Grd[1][4] = true;
                            Grd[2][4] = true;
                            Grd[4][4] = true;
                            Grd[4][3] = true;
                            Grd[4][1] = true;
                            Grd[3][1] = true;
                            _G11.hidden = NO;
                            _G12.hidden = NO;
                            _G14.hidden = NO;
                            _G24.hidden = NO;
                            _G44.hidden = NO;
                            _G43.hidden = NO;
                            _G41.hidden = NO;
                            _G31.hidden = NO;
                            break;
                            
                        case 11:
                            Grd[0][3] = true;
                            Grd[0][4] = true;
                            Grd[0][5] = true;
                            Grd[0][2] = true;
                            Grd[5][0] = true;
                            Grd[5][1] = true;
                            Grd[5][2] = true;
                            Grd[5][3] = true;
                            _G02.hidden = NO;
                            _G03.hidden = NO;
                            _G04.hidden = NO;
                            _G05.hidden = NO;
                            _G50.hidden = NO;
                            _G51.hidden = NO;
                            _G52.hidden = NO;
                            _G53.hidden = NO;
                            break;
                            
                        case 12:
                            Grd[1][2] = true;
                            Grd[2][2] = true;
                            Grd[2][3] = true;
                            Grd[2][4] = true;
                            Grd[3][1] = true;
                            Grd[3][2] = true;
                            Grd[3][3] = true;
                            Grd[4][3] = true;
                            _G12.hidden = NO;
                            _G22.hidden = NO;
                            _G23.hidden = NO;
                            _G24.hidden = NO;
                            _G31.hidden = NO;
                            _G32.hidden = NO;
                            _G33.hidden = NO;
                            _G43.hidden = NO;
                            break;
                            
                        case 13:
                            Grd[0][1] = true;
                            Grd[0][2] = true;
                            Grd[0][3] = true;
                            Grd[0][4] = true;
                            Grd[1][5] = true;
                            Grd[2][5] = true;
                            Grd[3][5] = true;
                            Grd[4][5] = true;
                            Grd[5][4] = true;
                            Grd[5][3] = true;
                            Grd[5][2] = true;
                            Grd[5][1] = true;
                            Grd[1][0] = true;
                            Grd[2][0] = true;
                            Grd[3][0] = true;
                            Grd[4][0] = true;
                            _G01.hidden = NO;
                            _G02.hidden = NO;
                            _G03.hidden = NO;
                            _G04.hidden = NO;
                            _G15.hidden = NO;
                            _G25.hidden = NO;
                            _G35.hidden = NO;
                            _G45.hidden = NO;
                            _G51.hidden = NO;
                            _G52.hidden = NO;
                            _G53.hidden = NO;
                            _G54.hidden = NO;
                            _G10.hidden = NO;
                            _G20.hidden = NO;
                            _G30.hidden = NO;
                            _G40.hidden = NO;
                            break;
                            
                        case 14:
                            Grd[2][0] = true;
                            Grd[3][0] = true;
                            Grd[4][0] = true;
                            Grd[2][3] = true;
                            Grd[0][5] = true;
                            Grd[1][5] = true;
                            Grd[2][5] = true;
                            _G20.hidden = NO;
                            _G30.hidden = NO;
                            _G40.hidden = NO;
                            _G23.hidden = NO;
                            _G05.hidden = NO;
                            _G15.hidden = NO;
                            _G25.hidden = NO;
                            break;
                            
                        case 15:
                            Grd[1][3] = true;
                            Grd[1][4] = true;
                            Grd[1][5] = true;
                            Grd[2][2] = true;
                            Grd[3][3] = true;
                            Grd[4][0] = true;
                            Grd[4][1] = true;
                            Grd[4][2] = true;
                            _G13.hidden = NO;
                            _G14.hidden = NO;
                            _G15.hidden = NO;
                            _G22.hidden = NO;
                            _G33.hidden = NO;
                            _G40.hidden = NO;
                            _G41.hidden = NO;
                            _G42.hidden = NO;
                            break;
                            
                        default:
                            Grd[0][0] = true;
                            Grd[1][1] = true;
                            Grd[1][4] = true;
                            Grd[4][1] = true;
                            Grd[4][4] = true;
                            Grd[5][5] = true;
                            _G00.hidden = NO;
                            _G11.hidden = NO;
                            _G14.hidden = NO;
                            _G41.hidden = NO;
                            _G44.hidden = NO;
                            _G55.hidden = NO;
                            break;
                    }
                    break;
            }
        }
        
        ScoreNo = 0;
        
        for(int i=0; i<6; ++i){
            for(int j=0; j<6; ++j){
                if(Grd[i][j])
                    ScoreNo++;
            }
        }
        
        ttp++;
        _Score.text = [NSString stringWithFormat:@"%i", ScoreNo];
        
        [[NSUserDefaults standardUserDefaults] setInteger:ttp forKey:@"6Times"];

    }
}

- (IBAction)Reset:(id)sender {
    _G00.hidden = YES;
    _G01.hidden = YES;
    _G02.hidden = YES;
    _G03.hidden = YES;
    _G04.hidden = YES;
    _G05.hidden = YES;
    
    _G10.hidden = YES;
    _G11.hidden = YES;
    _G12.hidden = YES;
    _G13.hidden = YES;
    _G14.hidden = YES;
    _G15.hidden = YES;
    
    _G20.hidden = YES;
    _G21.hidden = YES;
    _G22.hidden = YES;
    _G23.hidden = YES;
    _G24.hidden = YES;
    _G25.hidden = YES;
    
    _G30.hidden = YES;
    _G31.hidden = YES;
    _G32.hidden = YES;
    _G33.hidden = YES;
    _G34.hidden = YES;
    _G35.hidden = YES;
    
    _G40.hidden = YES;
    _G41.hidden = YES;
    _G42.hidden = YES;
    _G43.hidden = YES;
    _G44.hidden = YES;
    _G45.hidden = YES;
    
    _G50.hidden = YES;
    _G51.hidden = YES;
    _G52.hidden = YES;
    _G53.hidden = YES;
    _G54.hidden = YES;
    _G55.hidden = YES;
    
    for(int i=0; i<6; ++i){
        for(int j=0; j<6; ++j)
            Grd[i][j] = false;
    }
    
    ttp = (int)[[NSUserDefaults standardUserDefaults] integerForKey:@"6Times"];
    
    if(ChallengeID == 0){
        
        _ImageView.hidden = YES;
        
        _InfoLabel.text = [NSString stringWithFormat:@"Fill the Grid with Green Squares."];
        
        switch (ttp % 16) {
            case 0:
                Grd[0][0] = true;
                Grd[1][1] = true;
                Grd[1][4] = true;
                Grd[4][1] = true;
                Grd[4][4] = true;
                Grd[5][5] = true;
                _G00.hidden = NO;
                _G11.hidden = NO;
                _G14.hidden = NO;
                _G41.hidden = NO;
                _G44.hidden = NO;
                _G55.hidden = NO;
                break;
                
            case 2:
                Grd[0][0] = true;
                Grd[0][5] = true;
                Grd[2][2] = true;
                Grd[2][3] = true;
                Grd[3][2] = true;
                Grd[3][3] = true;
                Grd[5][0] = true;
                Grd[5][5] = true;
                _G00.hidden = NO;
                _G05.hidden = NO;
                _G22.hidden = NO;
                _G23.hidden = NO;
                _G32.hidden = NO;
                _G33.hidden = NO;
                _G50.hidden = NO;
                _G55.hidden = NO;
                break;
                
            case 3:
                Grd[0][0] = true;
                Grd[0][5] = true;
                Grd[1][1] = true;
                Grd[1][4] = true;
                Grd[4][1] = true;
                Grd[4][4] = true;
                Grd[5][0] = true;
                Grd[5][5] = true;
                _G00.hidden = NO;
                _G05.hidden = NO;
                _G11.hidden = NO;
                _G14.hidden = NO;
                _G41.hidden = NO;
                _G44.hidden = NO;
                _G50.hidden = NO;
                _G55.hidden = NO;
                break;
                
            case 4:
                Grd[2][0] = true;
                Grd[3][0] = true;
                Grd[0][2] = true;
                Grd[0][3] = true;
                Grd[2][5] = true;
                Grd[3][5] = true;
                Grd[5][2] = true;
                Grd[5][3] = true;
                _G20.hidden = NO;
                _G30.hidden = NO;
                _G02.hidden = NO;
                _G03.hidden = NO;
                _G25.hidden = NO;
                _G35.hidden = NO;
                _G52.hidden = NO;
                _G53.hidden = NO;
                break;
                
            case 5:
                Grd[0][0] = true;
                Grd[1][1] = true;
                Grd[2][2] = true;
                Grd[3][3] = true;
                Grd[4][4] = true;
                Grd[5][5] = true;
                Grd[2][3] = true;
                Grd[3][2] = true;
                _G00.hidden = NO;
                _G11.hidden = NO;
                _G22.hidden = NO;
                _G33.hidden = NO;
                _G44.hidden = NO;
                _G55.hidden = NO;
                _G23.hidden = NO;
                _G32.hidden = NO;
                break;
                
            case 6:
                Grd[0][5] = true;
                Grd[1][4] = true;
                Grd[2][3] = true;
                Grd[3][2] = true;
                Grd[4][1] = true;
                Grd[5][0] = true;
                Grd[1][1] = true;
                Grd[4][4] = true;
                _G05.hidden = NO;
                _G14.hidden = NO;
                _G23.hidden = NO;
                _G32.hidden = NO;
                _G41.hidden = NO;
                _G50.hidden = NO;
                _G11.hidden = NO;
                _G44.hidden = NO;
                break;
                
            case 7:
                Grd[1][1] = true;
                Grd[1][4] = true;
                Grd[2][2] = true;
                Grd[2][3] = true;
                Grd[3][2] = true;
                Grd[3][3] = true;
                Grd[4][1] = true;
                Grd[4][4] = true;
                _G11.hidden = NO;
                _G14.hidden = NO;
                _G22.hidden = NO;
                _G23.hidden = NO;
                _G32.hidden = NO;
                _G33.hidden = NO;
                _G41.hidden = NO;
                _G44.hidden = NO;
                break;
                
            case 8:
                Grd[1][0] = true;
                Grd[0][1] = true;
                Grd[0][4] = true;
                Grd[1][5] = true;
                Grd[4][5] = true;
                Grd[5][4] = true;
                Grd[4][0] = true;
                Grd[5][1] = true;
                _G10.hidden = NO;
                _G01.hidden = NO;
                _G04.hidden = NO;
                _G15.hidden = NO;
                _G45.hidden = NO;
                _G54.hidden = NO;
                _G40.hidden = NO;
                _G51.hidden = NO;
                break;
                
            case 9:
                Grd[1][2] = true;
                Grd[1][3] = true;
                Grd[2][1] = true;
                Grd[3][1] = true;
                Grd[2][4] = true;
                Grd[3][4] = true;
                Grd[4][2] = true;
                Grd[4][3] = true;
                _G12.hidden = NO;
                _G13.hidden = NO;
                _G21.hidden = NO;
                _G31.hidden = NO;
                _G24.hidden = NO;
                _G34.hidden = NO;
                _G42.hidden = NO;
                _G43.hidden = NO;
                break;
                
            case 10:
                Grd[1][1] = true;
                Grd[1][2] = true;
                Grd[1][4] = true;
                Grd[2][4] = true;
                Grd[4][4] = true;
                Grd[4][3] = true;
                Grd[4][1] = true;
                Grd[3][1] = true;
                _G11.hidden = NO;
                _G12.hidden = NO;
                _G14.hidden = NO;
                _G24.hidden = NO;
                _G44.hidden = NO;
                _G43.hidden = NO;
                _G41.hidden = NO;
                _G31.hidden = NO;
                break;
                
            case 11:
                Grd[0][3] = true;
                Grd[0][4] = true;
                Grd[0][5] = true;
                Grd[0][2] = true;
                Grd[5][0] = true;
                Grd[5][1] = true;
                Grd[5][2] = true;
                Grd[5][3] = true;
                _G02.hidden = NO;
                _G03.hidden = NO;
                _G04.hidden = NO;
                _G05.hidden = NO;
                _G50.hidden = NO;
                _G51.hidden = NO;
                _G52.hidden = NO;
                _G53.hidden = NO;
                break;
                
            case 12:
                Grd[1][2] = true;
                Grd[2][2] = true;
                Grd[2][3] = true;
                Grd[2][4] = true;
                Grd[3][1] = true;
                Grd[3][2] = true;
                Grd[3][3] = true;
                Grd[4][3] = true;
                _G12.hidden = NO;
                _G22.hidden = NO;
                _G23.hidden = NO;
                _G24.hidden = NO;
                _G31.hidden = NO;
                _G32.hidden = NO;
                _G33.hidden = NO;
                _G43.hidden = NO;
                break;
                
            case 13:
                Grd[0][1] = true;
                Grd[0][2] = true;
                Grd[0][3] = true;
                Grd[0][4] = true;
                Grd[1][5] = true;
                Grd[2][5] = true;
                Grd[3][5] = true;
                Grd[4][5] = true;
                Grd[5][4] = true;
                Grd[5][3] = true;
                Grd[5][2] = true;
                Grd[5][1] = true;
                Grd[1][0] = true;
                Grd[2][0] = true;
                Grd[3][0] = true;
                Grd[4][0] = true;
                _G01.hidden = NO;
                _G02.hidden = NO;
                _G03.hidden = NO;
                _G04.hidden = NO;
                _G15.hidden = NO;
                _G25.hidden = NO;
                _G35.hidden = NO;
                _G45.hidden = NO;
                _G51.hidden = NO;
                _G52.hidden = NO;
                _G53.hidden = NO;
                _G54.hidden = NO;
                _G10.hidden = NO;
                _G20.hidden = NO;
                _G30.hidden = NO;
                _G40.hidden = NO;
                break;
                
            case 14:
                Grd[2][0] = true;
                Grd[3][0] = true;
                Grd[4][0] = true;
                Grd[2][3] = true;
                Grd[0][5] = true;
                Grd[1][5] = true;
                Grd[2][5] = true;
                _G20.hidden = NO;
                _G30.hidden = NO;
                _G40.hidden = NO;
                _G23.hidden = NO;
                _G05.hidden = NO;
                _G15.hidden = NO;
                _G25.hidden = NO;
                break;
                
            case 15:
                Grd[1][3] = true;
                Grd[1][4] = true;
                Grd[1][5] = true;
                Grd[2][2] = true;
                Grd[3][3] = true;
                Grd[4][0] = true;
                Grd[4][1] = true;
                Grd[4][2] = true;
                _G13.hidden = NO;
                _G14.hidden = NO;
                _G15.hidden = NO;
                _G22.hidden = NO;
                _G33.hidden = NO;
                _G40.hidden = NO;
                _G41.hidden = NO;
                _G42.hidden = NO;
                break;
                
            default:
                Grd[0][0] = true;
                Grd[1][1] = true;
                Grd[1][4] = true;
                Grd[4][1] = true;
                Grd[4][4] = true;
                Grd[5][5] = true;
                _G00.hidden = NO;
                _G11.hidden = NO;
                _G14.hidden = NO;
                _G41.hidden = NO;
                _G44.hidden = NO;
                _G55.hidden = NO;
                break;
        }
    }
    
    else{
        _ImageView.hidden = NO;
        _InfoLabel.text = [NSString stringWithFormat:@"Fill the Grid with the same pattern as shown above."];
        
        switch (ChallengeID) {
            case 17:
                _ImageView.image = [UIImage imageNamed:@"Challenge17.png"];
                break;
                
            case 18:
                _ImageView.image = [UIImage imageNamed:@"Challenge18.png"];
                break;
                
            case 19:
                _ImageView.image = [UIImage imageNamed:@"Challenge19.png"];
                break;
                
            case 20:
                _ImageView.image = [UIImage imageNamed:@"Challenge20.png"];
                break;
                
            case 21:
                _ImageView.image = [UIImage imageNamed:@"Challenge21.png"];
                break;
                
            case 22:
                _ImageView.image = [UIImage imageNamed:@"Challenge22.png"];
                break;
                
            case 23:
                _ImageView.image = [UIImage imageNamed:@"Challenge23.png"];
                break;
                
            case 24:
                _ImageView.image = [UIImage imageNamed:@"Challenge24.png"];
                break;
                
            case 25:
                _ImageView.image = [UIImage imageNamed:@"Challenge25.png"];
                break;
                
            case 26:
                _ImageView.image = [UIImage imageNamed:@"Challenge26.png"];
                break;
                
            case 27:
                _ImageView.image = [UIImage imageNamed:@"Challenge27.png"];
                break;
                
            default:
                _ImageView.hidden = YES;
                
                _InfoLabel.text = [NSString stringWithFormat:@"Fill the Grid with Green Squares."];
                
                switch (ttp % 16) {
                    case 0:
                        Grd[0][0] = true;
                        Grd[1][1] = true;
                        Grd[1][4] = true;
                        Grd[4][1] = true;
                        Grd[4][4] = true;
                        Grd[5][5] = true;
                        _G00.hidden = NO;
                        _G11.hidden = NO;
                        _G14.hidden = NO;
                        _G41.hidden = NO;
                        _G44.hidden = NO;
                        _G55.hidden = NO;
                        break;
                        
                    case 2:
                        Grd[0][0] = true;
                        Grd[0][5] = true;
                        Grd[2][2] = true;
                        Grd[2][3] = true;
                        Grd[3][2] = true;
                        Grd[3][3] = true;
                        Grd[5][0] = true;
                        Grd[5][5] = true;
                        _G00.hidden = NO;
                        _G05.hidden = NO;
                        _G22.hidden = NO;
                        _G23.hidden = NO;
                        _G32.hidden = NO;
                        _G33.hidden = NO;
                        _G50.hidden = NO;
                        _G55.hidden = NO;
                        break;
                        
                    case 3:
                        Grd[0][0] = true;
                        Grd[0][5] = true;
                        Grd[1][1] = true;
                        Grd[1][4] = true;
                        Grd[4][1] = true;
                        Grd[4][4] = true;
                        Grd[5][0] = true;
                        Grd[5][5] = true;
                        _G00.hidden = NO;
                        _G05.hidden = NO;
                        _G11.hidden = NO;
                        _G14.hidden = NO;
                        _G41.hidden = NO;
                        _G44.hidden = NO;
                        _G50.hidden = NO;
                        _G55.hidden = NO;
                        break;
                        
                    case 4:
                        Grd[2][0] = true;
                        Grd[3][0] = true;
                        Grd[0][2] = true;
                        Grd[0][3] = true;
                        Grd[2][5] = true;
                        Grd[3][5] = true;
                        Grd[5][2] = true;
                        Grd[5][3] = true;
                        _G20.hidden = NO;
                        _G30.hidden = NO;
                        _G02.hidden = NO;
                        _G03.hidden = NO;
                        _G25.hidden = NO;
                        _G35.hidden = NO;
                        _G52.hidden = NO;
                        _G53.hidden = NO;
                        break;
                        
                    case 5:
                        Grd[0][0] = true;
                        Grd[1][1] = true;
                        Grd[2][2] = true;
                        Grd[3][3] = true;
                        Grd[4][4] = true;
                        Grd[5][5] = true;
                        Grd[2][3] = true;
                        Grd[3][2] = true;
                        _G00.hidden = NO;
                        _G11.hidden = NO;
                        _G22.hidden = NO;
                        _G33.hidden = NO;
                        _G44.hidden = NO;
                        _G55.hidden = NO;
                        _G23.hidden = NO;
                        _G32.hidden = NO;
                        break;
                        
                    case 6:
                        Grd[0][5] = true;
                        Grd[1][4] = true;
                        Grd[2][3] = true;
                        Grd[3][2] = true;
                        Grd[4][1] = true;
                        Grd[5][0] = true;
                        Grd[1][1] = true;
                        Grd[4][4] = true;
                        _G05.hidden = NO;
                        _G14.hidden = NO;
                        _G23.hidden = NO;
                        _G32.hidden = NO;
                        _G41.hidden = NO;
                        _G50.hidden = NO;
                        _G11.hidden = NO;
                        _G44.hidden = NO;
                        break;
                        
                    case 7:
                        Grd[1][1] = true;
                        Grd[1][4] = true;
                        Grd[2][2] = true;
                        Grd[2][3] = true;
                        Grd[3][2] = true;
                        Grd[3][3] = true;
                        Grd[4][1] = true;
                        Grd[4][4] = true;
                        _G11.hidden = NO;
                        _G14.hidden = NO;
                        _G22.hidden = NO;
                        _G23.hidden = NO;
                        _G32.hidden = NO;
                        _G33.hidden = NO;
                        _G41.hidden = NO;
                        _G44.hidden = NO;
                        break;
                        
                    case 8:
                        Grd[1][0] = true;
                        Grd[0][1] = true;
                        Grd[0][4] = true;
                        Grd[1][5] = true;
                        Grd[4][5] = true;
                        Grd[5][4] = true;
                        Grd[4][0] = true;
                        Grd[5][1] = true;
                        _G10.hidden = NO;
                        _G01.hidden = NO;
                        _G04.hidden = NO;
                        _G15.hidden = NO;
                        _G45.hidden = NO;
                        _G54.hidden = NO;
                        _G40.hidden = NO;
                        _G51.hidden = NO;
                        break;
                        
                    case 9:
                        Grd[1][2] = true;
                        Grd[1][3] = true;
                        Grd[2][1] = true;
                        Grd[3][1] = true;
                        Grd[2][4] = true;
                        Grd[3][4] = true;
                        Grd[4][2] = true;
                        Grd[4][3] = true;
                        _G12.hidden = NO;
                        _G13.hidden = NO;
                        _G21.hidden = NO;
                        _G31.hidden = NO;
                        _G24.hidden = NO;
                        _G34.hidden = NO;
                        _G42.hidden = NO;
                        _G43.hidden = NO;
                        break;
                        
                    case 10:
                        Grd[1][1] = true;
                        Grd[1][2] = true;
                        Grd[1][4] = true;
                        Grd[2][4] = true;
                        Grd[4][4] = true;
                        Grd[4][3] = true;
                        Grd[4][1] = true;
                        Grd[3][1] = true;
                        _G11.hidden = NO;
                        _G12.hidden = NO;
                        _G14.hidden = NO;
                        _G24.hidden = NO;
                        _G44.hidden = NO;
                        _G43.hidden = NO;
                        _G41.hidden = NO;
                        _G31.hidden = NO;
                        break;
                        
                    case 11:
                        Grd[0][3] = true;
                        Grd[0][4] = true;
                        Grd[0][5] = true;
                        Grd[0][2] = true;
                        Grd[5][0] = true;
                        Grd[5][1] = true;
                        Grd[5][2] = true;
                        Grd[5][3] = true;
                        _G02.hidden = NO;
                        _G03.hidden = NO;
                        _G04.hidden = NO;
                        _G05.hidden = NO;
                        _G50.hidden = NO;
                        _G51.hidden = NO;
                        _G52.hidden = NO;
                        _G53.hidden = NO;
                        break;
                        
                    case 12:
                        Grd[1][2] = true;
                        Grd[2][2] = true;
                        Grd[2][3] = true;
                        Grd[2][4] = true;
                        Grd[3][1] = true;
                        Grd[3][2] = true;
                        Grd[3][3] = true;
                        Grd[4][3] = true;
                        _G12.hidden = NO;
                        _G22.hidden = NO;
                        _G23.hidden = NO;
                        _G24.hidden = NO;
                        _G31.hidden = NO;
                        _G32.hidden = NO;
                        _G33.hidden = NO;
                        _G43.hidden = NO;
                        break;
                        
                    case 13:
                        Grd[0][1] = true;
                        Grd[0][2] = true;
                        Grd[0][3] = true;
                        Grd[0][4] = true;
                        Grd[1][5] = true;
                        Grd[2][5] = true;
                        Grd[3][5] = true;
                        Grd[4][5] = true;
                        Grd[5][4] = true;
                        Grd[5][3] = true;
                        Grd[5][2] = true;
                        Grd[5][1] = true;
                        Grd[1][0] = true;
                        Grd[2][0] = true;
                        Grd[3][0] = true;
                        Grd[4][0] = true;
                        _G01.hidden = NO;
                        _G02.hidden = NO;
                        _G03.hidden = NO;
                        _G04.hidden = NO;
                        _G15.hidden = NO;
                        _G25.hidden = NO;
                        _G35.hidden = NO;
                        _G45.hidden = NO;
                        _G51.hidden = NO;
                        _G52.hidden = NO;
                        _G53.hidden = NO;
                        _G54.hidden = NO;
                        _G10.hidden = NO;
                        _G20.hidden = NO;
                        _G30.hidden = NO;
                        _G40.hidden = NO;
                        break;
                        
                    case 14:
                        Grd[2][0] = true;
                        Grd[3][0] = true;
                        Grd[4][0] = true;
                        Grd[2][3] = true;
                        Grd[0][5] = true;
                        Grd[1][5] = true;
                        Grd[2][5] = true;
                        _G20.hidden = NO;
                        _G30.hidden = NO;
                        _G40.hidden = NO;
                        _G23.hidden = NO;
                        _G05.hidden = NO;
                        _G15.hidden = NO;
                        _G25.hidden = NO;
                        break;
                        
                    case 15:
                        Grd[1][3] = true;
                        Grd[1][4] = true;
                        Grd[1][5] = true;
                        Grd[2][2] = true;
                        Grd[3][3] = true;
                        Grd[4][0] = true;
                        Grd[4][1] = true;
                        Grd[4][2] = true;
                        _G13.hidden = NO;
                        _G14.hidden = NO;
                        _G15.hidden = NO;
                        _G22.hidden = NO;
                        _G33.hidden = NO;
                        _G40.hidden = NO;
                        _G41.hidden = NO;
                        _G42.hidden = NO;
                        break;
                        
                    default:
                        Grd[0][0] = true;
                        Grd[1][1] = true;
                        Grd[1][4] = true;
                        Grd[4][1] = true;
                        Grd[4][4] = true;
                        Grd[5][5] = true;
                        _G00.hidden = NO;
                        _G11.hidden = NO;
                        _G14.hidden = NO;
                        _G41.hidden = NO;
                        _G44.hidden = NO;
                        _G55.hidden = NO;
                        break;
                }
                break;
        }
    }
    
    ScoreNo = 0;
    
    for(int i=0; i<6; ++i){
        for(int j=0; j<6; ++j){
            if(Grd[i][j])
                ScoreNo++;
        }
    }
    
    _Score.text = [NSString stringWithFormat:@"%i", ScoreNo];
    [[NSUserDefaults standardUserDefaults] setInteger:ttp forKey:@"6Times"];
    
}

- (IBAction)LongPressNumber:(id)sender {
    _G00.hidden = YES;
    _G01.hidden = YES;
    _G02.hidden = YES;
    _G03.hidden = NO;
    _G04.hidden = NO;
    _G05.hidden = NO;
    
    _G10.hidden = YES;
    _G11.hidden = YES;
    _G12.hidden = YES;
    _G13.hidden = YES;
    _G14.hidden = NO;
    _G15.hidden = NO;
    
    _G20.hidden = YES;
    _G21.hidden = YES;
    _G22.hidden = YES;
    _G23.hidden = NO;
    _G24.hidden = YES;
    _G25.hidden = NO;
    
    _G30.hidden = NO;
    _G31.hidden = NO;
    _G32.hidden = NO;
    _G33.hidden = YES;
    _G34.hidden = YES;
    _G35.hidden = YES;
    
    _G40.hidden = NO;
    _G41.hidden = YES;
    _G42.hidden = NO;
    _G43.hidden = YES;
    _G44.hidden = YES;
    _G45.hidden = YES;
    
    _G50.hidden = YES;
    _G51.hidden = NO;
    _G52.hidden = NO;
    _G53.hidden = YES;
    _G54.hidden = YES;
    _G55.hidden = YES;
    
    for(int i=0; i<6; ++i){
        for(int j=0; j<6; ++j)
            Grd[i][j] = false;
    }
    
    Grd[0][3] = true;
    Grd[0][4] = true;
    Grd[0][5] = true;
    Grd[1][4] = true;
    Grd[1][5] = true;
    Grd[2][3] = true;
    Grd[2][5] = true;
    Grd[3][0] = true;
    Grd[3][1] = true;
    Grd[3][2] = true;
    Grd[4][0] = true;
    Grd[4][2] = true;
    Grd[5][1] = true;
    Grd[5][2] = true;

}
@end
