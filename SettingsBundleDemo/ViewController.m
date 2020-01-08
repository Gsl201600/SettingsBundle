//
//  ViewController.m
//  SettingsBundleDemo
//
//  Created by Yostar on 2020/1/6.
//  Copyright © 2020 Yostar. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    // 获取SettingsBundle信息
    NSUserDefaults *userDefaults = [NSUserDefaults standardUserDefaults];
    
    NSLog(@"%@", [userDefaults objectForKey:@"title_identifier"]);
    NSLog(@"%@", [userDefaults objectForKey:@"multi_preference"]);

    NSLog(@"%@", [userDefaults objectForKey:@"url_preference"]);
    NSLog(@"%@", [userDefaults objectForKey:@"enabled_preference"]);
    NSLog(@"%@", [userDefaults objectForKey:@"slider_preference"]);
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
    NSUserDefaults *userDefaults = [NSUserDefaults standardUserDefaults];
    
    [userDefaults setObject:@"修改后" forKey:@"title_identifier"];
    NSLog(@"%@", [userDefaults objectForKey:@"title_identifier"]);
}

@end
