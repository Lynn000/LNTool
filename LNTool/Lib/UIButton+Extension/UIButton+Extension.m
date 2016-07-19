//
//  UIButton+Extension.m
//  LNTool
//
//  Created by cong on 16/7/19.
//  Copyright © 2016年 lin. All rights reserved.
//

#import "UIButton+Extension.h"

@implementation UIButton (Extension)

// MARK: - 普通模式
+ (instancetype)buttonWithTitle:(NSString *)title titleColor:(UIColor *)titleColor imageName:(NSString *)imageName Target:(UIViewController *)target event:(SEL)event{
    
    return [self buttonWithTitle:title titleColor:titleColor imageName:imageName highLightImgName:nil Target:target event:event];
}

// MARK: - 高亮模式
+ (instancetype)buttonWithTitle:(NSString *)title titleColor:(UIColor *)titleColor imageName:(NSString *)imageName highLightImgName:(NSString *)highLightImgName Target:(UIViewController *)target event:(SEL)event{
    
    UIButton *button = [UIButton buttonWithType:UIButtonTypeCustom];
    
    if (title != nil) {
        [button setTitle:title forState:UIControlStateNormal];
    }
    
    if (titleColor != nil) {
        [button setTitleColor:titleColor forState:UIControlStateNormal];
    }else{
        [button setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    }
    
    if (imageName != nil) {
        [button setImage:[UIImage imageNamed:imageName] forState:UIControlStateNormal];
    }
    
    if (highLightImgName != nil) {
        [button setImage:[UIImage imageNamed:highLightImgName] forState:UIControlStateHighlighted];
    }
    
    if (target != nil) {
        [button addTarget:target action:event forControlEvents:UIControlEventTouchUpInside];
    }
    
    return button;
}

@end
