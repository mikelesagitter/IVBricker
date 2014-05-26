//
//  Game.m
//  IVBricker
//
//  Created by Michele Giarratana on 31/01/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import "Game.h"
#import "Ball.h"

@implementation Game

@synthesize drawArr;
@synthesize timerArr;

-(id) init {
	[super init];
	score = 0;
	lives = 3;
	
	drawArr = [[NSMutableArray alloc] initWithCapacity:1000];
	timerArr = [[NSMutableArray alloc] initWithCapacity:1000];

	return self;
}

-(void) addToDraw: (GameElement *) element {
	
	[drawArr addObject:element] ;
}


-(void) detachFromDraw: (GameElement *) element {
	
	[drawArr removeObject: element];
}

-(void) addToTimer: (GameElement *) element {
	
	[timerArr addObject:element] ;
}


-(void) detachFromTimer: (GameElement *) element {
	
	[timerArr removeObject: element];
}

-(void) draw: (CGContextRef) gc{
	GameElement* element ;
		
	for( element in drawArr )
	{
		[element draw:(CGContextRef) gc];
	}
}

-(bool) timer {
	
	GameElement* element ;
	bool result = false;
	
	for( element in timerArr )
		{
			if ( [element timer: self] ) result = true;
		}
	
	return result;
}

-(bool) collisionWith: (Game *)game andElement: (GameElement *)element{

	bool result = false ;
	
	for (int i = 0; i<1000; i++) {
		if ([timerArr objectAtIndex:i]) {
			if ([[timerArr objectAtIndex:i] collisionWith:self andElement:element]) {
				result = true;
			}
		}
	}

	return false;
	
}


-(void)pauseGame{
	[theTimer invalidate];
	theTimer = nil;
}
					  
@end
