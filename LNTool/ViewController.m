//
//  ViewController.m
//  LNTool
//
//  Created by cong on 16/5/2.
//  Copyright © 2016年 lin. All rights reserved.
//

#import "ViewController.h"
#import "NSString+Tool.h"
#import "UIImage+Tool.h"
#import "NSString+Tool.h"

NSString *const ID = @"demoCell";

@interface ViewController ()

@property (nonatomic,strong) NSArray *demoArray;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // 设置demo数据源数组
    self.demoArray = @[@"LNStringDemoController",@"LNDictionaryDemoController",@"LNArrayDemoController",@"LNImageViewDemoController",@"LNButtonDemoController",@"LNLabelDemoController"];
       
}

//- (void)viewDidAppear:(BOOL)animated{
//    
//    
//    UIImageView *imgView = [[UIImageView alloc]initWithImage:[UIImage getScreenShotImage]];
//    imgView.frame = CGRectMake(0, 0, 200, 200);
//    [self.view addSubview:imgView];
//    self.view.backgroundColor = [UIColor colorWithRed:arc4random_uniform(256)/255.0 green:arc4random_uniform(256)/255.0 blue:arc4random_uniform(256)/255.0 alpha:1];
//
//}

#pragma mark - demo代理方法
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    
    // 获得控制器
    Class demoVCClass = NSClassFromString(self.demoArray[indexPath.row]);
    
    UIViewController *demoController = [[demoVCClass alloc]init];
    
    demoController.title = self.demoArray[indexPath.row];
    
    [self.navigationController pushViewController:demoController animated:YES];
    
}

#pragma mark - demo数据源方法
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    
    return self.demoArray.count;
    
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:ID];
    if (cell == nil) {
        cell = [[UITableViewCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:ID];
    }
    
    cell.textLabel.text = self.demoArray[indexPath.row];
    
    return cell;
}


@end
