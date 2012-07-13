//
//  SinGraphView.m
//  mathProj2
//
//  Created by rich on 7/12/12.
//  Copyright (c) 2012 rich. All rights reserved.
//

#import "SinGraphView.h"

@implementation SinGraphView

- (void)drawRect:(CGRect)rect
{
    CGContextRef context = UIGraphicsGetCurrentContext();
    
    CGContextSetRGBFillColor(context, 1.0, 0, 0, 1.0f);
    
    for (JSPoint *point in self.points)
        CGContextFillRect(context, CGRectMake(point.x, point.y, 2, 2));
    
    NSLog(@"RECT");
}

@end