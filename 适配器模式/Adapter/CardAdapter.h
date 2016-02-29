//
//  CardAdapter.h
//  Adapter
//
//  Created by LastDay on 16/2/29.
//  Copyright © 2016年 LastDays. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "CardAdapterProtocol.h"
#import <UIKit/UIKit.h>


@interface CardAdapter : NSObject<CardAdapterProtocol>

/**
 *  建立输入关系
 */
@property(nonatomic,weak) id data;

/**
 *  与输入对象建立联系
 *
 *  @param data 输入的对象
 *
 *  @return 当前实例对象
 */
- (instancetype)initWithModel:(id)data;

@end
