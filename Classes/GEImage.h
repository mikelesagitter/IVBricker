//
//  GEImage.h
//  IVBricker
//
//  Created by Michele Giarratana on 03/02/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "GameElement.h"

@interface GEImage : GameElement {
	CGRect		imageRect ;
	CGImageRef  image;
}
-(id) init;
-(id) initWithPNGFileName:(const char*) filename andGame: (Game*) game andCGRect: (CGRect) imagerect_ ;
-(void) draw: (CGContextRef) gc ;
-(bool) containsPix: (float)x andY: (float)y;

-(float) getX ;
-(void) setX: (float)x_;

-(float) getY;
-(void) setY: (float)y_;

@end
