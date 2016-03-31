//
//  ChatCell.h
//  UInet Bubble
//
//  Created by qianfeng on 14-7-23.
//  Copyright (c) 2014年 qianfeng. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ChatCell : UITableViewCell



@property(nonatomic,assign)UIImageView * lefeView;
@property(nonatomic,assign)UIImageView * rightView;
@property(nonatomic,assign)UILabel * leftLabel;
@property(nonatomic,assign)UILabel * rightLabel;
// 不能用名字相同的属性
//  记住自动的时候，讲一下 weak  and strong 

@end
