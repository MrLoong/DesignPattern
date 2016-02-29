//
//  ViewController.m
//  Adapter
//
//  Created by LastDay on 16/2/28.
//  Copyright © 2016年 LastDays. All rights reserved.
//

#import "ViewController.h"
#import "BusinessCard.h"
#import "Model.h"
#import "ModelCardAdapter.h"


@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.

    
    Model *model = [[Model alloc] initWithName:@"lastdays" phoneNumber:@"158******1111" lineColor:[UIColor blueColor]];
    
    //建立充电器跟电源关系
    CardAdapter *cardAdapter = [[ModelCardAdapter alloc] initWithModel:model];
    
    
    BusinessCard *card = [[BusinessCard alloc] initWithFrame:BUSINESS_FRAME];
    card.center = self.view.center;
    
    //建立手机跟充电器关系
    [card loadDataWithModel:cardAdapter];
    [self.view addSubview:card];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}



@end
