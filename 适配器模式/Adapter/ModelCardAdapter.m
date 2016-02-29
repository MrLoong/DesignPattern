//
//  ModelCardAdapter.m
//  Adapter
//
//  Created by LastDay on 16/2/29.
//  Copyright © 2016年 LastDays. All rights reserved.
//

#import "ModelCardAdapter.h"

@implementation ModelCardAdapter

- (instancetype)initWithModel:(id)data
{
    self = [super init];
    if (self) {
        self.data = data;
    }
    return self;
}

- (NSString *)name{
    
    Model *data = self.data;
    return data.name;
}

- (UIColor *)lineColor{
    Model *data = self.data;
    return data.lineColor;
}

- (NSString *)phoneNumber{
    Model *data = self.data;
    return data.phoneNumber;
}


@end
