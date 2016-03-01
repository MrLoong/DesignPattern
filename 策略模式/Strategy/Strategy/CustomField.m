//
//  CustomField.m
//  Strategy
//
//  Created by LastDay on 16/3/1.
//  Copyright © 2016年 LastDays. All rights reserved.
//

#import "CustomField.h"

@implementation CustomField

#pragma mark - 初始化
- (instancetype)initWithFrame:(CGRect)frame {
    
    self = [super initWithFrame:frame];
    if (self) {
        
        [self initView];
    }
    
    return self;
}

- (void)initView{
    
    UIView *leftView       = [[UIView alloc] initWithFrame:CGRectMake(0, 0, 5, self.frame.size.height)];
    self.leftView          = leftView;
    self.leftViewMode      = UITextFieldViewModeAlways;
    
    self.font = [UIFont fontWithName:@"Avenir-Book" size:12.f];
    
    self.layer.borderWidth = 0.5f;
}

@end
