//
//  ViewController.m
//  mathProj2
//
//  Created by Joshua Sharfi on 7/11/12.
//  Copyright (c) 2012 Joshua Sharfi. All rights reserved.
//320×480

// Our conversion definition
#define DEGREES_TO_RADIANS(angle) (angle / 180.0 * M_PI)

#define SPIN_CLOCK_WISE 1
#define SPIN_COUNTERCLOCK_WISE -1

#define LOOP_SPEED .3


#import "ViewController.h"
#include <QuartzCore/QuartzCore.h>

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    
    redLine=[[UIImageView alloc] initWithImage:[UIImage imageNamed:@"redline.png"]];
    //circle=[[UIImageView alloc] initWithImage:[UIImage imageNamed:@"circle.png"]];
    //redLine.frame = CGRectMake (150, 150, 200, 20);
    [self.view addSubview:redLine];
    
    // Before we start the timer, initialize the array (duh)
    ((SinGraphView *) self.view).points = [[NSMutableArray alloc] init];

    [NSTimer scheduledTimerWithTimeInterval:LOOP_SPEED target:self selector:@selector(loop) userInfo:nil repeats:YES];

    [super viewDidLoad];
    [self spinLayer:line.layer duration:10 direction:SPIN_COUNTERCLOCK_WISE];
   

       
   
    
    
    
    
    
//    UIButton *infoButton;
//    infoButton.frame=CGRectMake(10,12,30,40);
//    [self.view addSubview:infoButton];
//    
//    [self spinLayer:infoButton.layer duration:3 direction:SPIN_COUNTERCLOCK_WISE];
//


}

float x;
float y;
float i=.01;

- (void)update
{
    NSLog(@"X is :%f",x);
    NSLog(@"Y is :%f",y);
    NSLog(@"i is :%f",i);
    
    JSPoint *p = [[JSPoint alloc] init];
    i += .10;
    
    
    y = 50 * sin(i)+150;
    x = 50 * cos(i)+150;
    
    p.x = y;
    p.y = x;
    
    NSString *sinString =[[NSNumber numberWithFloat:y] stringValue];
    NSString *cosString =[[NSNumber numberWithFloat:x] stringValue];
    NSString *xString =[[NSNumber numberWithFloat:i] stringValue];

    [txtSin setText:sinString];
    [txtCos setText:cosString];
    
    [txtX setText:xString];
        
    
    
    redLine.frame = CGRectMake (150, x, 300, 10);

    
    [((SinGraphView *) self.view).points addObject:p];
}












- (void)loop
{
    [self update];
    
    [self.view setNeedsDisplayInRect:self.view.frame];
}










- (void)touchesMoved:(NSSet *)touches withEvent:(UIEvent *)event
{
    
   
    
    UITouch *touch = [touches anyObject];
    CGPoint touchPoint = [touch locationInView:testImage];
    
   //testImage.frame = CGRectMake (50, 100, 300, 20);
    
        NSLog(@"X Position: %f",touchPoint.x);

    //[self setNeedsDisplayInRect:self];
    
}






- (void)rotateImage:(UIImageView *)image duration:(NSTimeInterval)duration
              curve:(int)curve degrees:(CGFloat)degrees
{
    // Setup the animation
    [UIView beginAnimations:nil context:NULL];
    [UIView setAnimationDuration:duration];
    [UIView setAnimationCurve:curve];
    [UIView setAnimationBeginsFromCurrentState:YES];
    
    // The transform matrix
    CGAffineTransform transform =
    CGAffineTransformMakeRotation(DEGREES_TO_RADIANS(degrees));
    image.transform = transform;
    
    // Commit the changes
    [UIView commitAnimations];
}

- (void)spinLayer:(CALayer *)inLayer duration:(CFTimeInterval)inDuration
        direction:(int)direction
{
    CABasicAnimation* rotationAnimation;
    
    // Rotate about the z axis
    rotationAnimation =
    [CABasicAnimation animationWithKeyPath:@"transform.rotation.z"];
    
    // Rotate 360 degress, in direction specified
    rotationAnimation.toValue = [NSNumber numberWithFloat: M_PI * 4.0 * direction];
    
    // Perform the rotation over this many seconds
    rotationAnimation.duration = inDuration;
    
    // Set the pacing of the animation
    rotationAnimation.timingFunction =
    [CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionEaseInEaseOut];
    
    // Add animation to the layer and make it so
    [inLayer addAnimation:rotationAnimation forKey:@"rotationAnimation"];
}




- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    
    return YES;
}

@end
