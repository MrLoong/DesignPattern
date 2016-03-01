//
//  ViewController.m
//  Strategy
//
//  Created by LastDay on 16/3/1.
//  Copyright © 2016年 LastDays. All rights reserved.
//

#import "ViewController.h"
#import "TypeValue.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    NSString *showString = [TypeValue type:EType_01];
    NSLog(@"%@",showString);
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
