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
    IBOutlet UIImageView *redLine;
    IBOutlet UILabel *txtSin;
    IBOutlet UILabel *txtX;
    IBOutlet UILabel *txtCos;
        
//CGPoint *touchPoint;
}

@end
