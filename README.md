# ZBHBaseDialogView
类似UIAlertView的自定义弹窗视图，可以添加任意view

#使用方式
将ZBHBaseDialogView.h和.m文件加入工程，并继承ZBHBaseDialogView进行添加、改写<br/>

```oc
- (void)setupAdditionalContent:(UIView *)contentView;   //额外添加UIView, 将新增的UIView添加到参数contentView上
- (void)showWithCompletion:(void (^)(id dialogView, NSInteger selectIndex))completeBlock;   //继承添加在弹窗之前需要执行的动作
- (void)closeView;  //继承添加在弹窗关闭后需要执行的动作
```

#实际效果图

