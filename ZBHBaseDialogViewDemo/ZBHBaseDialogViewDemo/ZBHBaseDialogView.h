//
//  ZBHBaseDialogView.h
//  ZBHBaseDialogViewDemo
//
//  Created by 周彬涵 on 2016/12/16.
//  Copyright © 2016年 周彬涵. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ZBHBaseDialogView : UIView

//初始化
- (instancetype)initWithCancelButton:(NSString *)cancelTitle
                        buttonTitles:(NSString *)otherButtonTitles,... NS_REQUIRES_NIL_TERMINATION;

- (instancetype)initWithContentSize:(CGSize)contentSize
                       buttonHeight:(CGFloat)buttonHeight
         contentCenterYOffsetNormal:(CGFloat)contentCenterYOffsetNormal
          contentCenterYOffsetAvoid:(CGFloat)contentCenterYOffsetAvoid
                       CancelButton:(NSString *)cancelTitle
                       buttonTitles:(NSString *)otherButtonTitles,... NS_REQUIRES_NIL_TERMINATION;

//添加额外控件，继承，改写
- (void)setupAdditionalContent:(UIView *)contentView;

//显示
- (void)showWithCompletion:(void (^)(id dialogView, NSInteger selectIndex))completeBlock;
- (void)closeView;

//移动内容视图，键盘躲避
- (void)upMoveContent;
- (void)downMoveContent;

//设置全部按钮文字颜色，字体
- (void)setBtnTextColor:(UIColor *)color;
- (void)setBtnTextFont:(UIFont *)font;

//设置按钮颜色字体
- (void)setBtnTextColor:(UIColor *)color atIndex:(NSInteger)index;
- (void)setBtnTextFont:(UIFont *)font atIndex:(NSInteger)index;

@end
