//
//  LNStringDemoController.m
//  LNTool
//
//  Created by David on 16/7/19.
//  Copyright © 2016年 lin. All rights reserved.
//

#import "LNStringDemoController.h"
#import "NSString+Tool.h"

@interface LNStringDemoController ()

@property (nonatomic,strong) UITextField *inputTextField;

@end

@implementation LNStringDemoController

- (void)viewDidLoad{
    
    [super viewDidLoad];
    
    [self setupUI];
    
    
    [self highLightTextDemo];
    
}

// MARK: - 高亮文本demo
- (void)highLightTextDemo{
    
    UILabel *textLbl = [[UILabel alloc]init];
    textLbl.text = @"我想要高亮文本";
    textLbl.attributedText = [textLbl.text highLightStringWithString:@"高亮" andColor:[UIColor blueColor]];
    textLbl.frame = CGRectMake(100, 84, 300, 30);
    [self.view addSubview:textLbl];
}

// MARK: - 获得文件在沙盒中地址
- (void)sandBoxPath{
    
    NSLog(@"%@ address in caches:\n%@",self.inputTextField.text,[self.inputTextField.text fileInCachesAddress]);
    NSLog(@"%@ address in document:\n%@",self.inputTextField.text,[self.inputTextField.text fileInDocumentAddress]);
    
}

// MARK: - 获取字符串大小demo
- (void)stringLength{
    
    CGSize strSize = [self.inputTextField.text textSizeWithMaxSize:CGSizeZero TextFont:self.inputTextField.font];
    NSLog(@"%@的字符串大小是%@",self.inputTextField.text,NSStringFromCGSize(strSize));
}

#pragma mark - 控件布局
- (void)setupUI{
    
    self.view.backgroundColor = [UIColor colorWithRed:arc4random_uniform(256)/255.0 green:arc4random_uniform(256)/255.0 blue:arc4random_uniform(256)/255.0 alpha:1];
    
    self.inputTextField = [[UITextField alloc]initWithFrame:CGRectMake(50, 124, 300, 30)];
    self.inputTextField.backgroundColor = [UIColor whiteColor];
    [self.view addSubview:self.inputTextField];
    
    // sandBoxPath
    UIButton *pathBtn = [UIButton buttonWithType:UIButtonTypeSystem];
    [pathBtn setTitle:@"获得在沙盒中地址" forState:UIControlStateNormal];
    pathBtn.frame = CGRectMake(50, 154, 300, 30);
    [pathBtn addTarget:self action:@selector(sandBoxPath) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:pathBtn];
    
    // stringLength
    UIButton *strLenBtn = [UIButton buttonWithType:UIButtonTypeSystem];
    [strLenBtn setTitle:@"获得字符串长度" forState:UIControlStateNormal];
    strLenBtn.frame = CGRectMake(50, 194, 300, 30);
    [strLenBtn addTarget:self action:@selector(stringLength) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:strLenBtn];
}

@end
