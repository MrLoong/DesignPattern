//
//  TypeValue.h
//  Strategy
//
//  Created by LastDay on 16/3/1.
//  Copyright © 2016年 LastDays. All rights reserved.
//

#import <UIKit/UIKit.h>

typedef enum : NSInteger{
    EType_01,
    EType_02,
    EType_03,
    
}ETypes;

@interface TypeValue : NSObject

+(NSString *)type:(ETypes)type;

@end
