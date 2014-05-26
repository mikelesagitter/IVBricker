//
//  ViewDesigner.m
//  IVBricker
//
//  Created by Michele Giarratana on 18/02/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import "ViewDesigner.h"
@class Ball;

@implementation ViewDesigner

@synthesize jeu;

- (id)initWithFrame:(CGRect)frame {
    if ((self = [super initWithFrame:frame])) {
        // Initialization code
    }
    return self;
}

-(void)setJeu:(Game *) jeu_{
	jeu = jeu_;
}

// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
	
	CGContextRef context = UIGraphicsGetCurrentContext();
	[jeu draw:context];
}


- (void)dealloc {
    [super dealloc];
}


@end
