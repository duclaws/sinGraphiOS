//
//  SinGraphView.m
//  mathProj2
//
//  Created by Joshua Sharfi on 7/12/12.
//  Copyright (c) 2012 Joshua Sharfi. All rights reserved.
//

#import "SinGraphView.h"
@implementation SinGraphView


-(void)viewDidLoad
{
    redLine=[[UIImageView alloc] initWithImage:[UIImage imageNamed:@"redline.png"]];
    
}


- (void)drawRect:(CGRect)rect
{
    
    CGContextRef context = UIGraphicsGetCurrentContext();
    
    CGContextSetRGBFillColor(context, 1, 0, 0, 1.0f);
        
    for (JSPoint *point in self.points)
    {
        CGContextFillRect(context, CGRectMake(point.x, point.y, 2, 2));
        redLine.frame = CGRectMake (point.y, point.x, 300, 5);

    }
    NSLog(@"FRAME");
}



@end