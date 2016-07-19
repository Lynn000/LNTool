//
//  UILabel+Extension.h
//  LNTool
//
//  Created by cong on 16/7/19.
//  Copyright © 2016年 lin. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UILabel (Extension)

// 快速创建label
+ (instancetype)labelWithText:(NSString *)text fontSize:(CGFloat)fontSize textColor:(UIColor *)textColor isSingleLine:(BOOL)isSingleLine isAlignCenter:(BOOL)isAlignCenter;

@end
