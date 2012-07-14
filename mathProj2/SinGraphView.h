//
//  SinGraphView.h
//  mathProj2
//
//  Created by Joshua Sharfi on 7/12/12.
//  Copyright (c) 2012 Joshua Sharfi. All rights reserved.
//

#import <UIKit/UIKit.h>

#import "JSPoint.h"

@interface SinGraphView : UIView
{
    IBOutlet UIImageView *redLine;


}
@property (nonatomic, retain) NSMutableArray *points;

@end
