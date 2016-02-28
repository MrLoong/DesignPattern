//
//  BusinessCard.m
//  Adapter
//
//  Created by LastDay on 16/2/28.
//  Copyright © 2016年 LastDays. All rights reserved.
//

#import "BusinessCard.h"


@interface BusinessCard()

@property(nonatomic,strong) UILabel *nameLable;
@property(nonatomic,strong) UILabel *phoneLable;
@property(nonatomic,strong) UIView  *lineCardView;



@end

@implementation BusinessCard


- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        [self initCardView];
    }
    return self;
}



-(void)initCardView{
    self.backgroundColor     = [UIColor whiteColor];
    self.layer.borderWidth   = 0.5f;
    self.layer.shadowOpacity = 0.5f;
    self.layer.shadowOffset  = CGSizeMake(5, 5);
    self.layer.shadowRadius  = 1.f;
    self.layer.shadowColor   = [UIColor grayColor].CGColor;
    
    
    self.nameLable      = [[UILabel alloc] initWithFrame:CGRectMake(15, 10, 150, 25)];
    self.nameLable.font = [UIFont fontWithName:@"Avenir-Light" size:20.f];
    [self addSubview:self.nameLable];
    
    
    self.lineCardView                 = [[UIView alloc] initWithFrame:CGRectMake(0, 45, 200, 5)];
    [self addSubview:self.lineCardView];
    
    
    self.phoneLable               = [[UILabel alloc] initWithFrame:CGRectMake(41, 105, 150, 20)];
    self.phoneLable.textAlignment = NSTextAlignmentRight;
    self.phoneLable.font          = [UIFont fontWithName:@"AvenirNext-UltraLightItalic" size:16.f];
    [self addSubview:self.phoneLable];
}



-(void)setName:(NSString *)name{
    _name = name;
    _nameLable.text = name;
}


-(void)setLine:(UIColor *)line{
    _line = line;
    _lineCardView.backgroundColor = line;
}

-(void)setPhoneNumber:(NSString *)phoneNumber{
    _phoneNumber = phoneNumber;
    _phoneLable.text = phoneNumber;
}



/**
 *  初始化数据
 *
 *  @param model BusinessCard
 */
-(void)loadDataWithModel:(Model *)model{
    self.name        = model.name;
    self.phoneNumber = model.phoneNumber;
    self.line        = model.lineColor;
}

@end




