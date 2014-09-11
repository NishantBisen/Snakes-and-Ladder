//
//  Person.h
//  SnakesAndLadders
//
//  Created by wimc on 16/05/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>


@interface Person : NSObject {
	NSString *name;
	NSString *imageFile;
}

@property (nonatomic,retain) NSString* name;
@property (nonatomic,retain) NSString* imageFile;

//custiom initializer!!!!
-(id) initWithName:(NSString*)_name withImage:(NSString*)_imageFile;
//print method!!!
-(void) printInfo;

//database methods!!!
+(void) loadDataToArray;
-(void) savePersonToDatabase;

@end
