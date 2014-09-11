//
//  Person.m
//  SnakesAndLadders
//
//  Created by wimc on 16/05/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import "Person.h"


@implementation Person

@synthesize name,imageFile;

#pragma mark -
#pragma mark database related methods nad data!!!
//static array to save all people!!!
NSMutableArray *personData;

+(void) loadDataToArray{
}

-(void)savePersonToDatabase{
}


#pragma mark -
#pragma mark person related methods!!!

//custom initializer!!!
-(id) initWithName:(NSString*)_name withImage:(NSString*)_imageFile{
	self=[super init];
	if(self){
		self.name=_name;
		self.imageFile=imageFile;
	}
	return self;
}

//print info about theperson!!!
-(void) printInfo{
	NSLog(@"Name : %@",name);
	NSLog(@"ImageFile : %@",imageFile);
}

@end
