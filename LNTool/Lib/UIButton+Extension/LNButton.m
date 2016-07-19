//
//  LNButton.m
//  LNTool
//
//  Created by cong on 16/7/19.
//  Copyright © 2016年 lin. All rights reserved.
//

#import "LNButton.h"

@implementation LNButton

- (void)layoutSubviews{
    [super layoutSubviews];
    //设置图片和文字位置
    CGRect imageFrame = self.imageView.frame;
    CGRect titleLabelFrame = self.titleLabel.frame;
    
    imageFrame.origin.y = self.btnTopMargin;
    titleLabelFrame.origin.y = imageFrame.size.height + self.btnTopMargin;
    
    imageFrame.origin.x = self.bounds.size.width * 0.5 - imageFrame.size.width * 0.5;
    titleLabelFrame.origin.x = 0;
    
    titleLabelFrame.size.width = self.bounds.size.width;
    
    self.imageView.frame = imageFrame;
    self.titleLabel.frame = titleLabelFrame;
    
    self.titleLabel.textAlignment = NSTextAlignmentCenter;
    
    
    
}

- (CGFloat)btnTopMargin{
    
    if (!_btnTopMargin) {
        _btnTopMargin = 10;
    }
    return _btnTopMargin;
}

@end
