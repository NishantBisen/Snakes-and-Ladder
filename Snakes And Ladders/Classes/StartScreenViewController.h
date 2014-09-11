//
//  StartScreenViewController.h
//  SnakesAndLadders
//
//  Created by wimc on 16/05/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@class AboutScreenViewController;
@class GameScreenViewController;
@interface StartScreenViewController : UIViewController {
	
	IBOutlet UIButton *bNewGame,*bAbout,*bHelp,*bOptions;
	IBOutlet UIView *viewLandscape,*viewProtrait;
	IBOutlet UILabel *lHelp;
	IBOutlet UITextView *tHelp;
	
	//view controllers!!!
	AboutScreenViewController *about;
	GameScreenViewController *gameScreen;
}

//action Handlers for the buttons!!!!
-(IBAction) buttonNewGame;
-(IBAction) buttonHelp;
-(IBAction) buttonAbout;
-(IBAction) buttonOptions;


@end
