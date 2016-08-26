//
//  ViewController.m
//  ZXYHUD_Demo
//
//  Created by Rockeen on 16/8/26.
//  Copyright © 2016年 rockeen. All rights reserved.
//

#import "ViewController.h"
#import "UIViewController+ZXYHUD.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
//    [self zxy_showHint:@"321" inView:self.view];
    
    [self zxy_showHudInView:self.view hint:@"213123"];
    
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
