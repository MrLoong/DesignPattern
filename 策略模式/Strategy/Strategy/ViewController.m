//
//  ViewController.m
//  Strategy
//
//  Created by LastDay on 16/3/1.
//  Copyright © 2016年 LastDays. All rights reserved.
//

#import "ViewController.h"
#import "CustomField.h"
#import "RegExCategories.h"
#import "UIView+SetRect.h"
#import "UIButton+inits.h"
#import "UIInfomationView.h"

@interface ViewController ()<UITextFieldDelegate>

/**
 *  输入邮箱的验证框
 */
@property (nonatomic, strong) CustomField  *emailField;

/**
 *  输入电话号码的验证框
 */
@property (nonatomic, strong) CustomField  *phoneNumberField;

/**
 *  验证email地址
 *
 *  @param input 输入
 *
 *  @return 输出结果
 */
- (NSString *)validateEmailInput:(UITextField *)input;

/**
 *  验证电话号码
 *
 *  @param input 输入
 *
 *  @return 输出结果
 */
- (NSString *)validatePhoneNumberInput:(UITextField *)input;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    
    // 初始化按钮
    [self initButton];
    
    // 初始化验证框
    [self initCustomFields];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (void)initCustomFields {
    
    
    self.emailField             = [[CustomField alloc] initWithFrame:CGRectMake(30, 80, Width - 60, 30)];
    self.emailField.placeholder = @"请输入邮箱";
    self.emailField.delegate    = self;
//    self.emailField.validator   = [EmailValidator new];
    [self.view addSubview:self.emailField];
    
    
    self.phoneNumberField             = [[CustomField alloc] initWithFrame:CGRectMake(30, 80 + 40, Width - 60, 30)];
    self.phoneNumberField.placeholder = @"请输入电话号码";
    self.phoneNumberField.delegate    = self;
//    self.phoneNumberField.validator   = [PhoneNumberValidator new];
    [self.view addSubview:self.phoneNumberField];
}

#pragma mark - 初始化按钮以及按钮事件
- (void)initButton {
    
    UIButton *button = [UIButton createButtonWithFrame:CGRectMake(30, 30, 90, 30)
                                            buttonType:0
                                                 title:@"Back"
                                                   tag:0
                                                target:self
                                                action:@selector(buttonsEvent:)];
    [self.view addSubview:button];
}

- (void)buttonsEvent:(UIButton *)button {
    
    [self.view endEditing:YES];
}

#pragma mark - 文本代理
- (void)textFieldDidEndEditing:(UITextField *)textField{
    
    CustomField *customField = (CustomField *)textField;
    if (textField == _emailField) {
        NSString *output = [self validateEmailInput:textField];
        if (output) {
            [UIInfomationView showAlertViewWithTitle:nil
                                             message:output
                                   cancelButtonTitle:nil
                                   otherButtonTitles:@[@"确定"]
                                        clickAtIndex:^(NSInteger buttonIndex) {
                                            
                                        }];
        }else{
            NSLog(@"输入正确");
        }
    }else if(textField == _phoneNumberField){
        NSString *output = [self validatePhoneNumberInput:textField];
        if (output) {
            NSLog(@"%@",output);
        }else{
            NSLog(@"输入正确");
        }
    }else{
        
    }
}

#pragma mark - 验证算法
- (NSString *)validateEmailInput:(UITextField *)input {
    
    NSString *outString = nil;
    
    if (input.text.length <= 0) {
        
        outString = @"没有输入";
        
    } else {
        
        BOOL isMatch = [input.text isMatch:RX(@"[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,4}")];
        if (isMatch == NO) {
            
            outString = @"请输入正确的邮箱";
            
        } else {
            
            outString = nil;
        }
    }
    
    return outString;
}

- (NSString *)validatePhoneNumberInput:(UITextField *)input {
    
    NSString *outString = nil;
    
    if (input.text.length <= 0) {
        
        outString = @"没有输入";
        
    } else {
        
        BOOL isMatch = [input.text isMatch:RX(@"^((13[0-9])|(15[^4,\\D])|(18[0,0-9]))\\d{8}$")];
        if (isMatch == NO) {
            
            outString = @"请输入正确的手机号码";
            
        } else {
            
            outString = nil;
        }
    }
    
    return outString;
}

@end
