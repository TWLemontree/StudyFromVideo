//
//  BaseTabBarController.m
//  BuDeJie
//
//  Created by 抬头看见柠檬树 on 2017/3/23.
//  Copyright © 2017年 hn3l. All rights reserved.
//
#import "BaseTabBarController.h"

#import "EssenceViewController.h"
#import "FriendTrendViewController.h"
#import "MeViewController.h"
#import "NewViewController.h"
#import "PublishViewController.h"

#import "UIImage+image.h"

@interface BaseTabBarController ()

@end

@implementation BaseTabBarController

+ (void)load
{
    // 获取某个类中的UITabBarItem
    UITabBarItem *item = [UITabBarItem appearanceWhenContainedIn:self, nil];
    // 修改title的文字颜色
    NSMutableDictionary *attrs = [NSMutableDictionary dictionaryWithObjectsAndKeys:[UIColor blackColor], NSForegroundColorAttributeName, nil];
    [item setTitleTextAttributes:attrs forState:UIControlStateSelected];
    
    // 设置字体尺寸：只有设置正常状态下，才会有效果
    NSMutableDictionary *attrsNor = [NSMutableDictionary dictionaryWithObjectsAndKeys:[UIFont systemFontOfSize:13.0],NSFontAttributeName, nil];
    [item setTitleTextAttributes:attrsNor forState:UIControlStateNormal];
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    // 2.1 添加子控制器 -> 自定义控制器 -> 划分项目文件结构
    [self setupAllChildViewController];
    
    // 2.2 设置TabBar上的按钮内容
    [self setupTitleAndButton];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - 设置所有子控制器
- (void)setupAllChildViewController
{
    // 精华
    EssenceViewController *essenceVC = [[EssenceViewController alloc] init];
    UINavigationController *nav1 = [[UINavigationController alloc] initWithRootViewController:essenceVC];
    [self addChildViewController:nav1];
    
    // 新帖
    NewViewController *newVC = [[NewViewController alloc] init];
    UINavigationController *nav2 = [[UINavigationController alloc] initWithRootViewController:newVC];
    [self addChildViewController:nav2];
    
    // 发布
    PublishViewController *publishVC = [[PublishViewController alloc] init];
    [self addChildViewController:publishVC];
    
    // 关注
    FriendTrendViewController *friendTrendVC = [[FriendTrendViewController alloc] init];
    UINavigationController *nav4 = [[UINavigationController alloc] initWithRootViewController:friendTrendVC];
    [self addChildViewController:nav4];
    
    // 我
    MeViewController *meVC = [[MeViewController alloc] init];
    UINavigationController *nav5 = [[UINavigationController alloc] initWithRootViewController:meVC];
    [self addChildViewController:nav5];
}

- (void)setupTitleAndButton
{
    // 精华
    UINavigationController *nav1 = self.childViewControllers[0];
    nav1.tabBarItem.title = @"精华";
    nav1.tabBarItem.image = [UIImage imageOriginalWithName:@"tabBar_essence_icon"];
    nav1.tabBarItem.selectedImage = [UIImage imageOriginalWithName:@"tabBar_essence_click_icon"];

    // 新帖
    UINavigationController *nav2 = self.childViewControllers[1];
    nav2.tabBarItem.title = @"新帖";
    nav2.tabBarItem.image = [UIImage imageOriginalWithName:@"tabBar_new_icon"];
    nav2.tabBarItem.selectedImage = [UIImage imageOriginalWithName:@"tabBar_new_click_icon"];

    // 发布
    PublishViewController *publishVC = self.childViewControllers[2];
    publishVC.tabBarItem.image = [UIImage imageOriginalWithName:@"tabBar_publish_icon"];
    publishVC.tabBarItem.selectedImage = [UIImage imageOriginalWithName:@"tabBar_publish_click_icon"];
    
    // 关注
    UINavigationController *nav4 = self.childViewControllers[3];
    nav4.tabBarItem.title = @"关注";
    nav4.tabBarItem.image = [UIImage imageOriginalWithName:@"tabBar_friendTrends_icon"];
    nav4.tabBarItem.selectedImage = [UIImage imageOriginalWithName:@"tabBar_friendTrends_click_icon"];

    // 我
    UINavigationController *nav5 = self.childViewControllers[4];
    nav5.tabBarItem.title = @"我";
    nav5.tabBarItem.image = [UIImage imageOriginalWithName:@"tabBar_me_icon"];
    nav5.tabBarItem.selectedImage = [UIImage imageOriginalWithName:@"tabBar_me_click_icon"];

}


@end
