//
//  CardAdapter.m
//  Adapter
//
//  Created by LastDay on 16/2/29.
//  Copyright © 2016年 LastDays. All rights reserved.
//

#import "CardAdapter.h"

@implementation CardAdapter


- (instancetype)initWithData:(id)data {
    
    self = [super init];
    if (self) {
        
        self.data = data;
    }
    
    return self;
}

- (NSString *)name{
    return nil;
}

- (UIColor *)lineColor{
    return nil;
}

- (NSString *)phoneNumber{
    return nil;
}

@end
