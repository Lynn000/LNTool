//
//  NSString+LNStringTool.h
//  LNTool
//
//  Created by cong on 16/5/2.
//  Copyright © 2016年 lin. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface NSString (Tool)

// MARK: -获取字符串大小
- (CGSize)textSizeWithMaxSize:(CGSize)maxSize TextFont:(UIFont *)font;

// MARK: -高亮文本
- (NSAttributedString *)highLightStringWithString:(NSString *)highLightString andColor:(UIColor *)highLightColor;

// MARK: -根据地址 获得在沙盒中缓存目录的地址
- (NSString *)fileInCachesAddress;

// MARK: -根据地址 获得在沙盒中document的地址
- (NSString *)fileInDocumentAddress;

@end
