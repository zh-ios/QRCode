//
//  MyQRCodeView.h
//  QRCode
//
//  Created by Apple on 16/5/9.
//  Copyright © 2016年 aladdin-holdings.com. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface MyQRCodeView : UIView

@property (nonatomic,weak)UIImageView *icon;
@property (nonatomic,weak)UILabel *name;
@property (nonatomic,weak)UILabel *address;
// 二维码图片
@property (nonatomic,weak)UIImageView *qrImg;
// 二维码上图片
@property (nonatomic,weak)UIImageView *appIcon;

@end
