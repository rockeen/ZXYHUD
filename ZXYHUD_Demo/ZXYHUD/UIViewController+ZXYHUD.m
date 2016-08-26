//
//  UIViewController+ZXYHUD.m
//  ZXYHUD_Demo
//
//  Created by Rockeen on 16/8/26.
//  Copyright © 2016年 rockeen. All rights reserved.
//

#import "UIViewController+ZXYHUD.h"
#import <objc/runtime.h>

static const void *HUDKey = &HUDKey;

@implementation UIViewController (ZXYHUD)
#pragma mark - 动态绑定HUD属性
- (MBProgressHUD *)HUD
{
    return objc_getAssociatedObject(self, HUDKey);
}

- (void)setHUD:(MBProgressHUD * _Nullable)HUD
{
    objc_setAssociatedObject(self, HUDKey, HUD, OBJC_ASSOCIATION_RETAIN_NONATOMIC);
}

#pragma mark - 方法实现

- (void)zxy_showHudInView:(UIView *)view hint:(NSString *)hint{
    MBProgressHUD *HUD = [[MBProgressHUD alloc] initWithView:view];
    HUD.labelText = hint;
    [view addSubview:HUD];
    [HUD show:YES];
    [self setHUD:HUD];
}

- (void)zxy_showHudInView:(UIView *)view hint:(NSString *)hint yOffset:(float)yOffset{
    MBProgressHUD *HUD = [[MBProgressHUD alloc] initWithView:view];
    HUD.labelText = hint;
    HUD.margin = 10.f;
    HUD.yOffset += yOffset;
    [view addSubview:HUD];
    [HUD show:YES];
    [self setHUD:HUD];
}

- (void)zxy_showHint:(NSString *)hint
{
    //显示提示信息
    UIView *view = [[UIApplication sharedApplication].delegate window];
    MBProgressHUD *hud = [MBProgressHUD showHUDAddedTo:view animated:YES];
    hud.userInteractionEnabled = NO;
    hud.mode = MBProgressHUDModeText;
    hud.labelText = hint;
    hud.margin = 10.f;
    hud.removeFromSuperViewOnHide = YES;
    [hud hide:YES afterDelay:2];
}

- (void)zxy_showHint:(NSString *)hint inView:(UIView *)view
{
    //显示提示信息
    MBProgressHUD *hud = [MBProgressHUD showHUDAddedTo:view animated:YES];
    [view addSubview:hud];
    hud.userInteractionEnabled = NO;
    hud.mode = 	MBProgressHUDModeText;
    hud.labelText = hint;
    hud.margin = 10.f;
    hud.removeFromSuperViewOnHide = YES;
    [hud show:YES];
    [hud hide:YES afterDelay:2];
}

- (void)zxy_showHint:(NSString *)hint yOffset:(float)yOffset {
    //显示提示信息
    UIView *view = [[UIApplication sharedApplication].delegate window];
    MBProgressHUD *hud = [MBProgressHUD showHUDAddedTo:view animated:YES];
    hud.userInteractionEnabled = NO;
    hud.mode = MBProgressHUDModeText;
    hud.labelText = hint;
    hud.margin = 10.f;
    hud.yOffset += yOffset;
    hud.removeFromSuperViewOnHide = YES;
    [hud hide:YES afterDelay:2];
}

- (void)zxy_hideHud{
    [[self HUD] hide:YES];
}


@end
