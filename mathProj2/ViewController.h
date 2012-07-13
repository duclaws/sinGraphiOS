//
//  ViewController.h
//  mathProj2
//
//  Created by rich on 7/11/12.
//  Copyright (c) 2012 rich. All rights reserved.
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

//CGPoint *touchPoint;
}

@end
