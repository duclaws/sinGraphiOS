//
//  ViewController.m
//  mathProj2
//
//  Created by Joshua Sharfi on 7/11/12.
//  Copyright (c) 2012 Joshua Sharfi. All rights reserved.

#define LOOP_SPEED .05

#import "ViewController.h"
#import "infoViewController.h"

@interface ViewController ()
@end

@implementation ViewController

@synthesize shouldLoop;


- (void)viewDidLoad
{
      

    
    [self.view addSubview:line];
    
    // Before we start the timer, initialize the array (duh)
    graph.points = [[NSMutableArray alloc] init];

    [NSTimer scheduledTimerWithTimeInterval:LOOP_SPEED target:self selector:@selector(loop) userInfo:nil repeats:YES];

    
    [super viewDidLoad];
 
}

float x;
float y;
float i=0;

- (void)viewWillAppear:(BOOL)animated
{
    shouldLoop = true;
}

- (void)viewWillDisappear:(BOOL)animated
{
    shouldLoop = false;
}


- (IBAction)infoBtn:(id)sender {
    infoViewController *infoView = [[infoViewController alloc] init];
    [infoView setModalPresentationStyle:UIModalTransitionStyleFlipHorizontal];
    [self presentModalViewController:infoView animated:YES];
}

-(IBAction) segmentedControlIndexChanged{
   
    switch (segControl.selectedSegmentIndex){
    
        case 0:
        {
            NSLog(@"deg touched");
            lbl180big.text= @"180º";
            lbl180small.text= @"180º";
            lbl360big.text= @"360º";
            lbl360small.text= @"360º";
            break;

        }
            
        case 1:
        {
            NSLog(@"rad touched");
            lbl180big.text= @"π";
            lbl180small.text= @"π";
            lbl360big.text= @"2π";
            lbl360small.text= @"2π";
            
            break;
        
        }
    }
}



- (void)update
{

    JSPoint *p = [[JSPoint alloc] init];
       
    x = 50 * cos(i)+78;
    y = 50 * sin(i)+150;
    
    p.x = x;
    p.y = y;
    
    NSString *sinString =[[NSNumber numberWithFloat:y] stringValue];
    NSString *cosString =[[NSNumber numberWithFloat:x] stringValue];
    NSString *xString =[[NSNumber numberWithFloat:-i] stringValue];

    [txtSin setText:sinString];
    [txtCos setText:cosString];
    
    [txtX setText:xString];
    
    
    [graph.points addObject:p];
    
    
    //if x> 2PI, set x back to zero. this will loop only as long as it takes to reach 2PI. Otherwise increment x by value of .09
    
    if (i<=((-2*M_PI)))
    {
    i=0.0;
    }
    else
    i = (i-.09);

    
}

- (void)loopNoMatterWhat
{
    BOOL originalShouldLoop = shouldLoop;
    shouldLoop = true;
    
    [self loop];
    
    shouldLoop = originalShouldLoop;
}

bool pausedBool=NO;
- (IBAction)pause:(id)sender
{
    shouldLoop = !shouldLoop;
        
    if (pausedBool)
    {
        UIImage * pauseBtn = [UIImage imageNamed:@"pause.png"];
        [playPauseBtn setImage:pauseBtn forState:UIControlStateNormal];
        
    }
    else
    {
        UIImage * playBtn = [UIImage imageNamed:@"play.png"];
        [playPauseBtn setImage:playBtn forState:UIControlStateNormal];
        
    }
    pausedBool = !pausedBool;
   
}

- (IBAction)next:(id)sender
{
    [self loopNoMatterWhat];
}



- (void)loop
{
    if (!shouldLoop)
        return;
    
    [self update];
    
    [graph setNeedsDisplayInRect:self.view.frame];
}


- (void)infoDismissed
{
    shouldLoop = true;
    NSLog(@"Info dismissed");
}



- (void)touchesMoved:(NSSet *)touches withEvent:(UIEvent *)event
{

    UITouch *touch = [touches anyObject];
    CGPoint touchPoint = [touch locationInView:graph];

}



- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return UIInterfaceOrientationIsLandscape(interfaceOrientation);
}

- (void)viewDidUnload {
    segControl = nil;
    lbl180big = nil;
    lbl360big = nil;
    lbl360small = nil;
    lbl180small = nil;
    playPauseBtn = nil;
    [super viewDidUnload];
}
@end
