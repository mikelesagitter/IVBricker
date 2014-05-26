//
//  ball.h
//  IVBricker
//
//  Created by Michele Giarratana on 01/02/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "GEImage.h"

@interface Ball : GEImage {
	float vx, vy;
	NSTimer * theTimer;
	NSTimeInterval animationInterval;
}


-(id) init: (Game*) game andPosition: (float) x : (float) y ;
-(bool) timer: (Game*) g;

- (void)invertVx;
- (void)invertVy;

-(float) getVx;
-(void) setVx: (float)vx_;

-(float) getVy;
-(void) setVy: (float)vy_;

@end
