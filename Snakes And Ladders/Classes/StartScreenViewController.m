//
//  StartScreenViewController.m
//  SnakesAndLadders
//
//  Created by wimc on 16/05/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import "StartScreenViewController.h"
#import "AboutScreenViewController.h"
#import "GameScreenViewController.h"

@implementation StartScreenViewController


/*
// Implement viewDidLoad to do additional setup after loading the view, typically from a nib.
- (void)viewDidLoad {
    [super viewDidLoad];
}
*/

#pragma mark -
#pragma mark orientation dependency!!!!


- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation {
	NSLog(@"In rotation");
	if(UIInterfaceOrientationIsLandscape(interfaceOrientation)){
		viewProtrait.hidden=YES;
		//set the position of the view programatically!!!
		CGRect rect=viewLandscape.frame;
		rect.origin.x=10;
		rect.origin.y=10;
		viewLandscape.frame=rect;
		viewLandscape.hidden=NO;
		return YES;
	}else{
		CGRect rect=viewProtrait.frame;
		rect.origin.x=10;
		rect.origin.y=10;
		viewProtrait.frame=rect;
		viewProtrait.hidden=NO;
		viewLandscape.hidden=YES;
		return YES;
	}
}


- (void)didReceiveMemoryWarning {
    // Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
    
    // Release any cached data, images, etc. that aren't in use.
}

- (void)viewDidUnload {
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}


- (void)dealloc {
    [super dealloc];
	[bNewGame release];
	[bAbout release];
	[bHelp release];
	[bOptions release];
	[viewLandscape release];
	[viewProtrait release];
	[about release];
	[lHelp release];
	[tHelp release];
}

#pragma mark -
#pragma mark actionHandlers!!!!

//action handlers for the buttons!!!
-(IBAction) buttonNewGame{
	gameScreen=[[GameScreenViewController alloc] initWithNibName:@"GameScreenViewController" bundle:nil];
	gameScreen.modalTransitionStyle=UIModalTransitionStyleFlipHorizontal;
	[self presentModalViewController:gameScreen animated:YES];
	[gameScreen release];
}
-(IBAction) buttonHelp{
	UIAlertView *alertView = [[UIAlertView alloc] initWithTitle:@"Help"
												  message:@"Please align the phone in landscape mode to view the help!!" 
												  delegate:nil 
												  cancelButtonTitle:@"Back" 
											      otherButtonTitles:nil];
	[alertView show];
	[alertView release];
}
-(IBAction) buttonAbout{
	about=[[AboutScreenViewController alloc] initWithNibName:@"AboutScreenViewController" bundle:nil];
	about.modalTransitionStyle=UIModalTransitionStyleFlipHorizontal;
	[self presentModalViewController:about animated:YES];
	[about release];
}
-(IBAction) buttonOptions{
}

@end
