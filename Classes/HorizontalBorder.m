//
//  HorizontalBorder.m
//  IVBricker
//
//  Created by Michele Giarratana on 08/02/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import "HorizontalBorder.h"


@implementation HorizontalBorder
@class Ball;

@synthesize x;
@synthesize y;
@synthesize width;


-(id)init{
	[super init];
	x = 0;
	y = 0;
	width = 0;
	return self;
}

-(id) initWithGame: (Game*) game andXStart:(float)xs_ andYStart:(float)ys_ andXEnd:(float)xe_ andYEnd:(float)ye_{
	[super init];
	xStart = xs_;
	yStart = ys_;
	xEnd = xe_;
	yEnd = ye_;
	[game addToDraw:self];
	return self;
}

- (void) draw: (CGContextRef) gc
{		
	CGFloat black[4] = {0.0f, 0.0f, 0.0f, 1.0f}; // R G B + Alpha
	CGContextSetStrokeColor(gc, black); //Definie la couleur
	CGContextBeginPath(gc); //Commence à dessiner la ligne
	CGContextMoveToPoint(gc, xStart, yStart); //à Partir de x y
	CGContextAddLineToPoint(gc, xEnd, yEnd );//Jusqu'à x y
	CGContextStrokePath(gc);
}

-(bool) containsPix: (float)x_ andY: (float)y_
{
	if( y-3 > y_ || y+3 < y_ ) return false ;
	if( x_ < x || x_ > x + width) return false ;
	
	return true ;
}

- (bool) collisionwith:(GameElement*)element {
	
    //if ([element isKindOfClass:[Balle class]]) {
//        [element invertVy];
//        return true;
//    }
     return false;
}

@end
