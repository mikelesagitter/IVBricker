//
//  MoreBetterAnimation.h
//  IVBricker
//
//  Created by Michele Giarratana on 02/03/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <QuartzCore/CADisplayLink.h>

@interface MoreBetterAnimations : UIImageView { 
	int _frameCounter; 
	int _repeatCounter; 
	NSTimeInterval _timeElapsed;
	CADisplayLink *_displayLink;
}

@property (nonatomic, readwrite) NSInteger frameInterval;
@end
