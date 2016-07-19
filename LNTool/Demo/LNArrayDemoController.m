//
//  LNArrayDemoController.m
//  LNTool
//
//  Created by David on 16/7/19.
//  Copyright © 2016年 lin. All rights reserved.
//

#import "LNArrayDemoController.h"

@implementation LNArrayDemoController

- (void)viewDidLoad{
    
    [super viewDidLoad];
    
    [self setupUI];
    
    
}

- (void)setupUI{
    
    self.view.backgroundColor = [UIColor colorWithRed:arc4random_uniform(256)/255.0 green:arc4random_uniform(256)/255.0 blue:arc4random_uniform(256)/255.0 alpha:1];
    
    // printDictionaryLog
    UIButton *printBtn = [UIButton buttonWithType:UIButtonTypeSystem];
    [printBtn setTitle:@"数组打印日志" forState:UIControlStateNormal];
    printBtn.frame = CGRectMake(80, 84, 200, 30);
    [printBtn addTarget:self action:@selector(printArrayLog) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:printBtn];
    
    
}

// MARK: - 数组打印日志
- (void)printArrayLog{
    
    NSString *urlStr = @"http://www.weather.com.cn/data/cityinfo/101010100.html";
    
    NSURL *url = [NSURL URLWithString:urlStr];
    
    NSURLSession *session = [NSURLSession sharedSession];
    
    [[session dataTaskWithURL:url completionHandler:^(NSData * _Nullable data, NSURLResponse * _Nullable response, NSError * _Nullable error) {
        
        NSDictionary *dict = [NSJSONSerialization JSONObjectWithData:data options:0 error:nil];
        
        NSArray *array = @[dict];
        
        NSLog(@"%@",array);
        
    }] resume];
    
    
}


@end
