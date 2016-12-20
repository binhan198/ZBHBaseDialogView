//
//  ViewController.m
//  ZBHBaseDialogViewDemo
//
//  Created by 周彬涵 on 2016/12/16.
//  Copyright © 2016年 周彬涵. All rights reserved.
//

#import "ViewController.h"
#import "CustomDialogView.h"

@interface ViewController ()

@property (nonatomic, strong) CustomDialogView *popView;
@property (nonatomic, strong) UIButton *showButton;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    [self.view addSubview:self.showButton];
}

- (void)viewDidLayoutSubviews
{
    self.showButton.frame = CGRectMake(0, 0, 200, 30);
    self.showButton.center = self.view.center;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)buttonClicked:(UIButton *)sender
{
    [self.popView showWithCompletion:^(id dialogView, NSInteger selectIndex) {
        NSLog(@"textOutput:%@, click buttonIndex:%ld", [[dialogView textField] text], selectIndex);
    }];
}

- (UIButton *)showButton
{
    if (!_showButton) {
        _showButton = [UIButton buttonWithType:UIButtonTypeCustom];
        [_showButton setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
        [_showButton setTitle:@"show pop view" forState:UIControlStateNormal];
        [_showButton addTarget:self action:@selector(buttonClicked:) forControlEvents:UIControlEventTouchUpInside];
    }
    return _showButton;
}

- (ZBHBaseDialogView *)popView
{
    if (!_popView) {
        _popView = [[CustomDialogView alloc] initWithCancelButton:@"取消" buttonTitles:@"确定", nil];
    }
    return _popView;
}

@end
