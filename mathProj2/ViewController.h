//
//  ViewController.h
//  mathProj2
//
//  Created by Joshua Sharfi on 7/11/12.
//  Copyright (c) 2012 Joshua Sharfi. All rights reserved.
//

#import <UIKit/UIKit.h>

#import "SinGraphView.h"
#import "JSPoint.h"

@interface ViewController : UIViewController
{
    UIImageView  *testImage;
    UIImageView *circle;
    IBOutlet UIImageView *line;
    IBOutlet UILabel *txtSin;
    IBOutlet UILabel *txtX;
    IBOutlet UILabel *txtCos;
    IBOutlet SinGraphView *graph;
        
    IBOutlet UISegmentedControl *segControl;
    IBOutlet UILabel *lbl180big;
    IBOutlet UILabel *lbl360big;
    IBOutlet UILabel *lbl360small;
    IBOutlet UILabel *lbl180small;
    IBOutlet UIButton *playPauseBtn;
//CGPoint *touchPoint;
}

@property (nonatomic) BOOL shouldLoop;

- (IBAction)infoBtn:(id)sender;
-(IBAction) segmentedControlIndexChanged;

- (IBAction)pause:(id)sender;
- (IBAction)next:(id)sender;

@end
