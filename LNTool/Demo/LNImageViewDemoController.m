//
//  LNImageViewDemoController.m
//  LNTool
//
//  Created by David on 16/7/19.
//  Copyright © 2016年 lin. All rights reserved.
//

#import "LNImageViewDemoController.h"
#import "UIImageView+Tool.h"


@implementation LNImageViewDemoController

- (void)viewDidLoad{
    
    [super viewDidLoad];
    
    [self setupUI];
    
    [self blurEffectImageView];
}

- (void)setupUI{
    
    self.view.backgroundColor = [UIColor colorWithRed:arc4random_uniform(256)/255.0 green:arc4random_uniform(256)/255.0 blue:arc4random_uniform(256)/255.0 alpha:1];
    
    
}

// MARK: - 毛玻璃效果
- (void)blurEffectImageView{
    
    UIImageView *imageView = [UIImageView blurEffectiveWithImage:[UIImage imageNamed:@"首页"]];
    
    imageView.frame = CGRectMake(20,84, 200, 200);
    
    [self.view addSubview:imageView];
    
}

@end
