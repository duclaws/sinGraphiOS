//
//  infoViewController.m
//  mathProj2
//
//  Created by rich on 7/16/12.
//  Copyright (c) 2012 rich. All rights reserved.
//

#import "infoViewController.h"

@interface infoViewController ()

@end

@implementation infoViewController
@synthesize nameLbl;
@synthesize dateLbl;
@synthesize prof;
bool viewVisible=YES;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
     prof=[[UIImageView alloc]initWithImage:[UIImage imageNamed:@"vbpng.png"]];
        [super viewDidLoad];
    prof.alpha=0;
    
    // Do any additional setup after loading the view from its nib.
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

- (IBAction)infoBtn:(id)sender {
    [(ViewController *) self.parentViewController setShouldLoop:YES];
    [self dismissModalViewControllerAnimated:YES];
}

- (IBAction)tappy:(id)sender
{
    [UIView beginAnimations:@"animateImageOn" context:NULL];
    [UIView setAnimationDuration:2];
    prof.alpha=0;
    //[prof removeFromSuperview];
    nameLbl.text=@"Joshua Sharfi";
    dateLbl.text=@"7.16.12";
    
    
    [UIView commitAnimations];
    viewVisible = YES;

}

- (IBAction)eggs:(id)sender
{
    [UIView beginAnimations:@"animateImageOn" context:NULL];
    [UIView setAnimationDuration:2];
    prof.alpha=0;
    //[prof removeFromSuperview];
    nameLbl.text=@"Joshua Sharfi";
    dateLbl.text=@"7.16.12";
    
    
    [UIView commitAnimations];
    viewVisible = YES;

}


- (IBAction)superEggs:(id)sender
{
    NSLog(@"SuperEggsSSSS"); 
    if (viewVisible)
    {
		[UIView beginAnimations:@"animateImageOff" context:NULL]; 
		[UIView setAnimationDuration:2];
        prof.alpha=1;
        [self.view addSubview:prof];
        nameLbl.text=@"Professor Vytas Baskauskas";
        dateLbl.text=@"Santa Monica, California";
        
		[UIView commitAnimations]; 
		viewVisible = NO;

	}
    else
    {
		[UIView beginAnimations:@"animateImageOn" context:NULL]; 
		[UIView setAnimationDuration:2];
        prof.alpha=0;
        //[prof removeFromSuperview];
        nameLbl.text=@"Joshua Sharfi";
        dateLbl.text=@"7.16.12";

		[UIView commitAnimations];
		viewVisible = YES;
		        }

}
- (void)viewDidUnload {
    [self setNameLbl:nil];
    [self setDateLbl:nil];
    [super viewDidUnload];
}



	

@end
