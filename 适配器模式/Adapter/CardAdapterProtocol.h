//
//  CardAdapterProtocol.h
//  Adapter
//
//  Created by LastDay on 16/2/29.
//  Copyright © 2016年 LastDays. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@protocol CardAdapterProtocol <NSObject>


- (NSString *)name;

- (UIColor *)lineColor;

- (NSString *)phoneNumber;



@end
