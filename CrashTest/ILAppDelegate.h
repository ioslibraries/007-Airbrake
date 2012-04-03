//
//  ILAppDelegate.h
//  CrashTest
//
//  Created by jeremy Templier on 29/03/12.
//  Copyright (c) 2012 particulier. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ABNotifier.h"

@class ILTestViewController;
@interface ILAppDelegate : UIResponder <UIApplicationDelegate, ABNotifierDelegate>

@property (strong, nonatomic) UIWindow *window;
@property (strong, nonatomic) ILTestViewController* viewController;
@end
