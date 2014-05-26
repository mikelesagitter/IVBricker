//
//  ViewDesigner.h
//  IVBricker
//
//  Created by Michele Giarratana on 18/02/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
@class Game;

@interface ViewDesigner : UIView {
	Game* jeu;
}

@property(assign, nonatomic, getter=setJeu) Game* jeu;
@end
