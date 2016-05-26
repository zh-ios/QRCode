//
//  ViewController.m
//  QRCode
//
//  Created by Apple on 16/5/9.
//  Copyright © 2016年 aladdin-holdings.com. All rights reserved.
//

#import "ViewController.h"

#import "QRViewController.h"
#import "ScanViewController.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.navigationController.navigationBar.translucent = NO;
    
    self.view.backgroundColor = [UIColor whiteColor];
    
    
    UIButton *btn = [[UIButton alloc] initWithFrame:CGRectMake(0, 100, self.view.frame.size.width, self.view.frame.size.height * 0.1)];
    [btn setTitle:@"我的二维码" forState:UIControlStateNormal];
    [btn addTarget:self action:@selector(go2MyQRView) forControlEvents:UIControlEventTouchUpInside];
    
    btn.backgroundColor = [UIColor lightGrayColor];
    
    
    
    UIButton *scanBtn = [[UIButton alloc] initWithFrame:CGRectMake(0, CGRectGetMaxY(btn.frame) + 30, self.view.frame.size.width, self.view.frame.size.height * 0.1)];
    [scanBtn setTitle:@"扫一扫" forState:UIControlStateNormal];
    [scanBtn addTarget:self action:@selector(scan) forControlEvents:UIControlEventTouchUpInside];
    
    scanBtn.backgroundColor = [UIColor lightGrayColor];
    
    [self.view addSubview:btn];
    [self.view addSubview:scanBtn];
}

- (void)scan {
    ScanViewController *scanView = [[ScanViewController alloc] init];
    [self.navigationController pushViewController:scanView animated:YES];
}

- (void)go2MyQRView {
    QRViewController *qr = [[QRViewController alloc] init];
    [self.navigationController pushViewController:qr animated:YES];
}


@end
