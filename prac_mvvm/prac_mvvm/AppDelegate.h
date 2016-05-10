//
//  AppDelegate.h
//  prac_mvvm
//
//  Created by lee taejun on 2016. 5. 10..
//  Copyright © 2016년 lee taejun. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "presentations/PresentationsVC.h"

@interface AppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;
@property (strong, nonatomic) UINavigationController *navigationController;
@property (strong, nonatomic) PresentationsVC *presentationsVC;

@end

