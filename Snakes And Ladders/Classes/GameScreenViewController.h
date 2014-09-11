//
//  GameScreenViewController.h
//  SnakesAndLadders
//
//  Created by wimc on 16/05/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

//definations to improve the redability!!!
//player turn selector!!!
#define playerTurn BOOL
#define turnPlayer1 YES
#define turnPlayer2 NO

@interface GameScreenViewController : UIViewController {
	//datamembers related to the gameplay!!!!
	//hold the position of the players!!!
	int p1pos,p2pos;
	//flags to hold the player turn!!!
	playerTurn turn; 
	
	//image for the background!!!!
	IBOutlet UIImageView *imageBackground;
	//player images!!!!
	IBOutlet UIImageView *imagePlayer1,*imagePlayer2;
	//buttons!!!!
	IBOutlet UIButton *backButton,*bRoll;
}

//position calculator!!!
-(void) changePosition:(int)_fromIndex byNumber:(int)num withPlayerTurn:(playerTurn)_playerTurn;
//action handlers!!!
-(IBAction) backButton;
-(IBAction) touchHandler;

//custom init methods for the game screen!!!!

@end
