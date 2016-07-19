//
//  UIButton+Extension.h
//  LNTool
//
//  Created by cong on 16/7/19.
//  Copyright © 2016年 lin. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIButton (Extension)

// 普通模式按钮
+ (instancetype)buttonWithTitle:(NSString *)title titleColor:(UIColor *)titleColor imageName:(NSString *)imageName Target:(UIViewController *)target event:(SEL)event;

// 带高亮模式
+ (instancetype)buttonWithTitle:(NSString *)title titleColor:(UIColor *)titleColor imageName:(NSString *)imageName highLightImgName:(NSString *)highLightImgName Target:(UIViewController *)target  event:(SEL)event;

@end
