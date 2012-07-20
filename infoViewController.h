//
//  infoViewController.h
//  mathProj2
//
//  Created by rich on 7/16/12.
//  Copyright (c) 2012 rich. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ViewController.h"

@interface infoViewController : UIViewController
- (IBAction)infoBtn:(id)sender;
- (IBAction)eggs:(id)sender;
- (IBAction)superEggs:(id)sender;
- (IBAction)tappy:(id)sender;

@property (strong, nonatomic) IBOutlet UILabel *nameLbl;
@property (strong, nonatomic) IBOutlet UILabel *dateLbl;
@property (strong, nonatomic) IBOutlet UIImageView *prof;
@end
