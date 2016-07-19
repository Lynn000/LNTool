//
//  LNLabelDemoController.m
//  LNTool
//
//  Created by cong on 16/7/19.
//  Copyright © 2016年 lin. All rights reserved.
//

#import "LNLabelDemoController.h"
#import "UILabel+Extension.h"

@implementation LNLabelDemoController

- (void)viewDidLoad{
    
    [super viewDidLoad];
    
    [self setupUI];
    
}

#pragma mark - 控件布局
- (void)setupUI{
    
    self.view.backgroundColor = [UIColor colorWithRed:arc4random_uniform(256)/255.0 green:arc4random_uniform(256)/255.0 blue:arc4random_uniform(256)/255.0 alpha:1];

    UILabel *label = [UILabel labelWithText:@"快速创建label快速创建label快速创建label" fontSize:0 textColor:nil isSingleLine:NO isAlignCenter:NO];
    label.backgroundColor = [UIColor redColor];
    label.frame = CGRectMake(80, 80, 250, 80);
    
    [self.view addSubview:label];
    
}

@end
