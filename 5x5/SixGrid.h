//
//  SixGrid.h
//  5x5
//
//  Created by Avikant on 07/18/14.
//  Copyright (c) 2014 Avikant. All rights reserved.
//

#import <UIKit/UIKit.h>
int ScoreNo;
int ttp;
int ChallengeID;
int checker;

@interface SixGrid : UIViewController

@property (weak, nonatomic) IBOutlet UILabel *Score;
@property (weak, nonatomic) IBOutlet UIImageView *ImageView;
@property (weak, nonatomic) IBOutlet UILabel *InfoLabel;

@property (weak, nonatomic) IBOutlet UIImageView *G00;
@property (weak, nonatomic) IBOutlet UIImageView *G01;
@property (weak, nonatomic) IBOutlet UIImageView *G02;
@property (weak, nonatomic) IBOutlet UIImageView *G03;
@property (weak, nonatomic) IBOutlet UIImageView *G04;
@property (weak, nonatomic) IBOutlet UIImageView *G05;

@property (weak, nonatomic) IBOutlet UIImageView *G10;
@property (weak, nonatomic) IBOutlet UIImageView *G11;
@property (weak, nonatomic) IBOutlet UIImageView *G12;
@property (weak, nonatomic) IBOutlet UIImageView *G13;
@property (weak, nonatomic) IBOutlet UIImageView *G14;
@property (weak, nonatomic) IBOutlet UIImageView *G15;

@property (weak, nonatomic) IBOutlet UIImageView *G20;
@property (weak, nonatomic) IBOutlet UIImageView *G21;
@property (weak, nonatomic) IBOutlet UIImageView *G22;
@property (weak, nonatomic) IBOutlet UIImageView *G23;
@property (weak, nonatomic) IBOutlet UIImageView *G24;
@property (weak, nonatomic) IBOutlet UIImageView *G25;

@property (weak, nonatomic) IBOutlet UIImageView *G30;
@property (weak, nonatomic) IBOutlet UIImageView *G31;
@property (weak, nonatomic) IBOutlet UIImageView *G32;
@property (weak, nonatomic) IBOutlet UIImageView *G33;
@property (weak, nonatomic) IBOutlet UIImageView *G34;
@property (weak, nonatomic) IBOutlet UIImageView *G35;

@property (weak, nonatomic) IBOutlet UIImageView *G40;
@property (weak, nonatomic) IBOutlet UIImageView *G41;
@property (weak, nonatomic) IBOutlet UIImageView *G42;
@property (weak, nonatomic) IBOutlet UIImageView *G43;
@property (weak, nonatomic) IBOutlet UIImageView *G44;
@property (weak, nonatomic) IBOutlet UIImageView *G45;

@property (weak, nonatomic) IBOutlet UIImageView *G50;
@property (weak, nonatomic) IBOutlet UIImageView *G51;
@property (weak, nonatomic) IBOutlet UIImageView *G52;
@property (weak, nonatomic) IBOutlet UIImageView *G53;
@property (weak, nonatomic) IBOutlet UIImageView *G54;
@property (weak, nonatomic) IBOutlet UIImageView *G55;

- (IBAction)TopLeft:(id)sender;

- (IBAction)TopRight:(id)sender;

- (IBAction)BottomLeft:(id)sender;

- (IBAction)BottomRight:(id)sender;

- (IBAction)Top:(id)sender;

- (IBAction)Right:(id)sender;

- (IBAction)Bottom:(id)sender;

- (IBAction)Left:(id)sender;

- (IBAction)Center:(id)sender;

- (IBAction)Reset:(id)sender;

- (IBAction)LongPressNumber:(id)sender;

@property (weak, nonatomic) IBOutlet UIButton *BackToHome;
@property (weak, nonatomic) IBOutlet UIButton *BackToC2;
@property (weak, nonatomic) IBOutlet UIButton *BackToC3;


@end
