//
//  Game.h
//  IVBricker
//
//  Created by Michele Giarratana on 31/01/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>
@class GameElement;

@interface Game : NSObject {
	NSTimer *theTimer;
	NSMutableArray * drawArr ;
	NSMutableArray * timerArr ;

	int score;
	int lives;
	
}


-(void)pauseGame;
-(id) init;
-(void) draw: (CGContextRef) gc ;
-(bool) timer;
-(bool) collisionWith: (Game *)game andElement: (GameElement *)element;


-(void) addToDraw: (GameElement *) element ;
-(void) detachFromDraw: (GameElement *) element ;

-(void) addToTimer: (GameElement *) element ;
-(void) detachFromTimer: (GameElement *) element ;

@property (nonatomic, retain) NSMutableArray *timerArr ;
@property (nonatomic, retain) NSMutableArray *drawArr ;


@end
