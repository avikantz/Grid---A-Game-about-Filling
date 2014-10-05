//
//  FiveGrid.h
//  5x5
//
//  Created by Avikant on 07/17/14.
//  Copyright (c) 2014 Avikant. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <AudioToolbox/AudioToolbox.h>
int ScoreNo;
int ttp;
int ChallengeID;
int checker;

@interface FiveGrid : UIViewController

@property (weak, nonatomic) IBOutlet UILabel *Score;
@property (weak, nonatomic) IBOutlet UILabel *InfoLabel;

@property (weak, nonatomic) IBOutlet UIImageView *ImageView;

@property (weak, nonatomic) IBOutlet UIImageView *Green1;
@property (weak, nonatomic) IBOutlet UIImageView *Green2;
@property (weak, nonatomic) IBOutlet UIImageView *Green3;
@property (weak, nonatomic) IBOutlet UIImageView *Green4;
@property (weak, nonatomic) IBOutlet UIImageView *Green5;

@property (weak, nonatomic) IBOutlet UIImageView *Green6;
@property (weak, nonatomic) IBOutlet UIImageView *Green7;
@property (weak, nonatomic) IBOutlet UIImageView *Green8;
@property (weak, nonatomic) IBOutlet UIImageView *Green9;
@property (weak, nonatomic) IBOutlet UIImageView *Green10;

@property (weak, nonatomic) IBOutlet UIImageView *Green11;
@property (weak, nonatomic) IBOutlet UIImageView *Green12;
@property (weak, nonatomic) IBOutlet UIImageView *Green13;
@property (weak, nonatomic) IBOutlet UIImageView *Green14;
@property (weak, nonatomic) IBOutlet UIImageView *Green15;

@property (weak, nonatomic) IBOutlet UIImageView *Green16;
@property (weak, nonatomic) IBOutlet UIImageView *Green17;
@property (weak, nonatomic) IBOutlet UIImageView *Green18;
@property (weak, nonatomic) IBOutlet UIImageView *Green19;
@property (weak, nonatomic) IBOutlet UIImageView *Green20;

@property (weak, nonatomic) IBOutlet UIImageView *Green21;
@property (weak, nonatomic) IBOutlet UIImageView *Green22;
@property (weak, nonatomic) IBOutlet UIImageView *Green23;
@property (weak, nonatomic) IBOutlet UIImageView *Green24;
@property (weak, nonatomic) IBOutlet UIImageView *Green25;


- (IBAction)TopLeft:(id)sender;
- (IBAction)TopRight:(id)sender;
- (IBAction)BottomLeft:(id)sender;
- (IBAction)BottomRight:(id)sender;

- (IBAction)Left:(id)sender;

- (IBAction)Top:(id)sender;

- (IBAction)Right:(id)sender;

- (IBAction)Bottom:(id)sender;

- (IBAction)Center:(id)sender;

- (IBAction)Reset:(id)sender;

- (IBAction)LongPressNumber:(id)sender;

@property (weak, nonatomic) IBOutlet UIButton *BackToHome;
@property (weak, nonatomic) IBOutlet UIButton *BackToC1;
@property (weak, nonatomic) IBOutlet UIButton *BackToC2;


@end
