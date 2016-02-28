//
//  Model.h
//  Adapter
//
//  Created by LastDay on 16/2/28.
//  Copyright © 2016年 LastDays. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface Model : NSObject

/**
 *  名字
 */
@property (nonatomic, strong) NSString *name;

/**
 *  线条颜色
 */
@property (nonatomic, strong) UIColor  *lineColor;

/**
 *  电话号码
 */
@property (nonatomic, strong) NSString *phoneNumber;

/**
 *  初始化数据
 *
 *  @param name        姓名
 *  @param phoneNumber 电话号
 *
 *  @return Model
 */
-(instancetype)initWithName:(NSString *)name phoneNumber:(NSString *)phoneNumber lineColor:(UIColor *) lineColor;

@end
