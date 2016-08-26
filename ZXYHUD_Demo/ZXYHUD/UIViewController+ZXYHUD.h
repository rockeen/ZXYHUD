//
//  UIViewController+ZXYHUD.h
//  ZXYHUD_Demo
//
//  Created by Rockeen on 16/8/26.
//  Copyright © 2016年 rockeen. All rights reserved.
//

/*
 ----------------------------------------------------
 ZXYHUD用法简介：
 1.导入MBProgressHUD框架
 2.在想要添加的view或者vc上调用    [self zxy_showHint:@"321" inView:self.view];
 ---------------------------------------------------
 */

#import <UIKit/UIKit.h>
#import "MBProgressHUD.h"

@interface UIViewController (ZXYHUD)
/** HUD */
@property (nonatomic, weak, readonly) MBProgressHUD *HUD;
/**
 *  提示信息
 *
 *  @param view 显示在哪个view
 *  @param hint 提示
 */
- (void)zxy_showHudInView:(UIView *)view hint:(NSString *)hint;
- (void)zxy_showHudInView:(UIView *)view hint:(NSString *)hint yOffset:(float)yOffset;
/**
 *  隐藏
 */
- (void)zxy_hideHud;

/**
 *  提示信息 mode:MBProgressHUDModeText
 *
 *  @param hint 提示
 */
- (void)zxy_showHint:(NSString *)hint;
- (void)zxy_showHint:(NSString *)hint inView:(UIView *)view;

// 从默认(showHint:)显示的位置再往上(下)yOffset
- (void)zxy_showHint:(NSString *)hint yOffset:(float)yOffset;

@end
