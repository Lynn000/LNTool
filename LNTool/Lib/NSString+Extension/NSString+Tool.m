//
//  NSString+LNStringTool.m
//  LNTool
//
//  Created by cong on 16/5/2.
//  Copyright © 2016年 lin. All rights reserved.
//

#import "NSString+Tool.h"

@implementation NSString (Tool)

// MARK: - 获取字符串大小
-(CGSize)textSizeWithMaxSize:(CGSize)maxSize TextFont:(UIFont*)font{
    return [self boundingRectWithSize:maxSize options:NSStringDrawingUsesLineFragmentOrigin attributes:@{NSFontAttributeName:font} context:nil].size;
}

// MARK: - 高亮文本
- (NSAttributedString *)highLightStringWithString:(NSString *)highLightString andColor:(UIColor *)highLightColor{
    //定义文本属性
    NSMutableAttributedString *attrStr = [[NSMutableAttributedString alloc]initWithString:self];
    //获得高亮范围
    NSRange highLightRange = [self rangeOfString:highLightString];
    //添加高亮属性
    [attrStr addAttribute:NSForegroundColorAttributeName value:highLightColor range:highLightRange];
    return attrStr;
}

// MARK: - 获得在缓存中的地址
- (NSString *)fileInCachesAddress{
    
    NSString *cachesPath = NSSearchPathForDirectoriesInDomains(NSCachesDirectory, NSUserDomainMask, YES).lastObject;
    
    return [cachesPath stringByAppendingPathComponent:self.lastPathComponent];
    
}

// MARK: - 获得在Document中的地址
- (NSString *)fileInDocumentAddress{
    
    NSString *documentPath = NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES).lastObject;
    
    return [documentPath stringByAppendingPathComponent:self.lastPathComponent];
}


@end
