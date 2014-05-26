//
//  GameElement.m
//  IVBricker
//
//  Created by Michele Giarratana on 31/01/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import "GameElement.h"


@implementation GameElement


-(id) init {
	[super init];
	return self;
}


-(void) draw: (CGContextRef) gc ;
{


}

		 
		 
-(bool) timer: (Game*) game {
			 
	return false;
	
}

		 
		 
-(bool) containsPix: (float)x andY: (float)y{

	return false;
	
}


	
-(bool) collisionWith: (Game *)game andElement: (GameElement *)element{
	
	return false;
	
}
						  
@end
