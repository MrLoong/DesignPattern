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

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.

    
    Model *model = [[Model alloc] initWithName:@"lastdays" phoneNumber:@"158******1111" lineColor:[UIColor blueColor]];
    BusinessCard *card = [[BusinessCard alloc] initWithFrame:BUSINESS_FRAME];
    card.center = self.view.center;
    
    [card loadDataWithModel:model];
    [self.view addSubview:card];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}



@end
