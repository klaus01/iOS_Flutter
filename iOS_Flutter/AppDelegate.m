//
//  AppDelegate.m
//  iOS_Flutter
//
//  Created by 柯磊 on 2020/10/29.
//

#import "AppDelegate.h"
#import <FlutterPluginRegistrant/GeneratedPluginRegistrant.h>

static AppDelegate *_appDelegate;

@interface AppDelegate ()

@end

@implementation AppDelegate

+ (instancetype)shared {
    return _appDelegate;
}

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    BOOL result = [super application:application didFinishLaunchingWithOptions:launchOptions];
    
    _appDelegate = self;
    
    self.flutterEngine = [[FlutterEngine alloc] initWithName:@"com.flutter.engine.app"];
    [self.flutterEngine run];
    [GeneratedPluginRegistrant registerWithRegistry:self.flutterEngine];
    
    return result;
}

@end
