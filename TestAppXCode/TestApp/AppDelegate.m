//
//  AppDelegate.m
//  TestApp
//
//  Created by lucian on 4/17/13.
//  Copyright (c) 2013 lucian. All rights reserved.
//

#import "AppDelegate.h"

#import "AppDelegateImpl.h"

@implementation AppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    self.appDelegateImpl = [[AppDelegateImpl alloc] init];
    return [self.appDelegateImpl application:application didFinishLaunchingWithOptions:launchOptions];
}

- (void)applicationWillResignActive:(UIApplication *)application
{
    [self.appDelegateImpl applicationWillResignActive:application];
}

- (void)applicationDidEnterBackground:(UIApplication *)application
{
    [self.appDelegateImpl applicationDidEnterBackground:application];
}

- (void)applicationWillEnterForeground:(UIApplication *)application
{
    [self.appDelegateImpl applicationWillEnterForeground:application];
}

- (void)applicationDidBecomeActive:(UIApplication *)application
{
    [self.appDelegateImpl applicationDidBecomeActive:application];
}

- (void)applicationWillTerminate:(UIApplication *)application
{
    [self.appDelegateImpl applicationWillTerminate:application];
}
@end
