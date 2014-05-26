//
//  IVBrickerViewController.h
//  IVBricker
//
//  Created by Michele Giarratana on 11/01/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Game.h"
#import "GameElement.h"
#import "GEImage.h"
#import "VerticalBorder.h"
#import "HorizontalBorder.h"

@interface IVBrickerViewController : UIViewController <UIAccelerometerDelegate> { 
	UIImageView *paddle;
	float touchOffset; //Contient la valeur du deplacement du doight sur l'écran
	Game* game ; // Instance du jeu
	CADisplayLink *theTimer;
} 

- (void) onTimer ;

@property (nonatomic, retain) IBOutlet UIImageView *paddle;


@end

