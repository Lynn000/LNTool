//
//  UILabel+Extension.m
//  LNTool
//
//  Created by cong on 16/7/19.
//  Copyright © 2016年 lin. All rights reserved.
//

#import "UILabel+Extension.h"

@implementation UILabel (Extension)

+ (instancetype)labelWithText:(NSString *)text fontSize:(CGFloat)fontSize textColor:(UIColor *)textColor isSingleLine:(BOOL)isSingleLine isAlignCenter:(BOOL)isAlignCenter{
    
    UILabel *label = [[UILabel alloc]init];
    
    label.text = text;
    if (fontSize != 0) {
        label.font = [UIFont systemFontOfSize:fontSize];
    }
    
    if (textColor != nil) {
        label.textColor = textColor;
    }
    
    if (!isSingleLine) {
        label.numberOfLines = 0;
    }
    
    if (isAlignCenter) {
        label.textAlignment = NSTextAlignmentCenter;
    }
    
    return label;
}

@end
