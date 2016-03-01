//
//  CustomField.h
//  Strategy
//
//  Created by LastDay on 16/3/1.
//  Copyright © 2016年 LastDays. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface CustomField : UITextField



/**
 *  初始化textField
 *
 *  @param frame
 *  @param inputValidator 验证策略
 *
 *  @return 实例对象
 */
- (instancetype)initWithFrame:(CGRect)frame;

@end
