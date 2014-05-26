//
//  HorizontalBorder.h
//  IVBricker
//
//  Created by Michele Giarratana on 08/02/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "GameElement.h"
#import "Ball.h"

@interface HorizontalBorder : GEImage {
	float xStart, yStart;
	float xEnd, yEnd;
}
	
-(id) init;	
-(id) initWithGame: (Game*) game andXStart:(float)xs_ andYStart:(float)ys_ andXEnd:(float)xe_ andYEnd:(float)ye_;
-(void) draw: (CGContextRef) gc ;
-(bool) collisionwith:(GameElement*)element;
-(bool) containsPix: (float)x andY: (float)y;
	
@property (nonatomic) float x;
@property (nonatomic) float y;
@property (nonatomic) float width;

@end
