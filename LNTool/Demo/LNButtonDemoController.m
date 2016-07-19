//
//  LNButtonDemoController.m
//  LNTool
//
//  Created by cong on 16/7/19.
//  Copyright © 2016年 lin. All rights reserved.
//

#import "LNButtonDemoController.h"
#import "UIButton+Extension.h"
#import "LNButton.h"

@implementation LNButtonDemoController

- (void)viewDidLoad{
    
    [super viewDidLoad];
    
    [self setupUI];
    
}

#pragma mark - 按钮事件
- (void)textBtnClick{
    
    NSLog(@"textBtnClick click");
    
}

- (void)highLightBtnClick{
    
    NSLog(@"highLightBtnClick click");
    
}

- (void)imgTopBtnClick{
    
    NSLog(@"imgTopBtnClick click");
}

#pragma mark - 创建控件
- (void)setupUI{
    
    self.view.backgroundColor = [UIColor colorWithRed:arc4random_uniform(256)/255.0 green:arc4random_uniform(256)/255.0 blue:arc4random_uniform(256)/255.0 alpha:1];

    UIButton *textBtn = [UIButton buttonWithTitle:@"文字按钮" titleColor:nil imageName:nil Target:self event:@selector(textBtnClick)];
    textBtn.frame = CGRectMake(80, 80, 200, 30);
    [self.view addSubview:textBtn];
    
    UIButton *highLightBtn = [UIButton buttonWithTitle:@"带高亮的按钮" titleColor:nil imageName:@"icon_tabbar_more" highLightImgName:@"icon_tabbar_more_selected" Target:self event:@selector(highLightBtnClick)];
    highLightBtn.frame = CGRectMake(80, 120, 200, 30);
    [self.view addSubview:highLightBtn];
    
    LNButton *imgTopBtn = [[LNButton alloc]initWithFrame:CGRectMake(80, 160, 200, 100)];
    imgTopBtn.backgroundColor = [UIColor colorWithRed:arc4random_uniform(256)/255.0 green:arc4random_uniform(256)/255.0 blue:arc4random_uniform(256)/255.0 alpha:1];

    
    [imgTopBtn setTitle:@"上图下字按钮" forState:UIControlStateNormal];
    [imgTopBtn setImage:[UIImage imageNamed:@"icon_tabbar_more"] forState:UIControlStateNormal];
    [imgTopBtn addTarget:self action:@selector(imgTopBtnClick) forControlEvents:UIControlEventTouchUpInside];
    
    [self.view addSubview:imgTopBtn];
    
}

@end
