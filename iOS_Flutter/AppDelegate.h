//
//  AppDelegate.h
//  iOS_Flutter
//
//  Created by 柯磊 on 2020/10/29.
//

#import <UIKit/UIKit.h>
#import <Flutter/Flutter.h>

@interface AppDelegate : FlutterAppDelegate

@property (nonatomic, strong) FlutterEngine *flutterEngine;

+ (instancetype)shared;

@end

