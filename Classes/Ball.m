//
//  ball.m
//  IVBricker
//
//  Created by Michele Giarratana on 01/02/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import "ball.h"

@implementation Ball

-(float) getVx{ return vx; }
-(void) setVx: (float)vx_ { vx = vx_ ; }

-(float) getVy{ return vy; }
-(void) setVy: (float)vy_ { vy = vy_ ; }


-(id) init: (Game*) game andPosition: (float) x : (float) y {
	
	[super initWithPNGFileName: [[[NSBundle mainBundle] pathForResource:@"ball" ofType:@"png" inDirectory:@"/"] cStringUsingEncoding:NSUTF8StringEncoding] andGame:game andCGRect:CGRectMake(x,y,16,16)];
	
	[game addToTimer : self] ;
	
	animationInterval = 1.0 / 30.0; 
	
	return self ;
}

- (bool) timer: (Game*) game{ 
	
	imageRect.origin.x += vx ;
	imageRect.origin.y += vy ;
	
	return true;
}


-(void)invertVx{
	vx = -vx ;
}

-(void)invertVy{
	vy = -vy ; 
}

@end
