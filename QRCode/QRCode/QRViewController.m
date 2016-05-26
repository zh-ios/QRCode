//
//  QRViewController.m
//  QRCode
//
//  Created by Apple on 16/5/9.
//  Copyright © 2016年 aladdin-holdings.com. All rights reserved.
//

#import "QRViewController.h"
#import "MyQRCodeView.h"
#import "UIView+Layout.h"
@interface QRViewController ()

@end

@implementation QRViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    
    self.view.backgroundColor = [UIColor darkGrayColor];
    

    
    [self setupQRCodeView];
    
}



- (void)setupQRCodeView {
    
    // view 的高度 = view宽 + 上面高 + 下面高
    MyQRCodeView *qrView = [[MyQRCodeView alloc] initWithFrame:
                            CGRectMake(20, 40, self.view.width - 20 * 2, self.view.width - 20 * 2 + 60 + 30 + 30)];
    
    if ([UIScreen mainScreen].bounds.size.height <= 480) { // 4s 重新调整下高度
        qrView.frame = CGRectMake(20, 20, self.view.width - 20 * 2, self.view.width - 20 * 2 + 60 + 30 + 10);
    }
    
    [self.view addSubview:qrView];
}

@end
