//
//  HMView.m
//  09-矩阵操作
//
//  Created by apple on 14-9-2.
//  Copyright (c) 2014年 itcast. All rights reserved.
//

#import "HMView.h"

@implementation HMView

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code
    }
    return self;
}


// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect
{
    // Drawing code
    
    // 1.获取上下文
    CGContextRef ctx = UIGraphicsGetCurrentContext();
    
    // 注意：你的路径一定放在上下文矩阵操作之后
    // 平移上下文
    CGContextTranslateCTM(ctx, 50, 100);
    
    // 旋转上下文
    CGContextRotateCTM(ctx, M_PI_4);
    
    // 缩放上下文
    CGContextScaleCTM(ctx, 0.5, 1.2);
    
    // 2.拼接路径
    UIBezierPath *path = [UIBezierPath bezierPathWithOvalInRect:CGRectMake(-50, -100, 150, 200)];
    
    // 3.把路径添加到上下文
    CGContextAddPath(ctx, path.CGPath);
    
    
    
    [[UIColor yellowColor] set];
    
    // 4.渲染
    CGContextFillPath(ctx);
    
}


@end
