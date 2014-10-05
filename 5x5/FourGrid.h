//
//  FourGrid.h
//  5x5
//
//  Created by Avikant on 07/17/14.
//  Copyright (c) 2014 Avikant. All rights reserved.
//

#import <UIKit/UIKit.h>
int ScoreNo;
int ttp;

@interface FourGrid : UIViewController

@property (weak, nonatomic) IBOutlet UILabel *Score;

@property (weak, nonatomic) IBOutlet UIImageView *G00;
@property (weak, nonatomic) IBOutlet UIImageView *G01;
@property (weak, nonatomic) IBOutlet UIImageView *G02;
@property (weak, nonatomic) IBOutlet UIImageView *G03;

@property (weak, nonatomic) IBOutlet UIImageView *G10;
@property (weak, nonatomic) IBOutlet UIImageView *G11;
@property (weak, nonatomic) IBOutlet UIImageView *G12;
@property (weak, nonatomic) IBOutlet UIImageView *G13;

@property (weak, nonatomic) IBOutlet UIImageView *G20;
@property (weak, nonatomic) IBOutlet UIImageView *G21;
@property (weak, nonatomic) IBOutlet UIImageView *G22;
@property (weak, nonatomic) IBOutlet UIImageView *G23;

@property (weak, nonatomic) IBOutlet UIImageView *G30;
@property (weak, nonatomic) IBOutlet UIImageView *G31;
@property (weak, nonatomic) IBOutlet UIImageView *G32;
@property (weak, nonatomic) IBOutlet UIImageView *G33;


- (IBAction)B00:(id)sender;
- (IBAction)B01:(id)sender;
- (IBAction)B02:(id)sender;
- (IBAction)B03:(id)sender;

- (IBAction)B10:(id)sender;
- (IBAction)B11:(id)sender;
- (IBAction)B12:(id)sender;
- (IBAction)B13:(id)sender;

- (IBAction)B20:(id)sender;
- (IBAction)B21:(id)sender;
- (IBAction)B22:(id)sender;
- (IBAction)B23:(id)sender;

- (IBAction)B30:(id)sender;
- (IBAction)B31:(id)sender;
- (IBAction)B32:(id)sender;
- (IBAction)B33:(id)sender;

- (IBAction)Reset:(id)sender;


@end
