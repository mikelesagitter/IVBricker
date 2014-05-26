//
//  IVBrickerViewController.m
//  IVBricker
//
//  Created by Michele Giarratana on 11/01/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import "IVBrickerViewController.h" 
#import "Ball.h"
#import "ViewDesigner.h"


@implementation IVBrickerViewController 


@synthesize paddle;


- (void)dealloc {
	[paddle release];
	[super dealloc];
	
}

- (void)viewDidLoad {
	[super viewDidLoad]; 
	
	UIAccelerometer *theAccel = [UIAccelerometer sharedAccelerometer]; 
	theAccel.updateInterval = 1.0f / 30.0f; 
	theAccel.delegate = self;

	
	game = [[Game alloc] init];
	
	
	Ball* balle = [[Ball alloc] init: game andPosition: 100 : 100 ] ; 
	[balle setVx: 2.0];
	[balle setVy: 2.0];
	
	VerticalBorder* bGauche= [[VerticalBorder alloc] initWithGame:game andXStart:2 andYStart:2 andXEnd:2 andYEnd:478];
	VerticalBorder* bDroit= [[VerticalBorder alloc] initWithGame:game andXStart:318 andYStart:2 andXEnd:318 andYEnd:478];
	
	[game draw:UIGraphicsGetCurrentContext()];
	
	[(ViewDesigner*)self.view setJeu: game];
	[self onTimer];
	
}

- (void) onTimer
{
	if( [game timer] ) {
		[(ViewDesigner*)self.view setNeedsDisplayInRect:CGRectMake(0, 0, 320, 480)];
	}
	
	[self performSelector:@selector(onTimer) withObject:nil afterDelay:0.01];
}


//// METHODES RELATIVES AU MOUVEMENT DU PADDLE L'ACCELEROMETRE ////

- (void) accelerometer:(UIAccelerometer *)accelerometer didAccelerate:(UIAcceleration *)accel
{
float newX = paddle.center.x + (accel.x * 50); 
	
	if(newX > 30 && newX < 290)
		paddle.center = CGPointMake( newX, paddle.center.y );
}




//// METHODES RELATIVES AU MOUVEMENT DU PADDLE AVEC LE TOUCHE' ////

- (void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event //Appellé au touché sur l'écran
{ 
		
		UITouch *touch = [[event allTouches] anyObject]; //On alloue une instance d'objet UITouch
		touchOffset = paddle.center.x - [touch locationInView:touch.view].x; //et on soustrait sa valeur x au point central de la raclette sur l'axe x

}


- (void)touchesMoved:(NSSet *)touches withEvent:(UIEvent *)event //Appellé lorse que l'utilisateur glisse son doight
{ 
		
	UITouch *touch = [[event allTouches] anyObject]; 
	
	float distanceMoved = ([touch locationInView:touch.view].x + touchOffset) - paddle.center.x; //On calcule la distance entre le centre du paddle et la position du doight
	float newX = paddle.center.x + distanceMoved;  //et on la rajoute à la position de depart
	if (newX > 30 && newX < 290)
		paddle.center = CGPointMake( newX, paddle.center.y ); 
	if (newX > 290)
		paddle.center = CGPointMake( 290, paddle.center.y ); 
	if (newX < 30)
		paddle.center = CGPointMake( 30, paddle.center.y );
		
}

/*
// The designated initializer. Override to perform setup that is required before the view is loaded.
- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil {
    if ((self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil])) {
        // Custom initialization
    }
    return self;
}
*/

/*
// Implement loadView to create a view hierarchy programmatically, without using a nib.
- (void)loadView {
}
*/


// Implement viewDidLoad to do additional setup after loading the view, typically from a nib.


/*
// Override to allow orientations other than the default portrait orientation.
- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation {
    // Return YES for supported orientations
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}
*/

- (void)didReceiveMemoryWarning {
	// Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
	
	// Release any cached data, images, etc that aren't in use.
}

- (void)viewDidUnload {
	// Release any retained subviews of the main view.
	// e.g. self.myOutlet = nil;
}


@end
