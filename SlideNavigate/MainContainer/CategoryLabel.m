//
//  CategoryLabel.m
//  pj_for_u
//
//  Created by 牛严 on 15/7/31.
//  Copyright (c) 2015年 叶帆. All rights reserved.
//

#import "CategoryLabel.h"

@interface CategoryLabel ()
@property (strong, nonatomic) UIView *lineView;
@end

@implementation CategoryLabel

- (instancetype)initWithFrame:(CGRect)frame
{
    if (self=[super initWithFrame:frame]) {
        self.textAlignment = NSTextAlignmentCenter;
        self.font = [UIFont systemFontOfSize:15];
        self.userInteractionEnabled = YES;
        self.scale = 0.0;
        self.lineView = [[UIView alloc]init];
        [self.lineView setBackgroundColor:[UIColor clearColor]];
        [self addSubview:self.lineView];
    }
    return self;
}

- (void)setScale:(CGFloat)scale
{
    _scale = scale;
    self.textColor = [UIColor colorWithRed:scale green:0.0 blue:0.0 alpha:1];
    [[self.subviews lastObject] setBackgroundColor:[UIColor colorWithRed:scale green:0.0 blue:0.0 alpha:scale]];
    //改变字体大小，缩放效果
    CGFloat minScale = 1;
    CGFloat trueScale = minScale + (1-minScale)*scale;
    self.transform = CGAffineTransformMakeScale(trueScale, trueScale);
}

- (void)setContent:(NSString *)content{
    self.text = content;
    NSDictionary *dic = [NSDictionary dictionaryWithObjectsAndKeys:self.font,NSFontAttributeName, nil];
    //根据标题文字获取文字宽度
    CGSize fontSize =[self.text sizeWithAttributes:dic];
    CGRect frame = self.lineView.frame;
    frame = CGRectMake(fabs(90 - fontSize.width)/2, 39, fontSize.width, 1);
    self.lineView.frame = frame;
}

@end
