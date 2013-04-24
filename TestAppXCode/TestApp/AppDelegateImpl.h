//
//  AppDelegateImpl.h
//  TestApp
//
//  Created by lucian on 4/17/13.
//  Copyright (c) 2013 lucian. All rights reserved.
//

#import <Foundation/Foundation.h>

@class ViewController;

@interface AppDelegateImpl : NSObject

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions;
- (void)applicationWillResignActive:(UIApplication *)application;
- (void)applicationDidEnterBackground:(UIApplication *)application;
- (void)applicationWillEnterForeground:(UIApplication *)application;
- (void)applicationDidBecomeActive:(UIApplication *)application;
- (void)applicationWillTerminate:(UIApplication *)application;

@property (strong, nonatomic) UIWindow *window;

@property (strong, nonatomic) ViewController *viewController;

@end
