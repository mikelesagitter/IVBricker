//
//  GEImage.m
//  IVBricker
//
//  Created by Michele Giarratana on 03/02/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import "GEImage.h"


@implementation GEImage

- (void)dealloc {
	CGImageRelease (image) ;
	[super dealloc];
	
}

-(id) init{
	[super init];
	return self;
}

-(id) initWithPNGFileName:(const char*) filename andGame: (Game*) game andCGRect: (CGRect) imagerect_ {	
	
	[super init];
    CGDataProviderRef provider;
	provider = CGDataProviderCreateWithFilename(filename);
    image = CGImageCreateWithPNGDataProvider (provider, NULL, true, kCGRenderingIntentDefault);
	CGDataProviderRelease (provider);
	imageRect = imagerect_ ;
	[game addToDraw: self] ;
	
	return self ;
	
}


-(void) draw: (CGContextRef) gc
{
	CGContextDrawImage (gc, imageRect, image );
}

-(bool) containsPix: (float)x andY: (float)y{
	if( x < imageRect.origin.x ) return false ;
	if( y < imageRect.origin.y ) return false ;
	if( x > imageRect.origin.x + imageRect.size.width ) return false ;
	if( y > imageRect.origin.y + imageRect.size.height ) return false ;
	return true ;
}

-(float) getX { return imageRect.origin.x; }
-(void) setX: (float)x_ { imageRect.origin.x = x_ ; }

-(float) getY { return imageRect.origin.y; }
-(void) setY: (float)y_ { imageRect.origin.y = y_ ; }




@end
