//
//  AboutScreenViewController.h
//  SnakesAndLadders
//
//  Created by wimc on 16/05/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>


@interface AboutScreenViewController : UIViewController {
	IBOutlet UILabel *lAbout,*lCreatedBy,*lName1, *lName2;
	IBOutlet UITextView *tAbout;
	IBOutlet UIButton *bBack;
}

//action handler for the back button....
-(IBAction) backToMain;
@end
