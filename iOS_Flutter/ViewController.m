//
//  ViewController.m
//  iOS_Flutter
//
//  Created by 柯磊 on 2020/10/29.
//

#import "ViewController.h"
#import "AppDelegate.h"

static NSString *CHANNEL_NATIVE = @"com.example.flutter/native";
static NSString *CHANNEL_FLUTTER = @"com.example.flutter/flutter";

@interface ViewController ()
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    UIButton *presentButton = [UIButton buttonWithType:UIButtonTypeSystem];
    [presentButton setTitle:@"present flutterVC" forState:UIControlStateNormal];
    [presentButton sizeToFit];
    presentButton.center = self.view.center;
    [presentButton addTarget:self action:@selector(buttonAction) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:presentButton];
    
    UIButton *pushButton = [UIButton buttonWithType:UIButtonTypeSystem];
    [pushButton setTitle:@"push flutterCV" forState:UIControlStateNormal];
    [pushButton sizeToFit];
    pushButton.center = CGPointMake(presentButton.center.x, presentButton.center.y + presentButton.frame.size.height / 2.0 + pushButton.frame.size.height / 2.0);
    [pushButton addTarget:self action:@selector(button2Action) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:pushButton];
}

- (void)buttonAction {
    FlutterViewController *flutterViewController = [[FlutterViewController alloc] initWithEngine:AppDelegate.shared.flutterEngine nibName:nil bundle:nil];
    [self presentViewController:flutterViewController animated:YES completion:nil];
}

- (void)button2Action {
    FlutterViewController *flutterViewController = [[FlutterViewController alloc] init];
    [self.navigationController pushViewController:flutterViewController animated:YES];
}

@end
