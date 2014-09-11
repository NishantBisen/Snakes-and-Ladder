//
//  GameScreenViewController.m
//  SnakesAndLadders
//
//  Created by wimc on 16/05/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import "GameScreenViewController.h"


@implementation GameScreenViewController

- (void)viewDidLoad {
    [super viewDidLoad];
	
	//initialize the game!!!!
	// create the images for the 2 players!!!!
	UIImage *image;
	image=[UIImage imageNamed:@"Strawberry.gif"];
	imagePlayer1 =[[UIImageView alloc]initWithImage:image];
	[image release];
	image=[UIImage imageNamed:@"icon1.png"];
	imagePlayer2=[[UIImageView alloc]initWithImage:image];
	[image release];
	
	//set the at the begenning when the game starts!!!
	CGRect rect=imagePlayer1.frame;
	//setSize
	rect.size.width=25;
	rect.size.height=25;
	//setcoordinates
	rect.origin.x=0;
	rect.origin.y=330;
	imagePlayer1.frame=rect;
	
	//next image!!!
	rect=imagePlayer2.frame;
	//setsize
	rect.size.width=25;
	rect.size.height=25;
	//set position
	rect.origin.x=5;
	rect.origin.y=330;
	imagePlayer2.frame=rect;
	
	//add the images to the base image!!!!
	[imageBackground addSubview:imagePlayer1];
	[imageBackground addSubview:imagePlayer2];
	
	turn=turnPlayer1;
	
}


/*
// Override to allow orientations other than the default portrait orientation.
- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation {
    // Return YES for supported orientations.
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}
*/

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
	[imageBackground release];
	[imagePlayer1 release];
	[imagePlayer2 release];
	[backButton release];
	[bRoll release];
}

#pragma mark -
#pragma mark action handlers!!!!

//action handlers!!!
-(IBAction) backButton{
	[self dismissModalViewControllerAnimated:YES];
}


#pragma mark -
#pragma mark gameplay related methods!!!!

-(IBAction) touchHandler{	
	int random=rand()%6;
	if (turn==turnPlayer1) {
		[self changePosition:p1pos byNumber:random withPlayerTurn:turnPlayer1];
		NSLog(@"player 1 turn");
		turn=turnPlayer2;
	} else if (turn==turnPlayer2){
		[self changePosition:p2pos byNumber:random withPlayerTurn:turnPlayer2];
		NSLog(@"Player 2 turn");
		turn=turnPlayer1;
	}
	NSLog(@"random : %d",random+1);
}

-(void) changePosition:(int)_fromIndex byNumber:(int)num withPlayerTurn:(playerTurn)_playerTurn {
	
	if (_playerTurn==turnPlayer1) {
		for (int i=0;i<=num;i++) {
			p1pos++;
			if (p1pos%10==0) {
				CGRect rect=imagePlayer1.frame;
				rect.origin.y=rect.origin.y-36;
				imagePlayer1.frame=rect;
				//NSLog(@"in third part");
			}else if (((p1pos/10)%2)==0 && (p1pos%10)!=0) {
				CGRect rect=imagePlayer1.frame;
				rect.origin.x=rect.origin.x+32;
				imagePlayer1.frame=rect;
				//NSLog(@"in first part");
			}else if (((p1pos/10)%2!=0 && (p1pos!=10)) && (p1pos)!=0) {
				CGRect rect=imagePlayer1.frame;
				rect.origin.x=rect.origin.x-32;
				imagePlayer1.frame=rect;
				//NSLog(@"in second part");
			}
		}
	}
	
	else if (_playerTurn==turnPlayer2) {
		for (int i=0;i<=num;i++) {
			p2pos++;
			if (p2pos%10==0) {
				CGRect rect=imagePlayer2.frame;
				rect.origin.y=rect.origin.y-36;
				imagePlayer2.frame=rect;
				//NSLog(@"in third part");
			}else if (((p2pos/10)%2)==0 && (p2pos%10)!=0) {
				CGRect rect=imagePlayer2.frame;
				rect.origin.x=rect.origin.x+32;
				imagePlayer2.frame=rect;
				//NSLog(@"in first part");
			}else if (((p2pos/10)%2!=0 && (p2pos!=10)) && (p2pos)!=0) {
				CGRect rect=imagePlayer2.frame;
				rect.origin.x=rect.origin.x-32;
				imagePlayer2.frame=rect;
				//NSLog(@"in second part");
			}
		}
	}
}

	

@end
