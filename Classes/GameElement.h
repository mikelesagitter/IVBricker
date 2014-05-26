//
//  GameElement.h
//  IVBricker
//
//  Created by Michele Giarratana on 31/01/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Game.h"

@interface GameElement : NSObject {
}

-(id) init;
-(void) draw: (CGContextRef) gc ;
-(bool) timer: (Game*) g;
-(bool) collisionWith: (Game *)game andElement: (GameElement *)element;
-(bool) containsPix: (float)x andY: (float)y;

@end
