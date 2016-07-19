//
//  NSDictionary+NSDictionary_Log.m
//  LNTool
//
//  Created by cong on 16/7/1.
//  Copyright © 2016年 lin. All rights reserved.
//

#import "NSDictionary+NSDictionary_Log.h"

@implementation NSDictionary (NSDictionary_Log)

- (NSString *)descriptionWithLocale:(id)locale
{
    NSMutableString *strM = [NSMutableString stringWithString:@"{\n"];
    
    [self enumerateKeysAndObjectsUsingBlock:^(id key, id obj, BOOL *stop) {
        [strM appendFormat:@"\t%@ = %@;\n", key, obj];
    }];
    
    [strM appendString:@"}\n"];
    
    return strM.copy;
}


@end
