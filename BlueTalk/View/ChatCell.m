//
//  ChatCell.m
//  UInet Bubble
//
//  Created by qianfeng on 14-7-23.
//  Copyright (c) 2014年 qianfeng. All rights reserved.
//

#import "ChatCell.h"

@implementation ChatCell

- (id)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        // Initialization code
        [self makeView];
    }
    return self;
}
-(void)makeView
{
    UIImage * leftImgae = [UIImage imageNamed:@"ReceiverTextNodeBkg.png"];
    UIImage * rightImage = [UIImage imageNamed:@"SenderTextNodeBkg.png"];
    
    //这里设定一行一像素 当图片拉伸的时候，只放大两个像素
    
    leftImgae = [leftImgae stretchableImageWithLeftCapWidth:30 topCapHeight:35];
    // 找一行一列的像素
    rightImage = [rightImage stretchableImageWithLeftCapWidth:30 topCapHeight:35];
    // 设定完了后生成了一个新的image;
    
    
    //左边气泡
    self.lefeView = [[UIImageView alloc] initWithFrame:CGRectMake(10, 5, 66, 30)];
    self.lefeView.image = leftImgae;
    // 这里不是一个小像素的图片？？
    [self.contentView addSubview:self.lefeView];
    [self.lefeView release];
    
    self.leftLabel = [[UILabel alloc] initWithFrame:CGRectMake(15, 5, 1, 1)];
    self.leftLabel.font = [UIFont systemFontOfSize:14];
    
    self.leftLabel.numberOfLines = 0; // 换行
    
    self.leftLabel.backgroundColor = [UIColor clearColor];// 设置透明的
    
    [self.lefeView addSubview:self.leftLabel];
    [self.leftLabel release];
    
    // 右边
    self.rightView = [[UIImageView alloc] initWithFrame:CGRectMake(320-76, 5, 66, 30)];
    self.rightView.image = rightImage;
    [self.contentView addSubview:self.rightView];
    [self.rightView release];
    
    self.rightLabel = [[UILabel alloc] initWithFrame:CGRectMake(10, 5, 1, 1)];
    self.rightLabel.font = [UIFont systemFontOfSize:14];
    self.rightLabel.backgroundColor = [UIColor clearColor];
    self.rightLabel.numberOfLines = 0;
    [self.rightView addSubview:self.rightLabel];
    [self.rightLabel release];
    
    
    
}
- (void)setSelected:(BOOL)selected animated:(BOOL)animated
{
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
