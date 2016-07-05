//
//  AppDelegate.m
//  prac_multiple_cell_self_sizing
//
//  Created by leetaejun on 2016. 7. 5..
//  Copyright © 2016년 leetaejun. All rights reserved.
//

#import "AppDelegate.h"
#import "MainViewController.h"

@interface AppDelegate ()

@end

@implementation AppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    UINavigationController *navigationController = [[UINavigationController alloc] initWithRootViewController:[[MainViewController alloc] initWithNibName:@"MainViewController" bundle:nil]];
    self.window = [UIWindow new];
    self.window.rootViewController = navigationController;
    [self.window makeKeyAndVisible];
    
    self.window.frame = [UIScreen mainScreen].bounds;
    
    return YES;
}

- (void)applicationWillResignActive:(UIApplication *)application {
}

- (void)applicationDidEnterBackground:(UIApplication *)application {
}

- (void)applicationWillEnterForeground:(UIApplication *)application {
}

- (void)applicationDidBecomeActive:(UIApplication *)application {
}

- (void)applicationWillTerminate:(UIApplication *)application {
}

@end
