//
//  BaseTabBar.m
//  BuDeJie
//
//  Created by 抬头看见柠檬树 on 2017/3/26.
//  Copyright © 2017年 hn3l. All rights reserved.
//

#import "BaseTabBar.h"

@interface BaseTabBar ()

@property (nonatomic, weak) UIButton *plusButton;

@end

@implementation BaseTabBar

- (UIButton *)plusButton
{
    if (!_plusButton) {
        UIButton *plusButton = [[UIButton alloc] init];
        
        [plusButton setBackgroundImage:[UIImage imageNamed:@"tabBar_publish_icon"] forState:UIControlStateNormal];
        [plusButton setBackgroundImage:[UIImage imageNamed:@"tabBar_publish_click_icon"] forState:UIControlStateHighlighted];
        
        [plusButton sizeToFit];
        
        _plusButton = plusButton;
        [self addSubview:plusButton];
    }
    return _plusButton;
}

- (void)layoutSubviews
{
    [super layoutSubviews];
    
    NSInteger count = self.items.count + 1;
    CGFloat btnW = self.tw_width / count;
    CGFloat bthH = self.tw_height;
    CGFloat btnX = 0;
    
    NSInteger i = 0;
    for (UIView *subview in self.subviews) {
        if ([subview isKindOfClass:NSClassFromString(@"UITabBarButton")]) {
            if (i == 2) {
                i += 1;
            }
            
            btnX = i * btnW;
            subview.frame = CGRectMake(btnX, 0, btnW, bthH);
            i++;
        }
    }
    
    self.plusButton.center = CGPointMake(self.tw_width * 0.5, self.tw_height * 0.5);
}

@end
