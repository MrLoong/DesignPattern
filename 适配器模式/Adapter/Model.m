//
//  Model.m
//  Adapter
//
//  Created by LastDay on 16/2/28.
//  Copyright © 2016年 LastDays. All rights reserved.
//

#import "Model.h"

@implementation Model

-(instancetype)initWithName:(NSString *)name phoneNumber:(NSString *)phoneNumber lineColor:(UIColor *) lineColor{
    self = [super init];
    if (self) {
        _name = name;
        _phoneNumber = phoneNumber;
        _lineColor = lineColor;
    }
    return self;
}

@end
