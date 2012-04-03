//
//  ILAppDelegate.m
//  CrashTest
//
//  Created by jeremy Templier on 29/03/12.
//  Copyright (c) 2012 particulier. All rights reserved.
//

#import "ILAppDelegate.h"
#import "ABNotifier.h"
#import "ILTestViewController.h"

@implementation ILAppDelegate

@synthesize window = _window;
@synthesize viewController;

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    [ABNotifier startNotifierWithAPIKey:@"cd487dd09336ca6a49205af354228849" environmentName:ABNotifierAutomaticEnvironment useSSL:NO delegate:self];
    
    self.viewController = [[ILTestViewController alloc] initWithNibName:@"ILTestViewController" bundle:nil];
    
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    // Override point for customization after application launch.
    self.window.backgroundColor = [UIColor whiteColor];
    [self.window setRootViewController:self.viewController];
    
    [self.window makeKeyAndVisible];
    
    return YES;
}

- (void)applicationWillResignActive:(UIApplication *)application
{
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application
{
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later. 
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application
{
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application
{
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application
{
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

#pragma mark notifier airbreak

- (void)notifierWillDisplayAlert {
    // in a game, pause
}

- (void)notifierDidDismissAlert {
    
}

- (NSString *)titleForNoticeAlert {
    return @"iOSLibraries alert !!";
}
- (NSString *)bodyForNoticeAlert {
    return @"Oups, une erreur, il faut vite la regler.";
}


@end
