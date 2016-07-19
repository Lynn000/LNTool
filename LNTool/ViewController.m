//
//  ViewController.m
//  LNTool
//
//  Created by cong on 16/5/2.
//  Copyright © 2016年 lin. All rights reserved.
//

#import "ViewController.h"
#import "NSString+LNStringTool.h"
#import "UIImage+LNImageTool.h"
#import "NSString+LNStringTool.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
//    NSString *str = @"我想要高亮文本";
//    NSMutableAttributedString *attriStting = [[NSMutableAttributedString alloc]initWithString:str];
//    NSRange range = [str rangeOfString:@"高亮"];
//    [attriStting addAttribute:NSForegroundColorAttributeName value:[UIColor redColor] range:range];
    UILabel *textLbl = [[UILabel alloc]init];
    textLbl.text = @"我想要高亮文本";
    textLbl.attributedText = [textLbl.text highLightStringWithString:@"高亮" andColor:[UIColor blueColor]];
    textLbl.frame = CGRectMake(100, 100, 300, 30);
    [self.view addSubview:textLbl];
    
    self.view.backgroundColor = [UIColor colorWithRed:arc4random_uniform(256)/255.0 green:arc4random_uniform(256)/255.0 blue:arc4random_uniform(256)/255.0 alpha:1];

    NSLog(@"%@",[@"str.h" fileInCachesAddress]);
    NSLog(@"%@",[@"str.h" fileInDocumentAddress]);
    
}

- (void)viewDidAppear:(BOOL)animated{
    
    
    UIImageView *imgView = [[UIImageView alloc]initWithImage:[UIImage getScreenShotImage]];
    imgView.frame = CGRectMake(0, 0, 200, 200);
    [self.view addSubview:imgView];
    self.view.backgroundColor = [UIColor colorWithRed:arc4random_uniform(256)/255.0 green:arc4random_uniform(256)/255.0 blue:arc4random_uniform(256)/255.0 alpha:1];

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
