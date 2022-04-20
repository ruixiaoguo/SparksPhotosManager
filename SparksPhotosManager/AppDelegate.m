//
//  AppDelegate.m
//  SparksPhotosManager
//
//  Created by GRX on 2022/4/20.
//

#import "AppDelegate.h"
#import "RootViewController.h"
@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    self.window = [[UIWindow alloc] initWithFrame:[UIScreen mainScreen].bounds];
    self.window.backgroundColor = [UIColor whiteColor];
    [self.window makeKeyAndVisible];
    RootViewController *rootView = [[RootViewController alloc]init];
    self.window.rootViewController = rootView;
    return YES;
}



@end
