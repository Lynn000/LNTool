//
//  NSArray+NSArray_Log.m
//  LNTool
//
//  Created by cong on 16/7/1.
//  Copyright © 2016年 lin. All rights reserved.
//

#import "NSArray+NSArray_Log.h"

@implementation NSArray (NSArray_Log)

- (NSString *)descriptionWithLocale:(id)locale
{
    NSMutableString *strM = [NSMutableString stringWithString:@"(\n"];
    
    [self enumerateObjectsUsingBlock:^(id obj, NSUInteger idx, BOOL *stop) {
        [strM appendFormat:@"\t%@,\n", obj];
    }];
    
    [strM appendString:@")"];
    
    return strM.copy;
}

@end
