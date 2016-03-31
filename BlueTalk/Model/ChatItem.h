//
//  ChatItem.h
//  UInet Bubble
//
//  Created by qianfeng on 14-7-23.
//  Copyright (c) 2014年 qianfeng. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface ChatItem : NSObject


@property(nonatomic,assign)BOOL isSelf;//判断是接受，还是发的

@property(nonatomic,copy)NSString * content;
// 数据内容

@end
