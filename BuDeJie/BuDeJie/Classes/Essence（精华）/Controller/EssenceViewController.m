//
//  EssenceViewController.m
//  BuDeJie
//
//  Created by 抬头看见柠檬树 on 2017/3/23.
//  Copyright © 2017年 hn3l. All rights reserved.
//

#import "EssenceViewController.h"

@interface EssenceViewController ()

@end

@implementation EssenceViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    [self.view setBackgroundColor:[UIColor redColor]];
    
    // 设置导航控制器
    [self setupNavBar];
}

#pragma mark - 设置导航控制器
- (void)setupNavBar
{
    // 1.leftBarButtonItem
    UIButton *leftButton = [UIButton buttonWithType:UIButtonTypeCustom];
    [leftButton setImage:[UIImage imageNamed:@"nav_item_game_icon"] forState:UIControlStateNormal];
    [leftButton setImage:[UIImage imageNamed:@"nav_item_game_click_icon"] forState:UIControlStateHighlighted];
    [leftButton sizeToFit];
    // 由于使用button会使得点击范围增大，所以将button放进view中，然后赋值
    UIView *leftView = [[UIView alloc] initWithFrame:leftButton.bounds];
    [leftView addSubview:leftButton];
    self.navigationItem.leftBarButtonItem = [[UIBarButtonItem alloc] initWithCustomView:leftView];
    
    // 2.rightBarButtonItem
    
    
    // 3.titleView
    
}

- (UIBarButtonItem *)setBarButtonItemWithImage:(UIImage *)image highlightedImage:(UIImage *)highlightedImage 

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
