//
//  UIView+Frame.m
//  BuDeJie
//
//  Created by 抬头看见柠檬树 on 2017/4/5.
//  Copyright © 2017年 hn3l. All rights reserved.
//

#import "UIView+Frame.h"

@implementation UIView (Frame)

/**tw_width*/
- (void)setTw_width:(CGFloat)tw_width
{
    CGRect frame     = self.frame;
    frame.size.width = tw_width;
    self.frame       = frame;
}

- (CGFloat)tw_width
{
    return self.frame.size.width;
}

/**tw_height*/
- (void)setTw_height:(CGFloat)tw_height
{
    CGRect frame      = self.frame;
    frame.size.height = tw_height;
    self.frame        = frame;
}

- (CGFloat)tw_height
{
    return self.frame.size.height;
}

/**tw_x*/
- (void)setTw_x:(CGFloat)tw_x
{
    CGRect frame   = self.frame;
    frame.origin.x = tw_x;
    self.frame     = frame;
}

- (CGFloat)tw_x
{
    return self.frame.origin.x;
}

/**tw_y*/
- (void)setTw_y:(CGFloat)tw_y
{
    CGRect frame   = self.frame;
    frame.origin.y = tw_y;
    self.frame     = frame;
}

- (CGFloat)tw_y
{
    return self.frame.origin.y;
}

@end
