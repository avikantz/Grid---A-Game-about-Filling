//
//  FourGridy.m
//  5x5
//
//  Created by Avikant on 07/17/14.
//  Copyright (c) 2014 Avikant. All rights reserved.
//

#import "FourGrid.h"

@interface FourGrid ()

@end

@implementation FourGrid

BOOL Gridy[4][4] = {{false, false, false, false}, {false, false, false, false}, {false, false, false, false}, {false, false, false, false}};

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
    _G00.hidden = YES;
    _G01.hidden = YES;
    _G02.hidden = YES;
    _G03.hidden = YES;
    
    _G10.hidden = YES;
    _G11.hidden = YES;
    _G12.hidden = YES;
    _G13.hidden = YES;
    
    _G20.hidden = YES;
    _G21.hidden = YES;
    _G22.hidden = YES;
    _G23.hidden = YES;
    
    _G30.hidden = YES;
    _G31.hidden = YES;
    _G32.hidden = YES;
    _G33.hidden = YES;
    
    for(int i=0; i<4; ++i){
        for(int j=0; j<4; ++j)
            Gridy[i][j] = false;
    }
    
    ttp = (int)[[NSUserDefaults standardUserDefaults] integerForKey:@"4Times"];
    
    switch (ttp%10) {
        case 0:
            Gridy[0][0] = true;
            Gridy[1][1] = true;
            Gridy[2][2] = true;
            Gridy[3][3] = true;
            _G00.hidden = NO;
            _G11.hidden = NO;
            _G22.hidden = NO;
            _G33.hidden = NO;
            break;
            
        case 1:
            Gridy[1][0] = true;
            Gridy[0][2] = true;
            Gridy[2][3] = true;
            Gridy[3][1] = true;
            _G10.hidden = NO;
            _G02.hidden = NO;
            _G23.hidden = NO;
            _G31.hidden = NO;
            break;
            
        case 2:
            Gridy[0][0] = true;
            Gridy[0][3] = true;
            Gridy[3][0] = true;
            Gridy[3][3] = true;
            _G00.hidden = NO;
            _G03.hidden = NO;
            _G30.hidden = NO;
            _G33.hidden = NO;
            break;
            
        case 3:
            Gridy[0][0] = true;
            Gridy[1][2] = true;
            Gridy[2][1] = true;
            Gridy[3][3] = true;
            _G00.hidden = NO;
            _G12.hidden = NO;
            _G21.hidden = NO;
            _G33.hidden = NO;
            break;
            
        case 4:
            Gridy[1][0] = true;
            Gridy[0][1] = true;
            Gridy[3][2] = true;
            Gridy[2][3] = true;
            _G10.hidden = NO;
            _G01.hidden = NO;
            _G32.hidden = NO;
            _G23.hidden = NO;
            break;
            
        case 5:
            Gridy[0][3] = true;
            Gridy[1][2] = true;
            Gridy[2][1] = true;
            Gridy[3][0] = true;
            _G03.hidden = NO;
            _G12.hidden = NO;
            _G21.hidden = NO;
            _G30.hidden = NO;
            break;
            
        case 6:
            Gridy[2][0] = true;
            Gridy[0][1] = true;
            Gridy[1][3] = true;
            Gridy[3][2] = true;
            _G20.hidden = NO;
            _G01.hidden = NO;
            _G13.hidden = NO;
            _G32.hidden = NO;
            break;
            
        case 7:
            Gridy[0][1] = true;
            Gridy[0][2] = true;
            Gridy[3][1] = true;
            Gridy[3][2] = true;
            _G01.hidden = NO;
            _G02.hidden = NO;
            _G31.hidden = NO;
            _G32.hidden = NO;
            break;
            
        case 8:
            Gridy[0][2] = true;
            Gridy[1][3] = true;
            Gridy[2][0] = true;
            Gridy[3][1] = true;
            _G02.hidden = NO;
            _G10.hidden = NO;
            _G23.hidden = NO;
            _G31.hidden = NO;
            break;
            
        case 9:
            Gridy[0][3] = true;
            Gridy[1][1] = true;
            Gridy[2][2] = true;
            Gridy[3][0] = true;
            _G03.hidden = NO;
            _G11.hidden = NO;
            _G22.hidden = NO;
            _G30.hidden = NO;
            break;
            
        default:
            Gridy[0][0] = true;
            Gridy[1][1] = true;
            Gridy[2][2] = true;
            Gridy[3][3] = true;
            _G00.hidden = NO;
            _G11.hidden = NO;
            _G22.hidden = NO;
            _G33.hidden = NO;
            break;
    }
    
    
    
    ScoreNo = 0;
    
    for(int i=0; i<4; ++i){
        for(int j=0; j<4; ++j){
            if(Gridy[i][j])
                ScoreNo++;
        }
    }
    
    _Score.text = [NSString stringWithFormat:@"%i", ScoreNo];
    
    
    ttp ++;
    [[NSUserDefaults standardUserDefaults] setInteger:ttp forKey:@"4Times"];
    
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

- (IBAction)B00:(id)sender {
    if(Gridy[0][0] == false){
        Gridy[0][0] = true;
        _G00.hidden = NO;
    }
    else{
        Gridy[0][0] = false;
        _G00.hidden = YES;
    }
    
    if(Gridy[0][1] == false){
        Gridy[0][1] = true;
        _G01.hidden = NO;
    }
    else{
        Gridy[0][1] = false;
        _G01.hidden = YES;
    }
    if(Gridy[1][0] == false){
        Gridy[1][0] = true;
        _G10.hidden = NO;
    }
    else{
        Gridy[1][0] = false;
        _G10.hidden = YES;
    }

    
    ScoreNo = 0;
    
    for(int i=0; i<4; ++i){
        for(int j=0; j<4; ++j){
            if(Gridy[i][j])
                ScoreNo++;
        }
    }
    
    if(ScoreNo == 16){
        int Solve4 = (int)[[NSUserDefaults standardUserDefaults] integerForKey:@"4Solved"];
        Solve4++;
        [[NSUserDefaults standardUserDefaults] setInteger:Solve4 forKey:@"4Solved"];
        UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"You Won!"
                                                        message:@"Yeah, you won, big deal!"
                                                       delegate:self
                                              cancelButtonTitle:@"Back"
                                              otherButtonTitles:@"Again!",nil];
        [alert show];
    }

    
    _Score.text = [NSString stringWithFormat:@"%i", ScoreNo];
}

- (IBAction)B01:(id)sender {
    if(Gridy[0][0] == false){
        Gridy[0][0] = true;
        _G00.hidden = NO;
    }
    else{
        Gridy[0][0] = false;
        _G00.hidden = YES;
    }
    
    if(Gridy[0][1] == false){
        Gridy[0][1] = true;
        _G01.hidden = NO;
    }
    else{
        Gridy[0][1] = false;
        _G01.hidden = YES;
    }
    
    if(Gridy[0][2] == false){
        Gridy[0][2] = true;
        _G02.hidden = NO;
    }
    else{
        Gridy[0][2] = false;
        _G02.hidden = YES;
    }
    if(Gridy[1][1] == false){
        Gridy[1][1] = true;
        _G11.hidden = NO;
    }
    else{
        Gridy[1][1] = false;
        _G11.hidden = YES;
    }

    
    ScoreNo = 0;
    
    for(int i=0; i<4; ++i){
        for(int j=0; j<4; ++j){
            if(Gridy[i][j])
                ScoreNo++;
        }
    }
    
    if(ScoreNo == 16){
        int Solve4 = (int)[[NSUserDefaults standardUserDefaults] integerForKey:@"4Solved"];
        Solve4++;
        [[NSUserDefaults standardUserDefaults] setInteger:Solve4 forKey:@"4Solved"];
        UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"You Won!"
                                                        message:@"Yeah, you won, big deal!"
                                                       delegate:self
                                              cancelButtonTitle:@"Back"
                                              otherButtonTitles:@"Again!",nil];
        [alert show];
    }

    
    _Score.text = [NSString stringWithFormat:@"%i", ScoreNo];
}

- (IBAction)B02:(id)sender {
    if(Gridy[0][1] == false){
        Gridy[0][1] = true;
        _G01.hidden = NO;
    }
    else{
        Gridy[0][1] = false;
        _G01.hidden = YES;
    }
    
    if(Gridy[0][2] == false){
        Gridy[0][2] = true;
        _G02.hidden = NO;
    }
    else{
        Gridy[0][2] = false;
        _G02.hidden = YES;
    }
    
    if(Gridy[0][3] == false){
        Gridy[0][3] = true;
        _G03.hidden = NO;
    }
    else{
        Gridy[0][3] = false;
        _G03.hidden = YES;
    }
    if(Gridy[1][2] == false){
        Gridy[1][2] = true;
        _G12.hidden = NO;
    }
    else{
        Gridy[1][2] = false;
        _G12.hidden = YES;
    }

    
    ScoreNo = 0;
    
    for(int i=0; i<4; ++i){
        for(int j=0; j<4; ++j){
            if(Gridy[i][j])
                ScoreNo++;
        }
    }
    
    if(ScoreNo == 16){
        int Solve4 = (int)[[NSUserDefaults standardUserDefaults] integerForKey:@"4Solved"];
        Solve4++;
        [[NSUserDefaults standardUserDefaults] setInteger:Solve4 forKey:@"4Solved"];
        UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"You Won!"
                                                        message:@"Yeah, you won, big deal!"
                                                       delegate:self
                                              cancelButtonTitle:@"Back"
                                              otherButtonTitles:@"Again!",nil];
        [alert show];
    }

    
    _Score.text = [NSString stringWithFormat:@"%i", ScoreNo];
}

- (IBAction)B03:(id)sender {
    if(Gridy[0][2] == false){
        Gridy[0][2] = true;
        _G02.hidden = NO;
    }
    else{
        Gridy[0][2] = false;
        _G02.hidden = YES;
    }
    
    if(Gridy[0][3] == false){
        Gridy[0][3] = true;
        _G03.hidden = NO;
    }
    else{
        Gridy[0][3] = false;
        _G03.hidden = YES;
    }
    if(Gridy[1][3] == false){
        Gridy[1][3] = true;
        _G13.hidden = NO;
    }
    else{
        Gridy[1][3] = false;
        _G13.hidden = YES;
    }

    
    ScoreNo = 0;
    
    for(int i=0; i<4; ++i){
        for(int j=0; j<4; ++j){
            if(Gridy[i][j])
                ScoreNo++;
        }
    }
    
    if(ScoreNo == 16){
        int Solve4 = (int)[[NSUserDefaults standardUserDefaults] integerForKey:@"4Solved"];
        Solve4++;
        [[NSUserDefaults standardUserDefaults] setInteger:Solve4 forKey:@"4Solved"];
        UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"You Won!"
                                                        message:@"Yeah, you won, big deal!"
                                                       delegate:self
                                              cancelButtonTitle:@"Back"
                                              otherButtonTitles:@"Again!",nil];
        [alert show];
    }

    
    _Score.text = [NSString stringWithFormat:@"%i", ScoreNo];
}


- (IBAction)B10:(id)sender {
    if(Gridy[0][0] == false){
        Gridy[0][0] = true;
        _G00.hidden = NO;
    }
    else{
        Gridy[0][0] = false;
        _G00.hidden = YES;
    }
    if(Gridy[1][0] == false){
        Gridy[1][0] = true;
        _G10.hidden = NO;
    }
    else{
        Gridy[1][0] = false;
        _G10.hidden = YES;
    }
    
    if(Gridy[1][1] == false){
        Gridy[1][1] = true;
        _G11.hidden = NO;
    }
    else{
        Gridy[1][1] = false;
        _G11.hidden = YES;
    }
    if(Gridy[2][0] == false){
        Gridy[2][0] = true;
        _G20.hidden = NO;
    }
    else{
        Gridy[2][0] = false;
        _G20.hidden = YES;
    }

    
    ScoreNo = 0;
    
    for(int i=0; i<4; ++i){
        for(int j=0; j<4; ++j){
            if(Gridy[i][j])
                ScoreNo++;
        }
    }
    
    if(ScoreNo == 16){
        int Solve4 = (int)[[NSUserDefaults standardUserDefaults] integerForKey:@"4Solved"];
        Solve4++;
        [[NSUserDefaults standardUserDefaults] setInteger:Solve4 forKey:@"4Solved"];
        UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"You Won!"
                                                        message:@"Yeah, you won, big deal!"
                                                       delegate:self
                                              cancelButtonTitle:@"Back"
                                              otherButtonTitles:@"Again!",nil];
        [alert show];
    }

    
    _Score.text = [NSString stringWithFormat:@"%i", ScoreNo];
}

- (IBAction)B11:(id)sender {
    if(Gridy[0][1] == false){
        Gridy[0][1] = true;
        _G01.hidden = NO;
    }
    else{
        Gridy[0][1] = false;
        _G01.hidden = YES;
    }
    if(Gridy[1][0] == false){
        Gridy[1][0] = true;
        _G10.hidden = NO;
    }
    else{
        Gridy[1][0] = false;
        _G10.hidden = YES;
    }
    
    if(Gridy[1][1] == false){
        Gridy[1][1] = true;
        _G11.hidden = NO;
    }
    else{
        Gridy[1][1] = false;
        _G11.hidden = YES;
    }
    
    if(Gridy[1][2] == false){
        Gridy[1][2] = true;
        _G12.hidden = NO;
    }
    else{
        Gridy[1][2] = false;
        _G12.hidden = YES;
    }
    if(Gridy[2][1] == false){
        Gridy[2][1] = true;
        _G21.hidden = NO;
    }
    else{
        Gridy[2][1] = false;
        _G21.hidden = YES;
    }

    
    ScoreNo = 0;
    
    for(int i=0; i<4; ++i){
        for(int j=0; j<4; ++j){
            if(Gridy[i][j])
                ScoreNo++;
        }
    }
    
    if(ScoreNo == 16){
        int Solve4 = (int)[[NSUserDefaults standardUserDefaults] integerForKey:@"4Solved"];
        Solve4++;
        [[NSUserDefaults standardUserDefaults] setInteger:Solve4 forKey:@"4Solved"];
        UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"You Won!"
                                                        message:@"Yeah, you won, big deal!"
                                                       delegate:self
                                              cancelButtonTitle:@"Back"
                                              otherButtonTitles:@"Again!",nil];
        [alert show];
    }

    
    _Score.text = [NSString stringWithFormat:@"%i", ScoreNo];
}

- (IBAction)B12:(id)sender {
    if(Gridy[0][2] == false){
        Gridy[0][2] = true;
        _G02.hidden = NO;
    }
    else{
        Gridy[0][2] = false;
        _G02.hidden = YES;
    }
    
    if(Gridy[1][1] == false){
        Gridy[1][1] = true;
        _G11.hidden = NO;
    }
    else{
        Gridy[1][1] = false;
        _G11.hidden = YES;
    }
    
    if(Gridy[1][2] == false){
        Gridy[1][2] = true;
        _G12.hidden = NO;
    }
    else{
        Gridy[1][2] = false;
        _G12.hidden = YES;
    }
    
    if(Gridy[1][3] == false){
        Gridy[1][3] = true;
        _G13.hidden = NO;
    }
    else{
        Gridy[1][3] = false;
        _G13.hidden = YES;
    }
    if(Gridy[2][2] == false){
        Gridy[2][2] = true;
        _G22.hidden = NO;
    }
    else{
        Gridy[2][2] = false;
        _G22.hidden = YES;
    }

    
    ScoreNo = 0;
    
    for(int i=0; i<4; ++i){
        for(int j=0; j<4; ++j){
            if(Gridy[i][j])
                ScoreNo++;
        }
    }
    
    if(ScoreNo == 16){
        int Solve4 = (int)[[NSUserDefaults standardUserDefaults] integerForKey:@"4Solved"];
        Solve4++;
        [[NSUserDefaults standardUserDefaults] setInteger:Solve4 forKey:@"4Solved"];
        UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"You Won!"
                                                        message:@"Yeah, you won, big deal!"
                                                       delegate:self
                                              cancelButtonTitle:@"Back"
                                              otherButtonTitles:@"Again!",nil];
        [alert show];
    }

    
    _Score.text = [NSString stringWithFormat:@"%i", ScoreNo];
}

- (IBAction)B13:(id)sender {
    if(Gridy[0][3] == false){
        Gridy[0][3] = true;
        _G03.hidden = NO;
    }
    else{
        Gridy[0][3] = false;
        _G03.hidden = YES;
    }
    if(Gridy[1][2] == false){
        Gridy[1][2] = true;
        _G12.hidden = NO;
    }
    else{
        Gridy[1][2] = false;
        _G12.hidden = YES;
    }
    
    if(Gridy[1][3] == false){
        Gridy[1][3] = true;
        _G13.hidden = NO;
    }
    else{
        Gridy[1][3] = false;
        _G13.hidden = YES;
    }
    if(Gridy[2][3] == false){
        Gridy[2][3] = true;
        _G23.hidden = NO;
    }
    else{
        Gridy[2][3] = false;
        _G23.hidden = YES;
    }

    
    ScoreNo = 0;
    
    for(int i=0; i<4; ++i){
        for(int j=0; j<4; ++j){
            if(Gridy[i][j])
                ScoreNo++;
        }
    }
    
    if(ScoreNo == 16){
        int Solve4 = (int)[[NSUserDefaults standardUserDefaults] integerForKey:@"4Solved"];
        Solve4++;
        [[NSUserDefaults standardUserDefaults] setInteger:Solve4 forKey:@"4Solved"];
        UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"You Won!"
                                                        message:@"Yeah, you won, big deal!"
                                                       delegate:self
                                              cancelButtonTitle:@"Back"
                                              otherButtonTitles:@"Again!",nil];
        [alert show];
    }

    
    _Score.text = [NSString stringWithFormat:@"%i", ScoreNo];
}


- (IBAction)B20:(id)sender {
    if(Gridy[1][0] == false){
        Gridy[1][0] = true;
        _G10.hidden = NO;
    }
    else{
        Gridy[1][0] = false;
        _G10.hidden = YES;
    }
    
    if(Gridy[2][0] == false){
        Gridy[2][0] = true;
        _G20.hidden = NO;
    }
    else{
        Gridy[2][0] = false;
        _G20.hidden = YES;
    }
    
    if(Gridy[2][1] == false){
        Gridy[2][1] = true;
        _G21.hidden = NO;
    }
    else{
        Gridy[2][1] = false;
        _G21.hidden = YES;
    }
    if(Gridy[3][0] == false){
        Gridy[3][0] = true;
        _G30.hidden = NO;
    }
    else{
        Gridy[3][0] = false;
        _G30.hidden = YES;
    }

    
    ScoreNo = 0;
    
    for(int i=0; i<4; ++i){
        for(int j=0; j<4; ++j){
            if(Gridy[i][j])
                ScoreNo++;
        }
    }
    
    if(ScoreNo == 16){
        int Solve4 = (int)[[NSUserDefaults standardUserDefaults] integerForKey:@"4Solved"];
        Solve4++;
        [[NSUserDefaults standardUserDefaults] setInteger:Solve4 forKey:@"4Solved"];
        UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"You Won!"
                                                        message:@"Yeah, you won, big deal!"
                                                       delegate:self
                                              cancelButtonTitle:@"Back"
                                              otherButtonTitles:@"Again!",nil];
        [alert show];
    }

    
    _Score.text = [NSString stringWithFormat:@"%i", ScoreNo];
}

- (IBAction)B21:(id)sender {
    if(Gridy[1][1] == false){
        Gridy[1][1] = true;
        _G11.hidden = NO;
    }
    else{
        Gridy[1][1] = false;
        _G11.hidden = YES;
    }
    if(Gridy[2][0] == false){
        Gridy[2][0] = true;
        _G20.hidden = NO;
    }
    else{
        Gridy[2][0] = false;
        _G20.hidden = YES;
    }
    
    if(Gridy[2][1] == false){
        Gridy[2][1] = true;
        _G21.hidden = NO;
    }
    else{
        Gridy[2][1] = false;
        _G21.hidden = YES;
    }
    
    if(Gridy[2][2] == false){
        Gridy[2][2] = true;
        _G22.hidden = NO;
    }
    else{
        Gridy[2][2] = false;
        _G22.hidden = YES;
    }
    if(Gridy[3][1] == false){
        Gridy[3][1] = true;
        _G31.hidden = NO;
    }
    else{
        Gridy[3][1] = false;
        _G31.hidden = YES;
    }

    
    ScoreNo = 0;
    
    for(int i=0; i<4; ++i){
        for(int j=0; j<4; ++j){
            if(Gridy[i][j])
                ScoreNo++;
        }
    }
    
    if(ScoreNo == 16){
        int Solve4 = (int)[[NSUserDefaults standardUserDefaults] integerForKey:@"4Solved"];
        Solve4++;
        [[NSUserDefaults standardUserDefaults] setInteger:Solve4 forKey:@"4Solved"];
        UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"You Won!"
                                                        message:@"Yeah, you won, big deal!"
                                                       delegate:self
                                              cancelButtonTitle:@"Back"
                                              otherButtonTitles:@"Again!",nil];
        [alert show];
    }

    
    _Score.text = [NSString stringWithFormat:@"%i", ScoreNo];
}

- (IBAction)B22:(id)sender {
    if(Gridy[1][2] == false){
        Gridy[1][2] = true;
        _G12.hidden = NO;
    }
    else{
        Gridy[1][2] = false;
        _G12.hidden = YES;
    }
    if(Gridy[2][1] == false){
        Gridy[2][1] = true;
        _G21.hidden = NO;
    }
    else{
        Gridy[2][1] = false;
        _G21.hidden = YES;
    }
    
    if(Gridy[2][2] == false){
        Gridy[2][2] = true;
        _G22.hidden = NO;
    }
    else{
        Gridy[2][2] = false;
        _G22.hidden = YES;
    }
    
    if(Gridy[2][3] == false){
        Gridy[2][3] = true;
        _G23.hidden = NO;
    }
    else{
        Gridy[2][3] = false;
        _G23.hidden = YES;
    }
    if(Gridy[3][2] == false){
        Gridy[3][2] = true;
        _G32.hidden = NO;
    }
    else{
        Gridy[3][2] = false;
        _G32.hidden = YES;
    }

    
    ScoreNo = 0;
    
    for(int i=0; i<4; ++i){
        for(int j=0; j<4; ++j){
            if(Gridy[i][j])
                ScoreNo++;
        }
    }
    
    if(ScoreNo == 16){
        int Solve4 = (int)[[NSUserDefaults standardUserDefaults] integerForKey:@"4Solved"];
        Solve4++;
        [[NSUserDefaults standardUserDefaults] setInteger:Solve4 forKey:@"4Solved"];
        UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"You Won!"
                                                        message:@"Yeah, you won, big deal!"
                                                       delegate:self
                                              cancelButtonTitle:@"Back"
                                              otherButtonTitles:@"Again!",nil];
        [alert show];
    }

    
    _Score.text = [NSString stringWithFormat:@"%i", ScoreNo];
}

- (IBAction)B23:(id)sender {
    if(Gridy[1][3] == false){
        Gridy[1][3] = true;
        _G13.hidden = NO;
    }
    else{
        Gridy[1][3] = false;
        _G13.hidden = YES;
    }
    if(Gridy[2][2] == false){
        Gridy[2][2] = true;
        _G22.hidden = NO;
    }
    else{
        Gridy[2][2] = false;
        _G22.hidden = YES;
    }
    
    if(Gridy[2][3] == false){
        Gridy[2][3] = true;
        _G23.hidden = NO;
    }
    else{
        Gridy[2][3] = false;
        _G23.hidden = YES;
    }
    if(Gridy[3][3] == false){
        Gridy[3][3] = true;
        _G33.hidden = NO;
    }
    else{
        Gridy[3][3] = false;
        _G33.hidden = YES;
    }

    
    ScoreNo = 0;
    
    for(int i=0; i<4; ++i){
        for(int j=0; j<4; ++j){
            if(Gridy[i][j])
                ScoreNo++;
        }
    }
    
    if(ScoreNo == 16){
        int Solve4 = (int)[[NSUserDefaults standardUserDefaults] integerForKey:@"4Solved"];
        Solve4++;
        [[NSUserDefaults standardUserDefaults] setInteger:Solve4 forKey:@"4Solved"];
        UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"You Won!"
                                                        message:@"Yeah, you won, big deal!"
                                                       delegate:self
                                              cancelButtonTitle:@"Back"
                                              otherButtonTitles:@"Again!",nil];
        [alert show];
    }

    
    _Score.text = [NSString stringWithFormat:@"%i", ScoreNo];
}


- (IBAction)B30:(id)sender {
    if(Gridy[2][0] == false){
        Gridy[2][0] = true;
        _G20.hidden = NO;
    }
    else{
        Gridy[2][0] = false;
        _G20.hidden = YES;
    }
    if(Gridy[3][0] == false){
        Gridy[3][0] = true;
        _G30.hidden = NO;
    }
    else{
        Gridy[3][0] = false;
        _G30.hidden = YES;
    }
    
    if(Gridy[3][1] == false){
        Gridy[3][1] = true;
        _G31.hidden = NO;
    }
    else{
        Gridy[3][1] = false;
        _G31.hidden = YES;
    }

    
    ScoreNo = 0;
    
    for(int i=0; i<4; ++i){
        for(int j=0; j<4; ++j){
            if(Gridy[i][j])
                ScoreNo++;
        }
    }
    
    if(ScoreNo == 16){
        int Solve4 = (int)[[NSUserDefaults standardUserDefaults] integerForKey:@"4Solved"];
        Solve4++;
        [[NSUserDefaults standardUserDefaults] setInteger:Solve4 forKey:@"4Solved"];
        UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"You Won!"
                                                        message:@"Yeah, you won, big deal!"
                                                       delegate:self
                                              cancelButtonTitle:@"Back"
                                              otherButtonTitles:@"Again!",nil];
        [alert show];
    }

    
    _Score.text = [NSString stringWithFormat:@"%i", ScoreNo];
}

- (IBAction)B31:(id)sender {
    if(Gridy[2][1] == false){
        Gridy[2][1] = true;
        _G21.hidden = NO;
    }
    else{
        Gridy[2][1] = false;
        _G21.hidden = YES;
    }
    if(Gridy[3][0] == false){
        Gridy[3][0] = true;
        _G30.hidden = NO;
    }
    else{
        Gridy[3][0] = false;
        _G30.hidden = YES;
    }
    
    if(Gridy[3][1] == false){
        Gridy[3][1] = true;
        _G31.hidden = NO;
    }
    else{
        Gridy[3][1] = false;
        _G31.hidden = YES;
    }
    
    if(Gridy[3][2] == false){
        Gridy[3][2] = true;
        _G32.hidden = NO;
    }
    else{
        Gridy[3][2] = false;
        _G32.hidden = YES;
    }

    
    ScoreNo = 0;
    
    for(int i=0; i<4; ++i){
        for(int j=0; j<4; ++j){
            if(Gridy[i][j])
                ScoreNo++;
        }
    }
    
    if(ScoreNo == 16){
        int Solve4 = (int)[[NSUserDefaults standardUserDefaults] integerForKey:@"4Solved"];
        Solve4++;
        [[NSUserDefaults standardUserDefaults] setInteger:Solve4 forKey:@"4Solved"];
        UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"You Won!"
                                                        message:@"Yeah, you won, big deal!"
                                                       delegate:self
                                              cancelButtonTitle:@"Back"
                                              otherButtonTitles:@"Again!",nil];
        [alert show];
    }

    
    _Score.text = [NSString stringWithFormat:@"%i", ScoreNo];
}

- (IBAction)B32:(id)sender {
    if(Gridy[2][2] == false){
        Gridy[2][2] = true;
        _G22.hidden = NO;
    }
    else{
        Gridy[2][2] = false;
        _G22.hidden = YES;
    }
    if(Gridy[3][1] == false){
        Gridy[3][1] = true;
        _G31.hidden = NO;
    }
    else{
        Gridy[3][1] = false;
        _G31.hidden = YES;
    }
    
    if(Gridy[3][2] == false){
        Gridy[3][2] = true;
        _G32.hidden = NO;
    }
    else{
        Gridy[3][2] = false;
        _G32.hidden = YES;
    }
    
    if(Gridy[3][3] == false){
        Gridy[3][3] = true;
        _G33.hidden = NO;
    }
    else{
        Gridy[3][3] = false;
        _G33.hidden = YES;
    }

    
    ScoreNo = 0;
    
    for(int i=0; i<4; ++i){
        for(int j=0; j<4; ++j){
            if(Gridy[i][j])
                ScoreNo++;
        }
    }
    
    if(ScoreNo == 16){
        int Solve4 = (int)[[NSUserDefaults standardUserDefaults] integerForKey:@"4Solved"];
        Solve4++;
        [[NSUserDefaults standardUserDefaults] setInteger:Solve4 forKey:@"4Solved"];
        UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"You Won!"
                                                        message:@"Yeah, you won, big deal!"
                                                       delegate:self
                                              cancelButtonTitle:@"Back"
                                              otherButtonTitles:@"Again!",nil];
        [alert show];
    }

    
    _Score.text = [NSString stringWithFormat:@"%i", ScoreNo];
}

- (IBAction)B33:(id)sender {
    if(Gridy[2][3] == false){
        Gridy[2][3] = true;
        _G23.hidden = NO;
    }
    else{
        Gridy[2][3] = false;
        _G23.hidden = YES;
    }
    if(Gridy[3][2] == false){
        Gridy[3][2] = true;
        _G32.hidden = NO;
    }
    else{
        Gridy[3][2] = false;
        _G32.hidden = YES;
    }
    
    if(Gridy[3][3] == false){
        Gridy[3][3] = true;
        _G33.hidden = NO;
    }
    else{
        Gridy[3][3] = false;
        _G33.hidden = YES;
    }

    
    ScoreNo = 0;
    
    for(int i=0; i<4; ++i){
        for(int j=0; j<4; ++j){
            if(Gridy[i][j])
                ScoreNo++;
        }
    }
    
    if(ScoreNo == 16){
        int Solve4 = (int)[[NSUserDefaults standardUserDefaults] integerForKey:@"4Solved"];
        Solve4++;
        [[NSUserDefaults standardUserDefaults] setInteger:Solve4 forKey:@"4Solved"];
        
        UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"You Won!"
                                                        message:@"Yeah, you won, big deal!"
                                                       delegate:self
                                              cancelButtonTitle:@"Dismiss"
                                              otherButtonTitles:@"Again!",nil];
        [alert show];
    }
    
    _Score.text = [NSString stringWithFormat:@"%i", ScoreNo];
}

- (void)alertView:(UIAlertView *)alertView clickedButtonAtIndex:(NSInteger)buttonIndex
{
    NSString *title = [alertView buttonTitleAtIndex:buttonIndex];
    if([title isEqualToString:@"Again!"])
    {
        ttp = 0;
        [[NSUserDefaults standardUserDefaults] setInteger:ttp forKey:@"4Times"];
        
        _G00.hidden = YES;
        _G01.hidden = YES;
        _G02.hidden = YES;
        _G03.hidden = YES;
        
        _G10.hidden = YES;
        _G11.hidden = YES;
        _G12.hidden = YES;
        _G13.hidden = YES;
        
        _G20.hidden = YES;
        _G21.hidden = YES;
        _G22.hidden = YES;
        _G23.hidden = YES;
        
        _G30.hidden = YES;
        _G31.hidden = YES;
        _G32.hidden = YES;
        _G33.hidden = YES;
        
        for(int i=0; i<4; ++i){
            for(int j=0; j<4; ++j)
                Gridy[i][j] = false;
        }
        
        ttp = (int)[[NSUserDefaults standardUserDefaults] integerForKey:@"4Times"];
        
        switch (ttp%10) {
            case 0:
                Gridy[0][0] = true;
                Gridy[1][1] = true;
                Gridy[2][2] = true;
                Gridy[3][3] = true;
                _G00.hidden = NO;
                _G11.hidden = NO;
                _G22.hidden = NO;
                _G33.hidden = NO;
                break;
                
            case 1:
                Gridy[1][0] = true;
                Gridy[0][2] = true;
                Gridy[2][3] = true;
                Gridy[3][1] = true;
                _G10.hidden = NO;
                _G02.hidden = NO;
                _G23.hidden = NO;
                _G31.hidden = NO;
                break;
                
            case 2:
                Gridy[0][0] = true;
                Gridy[0][3] = true;
                Gridy[3][0] = true;
                Gridy[3][3] = true;
                _G00.hidden = NO;
                _G03.hidden = NO;
                _G30.hidden = NO;
                _G33.hidden = NO;
                break;
                
            case 3:
                Gridy[0][0] = true;
                Gridy[1][2] = true;
                Gridy[2][1] = true;
                Gridy[3][3] = true;
                _G00.hidden = NO;
                _G12.hidden = NO;
                _G21.hidden = NO;
                _G33.hidden = NO;
                break;
                
            case 4:
                Gridy[1][0] = true;
                Gridy[0][1] = true;
                Gridy[3][2] = true;
                Gridy[2][3] = true;
                _G10.hidden = NO;
                _G01.hidden = NO;
                _G32.hidden = NO;
                _G23.hidden = NO;
                break;
                
            case 5:
                Gridy[0][3] = true;
                Gridy[1][2] = true;
                Gridy[2][1] = true;
                Gridy[3][0] = true;
                _G03.hidden = NO;
                _G12.hidden = NO;
                _G21.hidden = NO;
                _G30.hidden = NO;
                break;
                
            case 6:
                Gridy[2][0] = true;
                Gridy[0][1] = true;
                Gridy[1][3] = true;
                Gridy[3][2] = true;
                _G20.hidden = NO;
                _G01.hidden = NO;
                _G13.hidden = NO;
                _G32.hidden = NO;
                break;
                
            case 7:
                Gridy[0][1] = true;
                Gridy[0][2] = true;
                Gridy[3][1] = true;
                Gridy[3][2] = true;
                _G01.hidden = NO;
                _G02.hidden = NO;
                _G31.hidden = NO;
                _G32.hidden = NO;
                break;
                
            case 8:
                Gridy[0][2] = true;
                Gridy[1][3] = true;
                Gridy[2][0] = true;
                Gridy[3][1] = true;
                _G02.hidden = NO;
                _G10.hidden = NO;
                _G23.hidden = NO;
                _G31.hidden = NO;
                break;
                
            case 9:
                Gridy[0][3] = true;
                Gridy[1][1] = true;
                Gridy[2][2] = true;
                Gridy[3][0] = true;
                _G03.hidden = NO;
                _G11.hidden = NO;
                _G22.hidden = NO;
                _G30.hidden = NO;
                break;
                
            default:
                Gridy[0][0] = true;
                Gridy[1][1] = true;
                Gridy[2][2] = true;
                Gridy[3][3] = true;
                _G00.hidden = NO;
                _G11.hidden = NO;
                _G22.hidden = NO;
                _G33.hidden = NO;
                break;
        }
        
        
        
        ScoreNo = 0;
        
        for(int i=0; i<4; ++i){
            for(int j=0; j<4; ++j){
                if(Gridy[i][j])
                    ScoreNo++;
            }
        }
        
        _Score.text = [NSString stringWithFormat:@"%i", ScoreNo];
        
        
        ttp ++;
        [[NSUserDefaults standardUserDefaults] setInteger:ttp forKey:@"4Times"];
    }
}


- (IBAction)Reset:(id)sender {
    
    _G00.hidden = YES;
    _G01.hidden = YES;
    _G02.hidden = YES;
    _G03.hidden = YES;
    
    _G10.hidden = YES;
    _G11.hidden = YES;
    _G12.hidden = YES;
    _G13.hidden = YES;
    
    _G20.hidden = YES;
    _G21.hidden = YES;
    _G22.hidden = YES;
    _G23.hidden = YES;
    
    _G30.hidden = YES;
    _G31.hidden = YES;
    _G32.hidden = YES;
    _G33.hidden = YES;
    
    for(int i=0; i<4; ++i){
        for(int j=0; j<4; ++j)
            Gridy[i][j] = false;
    }
    
    ttp = (int)[[NSUserDefaults standardUserDefaults] integerForKey:@"4Times"];
    
    switch (ttp%10) {
        case 0:
            Gridy[0][0] = true;
            Gridy[1][1] = true;
            Gridy[2][2] = true;
            Gridy[3][3] = true;
            _G00.hidden = NO;
            _G11.hidden = NO;
            _G22.hidden = NO;
            _G33.hidden = NO;
            break;
            
        case 1:
            Gridy[1][0] = true;
            Gridy[0][2] = true;
            Gridy[2][3] = true;
            Gridy[3][1] = true;
            _G10.hidden = NO;
            _G02.hidden = NO;
            _G23.hidden = NO;
            _G31.hidden = NO;
            break;
            
        case 2:
            Gridy[0][0] = true;
            Gridy[0][3] = true;
            Gridy[3][0] = true;
            Gridy[3][3] = true;
            _G00.hidden = NO;
            _G03.hidden = NO;
            _G30.hidden = NO;
            _G33.hidden = NO;
            break;
            
        case 3:
            Gridy[0][0] = true;
            Gridy[1][2] = true;
            Gridy[2][1] = true;
            Gridy[3][3] = true;
            _G00.hidden = NO;
            _G12.hidden = NO;
            _G21.hidden = NO;
            _G33.hidden = NO;
            break;
            
        case 4:
            Gridy[1][0] = true;
            Gridy[0][1] = true;
            Gridy[3][2] = true;
            Gridy[2][3] = true;
            _G10.hidden = NO;
            _G01.hidden = NO;
            _G32.hidden = NO;
            _G23.hidden = NO;
            break;
            
        case 5:
            Gridy[0][3] = true;
            Gridy[1][2] = true;
            Gridy[2][1] = true;
            Gridy[3][0] = true;
            _G03.hidden = NO;
            _G12.hidden = NO;
            _G21.hidden = NO;
            _G30.hidden = NO;
            break;
            
        case 6:
            Gridy[2][0] = true;
            Gridy[0][1] = true;
            Gridy[1][3] = true;
            Gridy[3][2] = true;
            _G20.hidden = NO;
            _G01.hidden = NO;
            _G13.hidden = NO;
            _G32.hidden = NO;
            break;
            
        case 7:
            Gridy[0][1] = true;
            Gridy[0][2] = true;
            Gridy[3][1] = true;
            Gridy[3][2] = true;
            _G01.hidden = NO;
            _G02.hidden = NO;
            _G31.hidden = NO;
            _G32.hidden = NO;
            break;
            
        case 8:
            Gridy[0][2] = true;
            Gridy[1][3] = true;
            Gridy[2][0] = true;
            Gridy[3][1] = true;
            _G02.hidden = NO;
            _G10.hidden = NO;
            _G23.hidden = NO;
            _G31.hidden = NO;
            break;
            
        case 9:
            Gridy[0][3] = true;
            Gridy[1][1] = true;
            Gridy[2][2] = true;
            Gridy[3][0] = true;
            _G03.hidden = NO;
            _G11.hidden = NO;
            _G22.hidden = NO;
            _G30.hidden = NO;
            break;
            
        default:
            Gridy[0][0] = true;
            Gridy[1][1] = true;
            Gridy[2][2] = true;
            Gridy[3][3] = true;
            _G00.hidden = NO;
            _G11.hidden = NO;
            _G22.hidden = NO;
            _G33.hidden = NO;
            break;
    }
    
    
    
    ScoreNo = 0;
    
    for(int i=0; i<4; ++i){
        for(int j=0; j<4; ++j){
            if(Gridy[i][j])
                ScoreNo++;
        }
    }
    
    _Score.text = [NSString stringWithFormat:@"%i", ScoreNo];
    
}

@end
