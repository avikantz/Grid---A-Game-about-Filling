//
//  ViewController.h
//  5x5
//
//  Created by Avikant on 07/17/14.
//  Copyright (c) 2014 Avikant. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

- (IBAction)About:(id)sender;
- (IBAction)HowTo:(id)sender;

@property (weak, nonatomic) IBOutlet UIButton *Cover6x6;
@property (weak, nonatomic) IBOutlet UIButton *Cover5x5;

- (IBAction)Cover5x5:(id)sender;
- (IBAction)Cover6x6:(id)sender;



@end
