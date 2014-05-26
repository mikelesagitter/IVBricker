//
//  IVBrickerAppDelegate.h
//  IVBricker
//
//  Created by Michele Giarratana on 11/01/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@class IVBrickerViewController;

@interface IVBrickerAppDelegate : NSObject <UIApplicationDelegate> {
    UIWindow *window;
    IVBrickerViewController *viewController;
}

@property (nonatomic, retain) IBOutlet UIWindow *window;
@property (nonatomic, retain) IBOutlet IVBrickerViewController *viewController;

@end

