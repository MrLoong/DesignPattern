//
//  BusinessCard.h
//  Adapter
//
//  Created by LastDay on 16/2/28.
//  Copyright © 2016年 LastDays. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Model.h"
#import "CardAdapterProtocol.h"




#define  BUSINESS_FRAME  CGRectMake(0, 0, 200, 130)

@interface BusinessCard : UIView

/**
 *  姓名
 */
@property(nonatomic,strong) NSString *name;

/**
 *  电话
 */
@property(nonatomic,strong) NSString *phoneNumber;

/**
 *  线条颜色
 */
@property(nonatomic,strong) UIColor  *line;

/**
 *  初始化数据
 *
 *  @param model Model
 */
-(void)loadDataWithModel:(id<CardAdapterProtocol>)data;


@end
