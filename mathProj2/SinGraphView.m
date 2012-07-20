//
//  SinGraphView.m
//  mathProj2
//
//  Created by Joshua Sharfi on 7/12/12.
//  Copyright (c) 2012 Joshua Sharfi. All rights reserved.
//

#import "SinGraphView.h" 
@implementation SinGraphView

int z=159;

- (void)drawRect:(CGRect)rect
{
    CGContextRef context = UIGraphicsGetCurrentContext();

    JSPoint *lastPoint;
    
    int x=159;
    
    
    for (JSPoint *point in self.points)
    {   //circle drawn 
        CGContextSetRGBFillColor(context, 1.0, 0.0, 0.0, 1.0f);
        CGContextFillRect(context, CGRectMake(point.x, point.y, 2, 1));
        lastPoint = point;
        
        
        //sin(x) drawn
        if (!(x>298))
        {
            CGContextSetRGBFillColor(context, 0.0, 1.0, 0.0, 1.0f);
            CGContextFillRect(context, CGRectMake(x, point.y, 1, 1));
            x=(x+2);
        }
    
    }
       
        if (lastPoint != nil)
        {
            //angle line for circle
            CGContextSetLineWidth       (context, 2);
            CGContextSetRGBStrokeColor  (context, 0.0, 0.0, 0.0, 1);
            CGContextMoveToPoint        (context, lastPoint.x, lastPoint.y);
            CGContextAddLineToPoint(context,80,150); //set center axis
            CGContextStrokePath(context);
            CGContextFillPath           (context);
           
            //////// teal line on circle
            CGContextSetLineWidth       (context, 2);
            CGContextSetRGBStrokeColor  (context, 0.0, 0.3, 0.3, 1);
            CGContextMoveToPoint        (context, lastPoint.x, lastPoint.y);
            CGContextAddLineToPoint(context,lastPoint.x,150); //set center axis
            CGContextStrokePath(context);
            CGContextFillPath           (context);

            
                //blue line
                if (!(x>298)){
                CGContextSetRGBFillColor(context, 0.0, 0.0, 1.0, 1.0f);
                CGContextFillRect(context, CGRectMake(lastPoint.x, lastPoint.y, x-lastPoint.x, 1));
                    ///////teal on sin graph
                    CGContextSetLineWidth       (context, 2);
                    CGContextSetRGBStrokeColor  (context, 0.0, 0.3, 0.3, 1);
                    CGContextMoveToPoint        (context, x, lastPoint.y);
                    CGContextAddLineToPoint(context,x,150); //set center axis
                    CGContextStrokePath(context);
                    CGContextFillPath           (context);

        }
            else
            if (!(z>298))
        {
            CGContextSetRGBFillColor(context, 0.0, 0.0, 1.0, 1.0f);
            CGContextFillRect(context, CGRectMake(lastPoint.x, lastPoint.y, z-lastPoint.x, 1));
            
            //teal on sin graph
            CGContextSetLineWidth       (context, 2);
            CGContextSetRGBStrokeColor  (context, 0.0, 0.3, 0.3, 1);
            CGContextMoveToPoint        (context, z, lastPoint.y);
            CGContextAddLineToPoint(context,z,150); //set center axis
            CGContextStrokePath(context);
            CGContextFillPath           (context);
            
            
            
            z=(z+2);
        }
            else z=159;
        }
        
        
        

}
@end
