//
//  UIImage+image.m
//  BuDeJie
//
//  Created by 抬头看见柠檬树 on 2017/3/23.
//  Copyright © 2017年 hn3l. All rights reserved.
//

#import "UIImage+image.h"

@implementation UIImage (image)

+ (UIImage *)imageOriginalWithName:(NSString *)imageName
{
    UIImage *image = [UIImage imageNamed:imageName];
    return [image imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
}

@end
