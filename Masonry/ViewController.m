//
//  ViewController.m
//  Masonry
//
//  Created by yc on 16/11/29.
//  Copyright © 2016年 com.pbph. All rights reserved.
//

#import "ViewController.h"
#import "Masonry.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    UIView *greenView = UIView.new;
    greenView.backgroundColor = UIColor.greenColor;
    greenView.layer.borderColor = UIColor.grayColor.CGColor;
    greenView.layer.borderWidth = 2;
    [self.view addSubview:greenView];
    
    UIView *redView = UIView.new;
    redView.backgroundColor = UIColor.redColor;
    redView.layer.borderColor = UIColor.cyanColor.CGColor;
    redView.layer.borderWidth = 2;
    [self.view addSubview:redView];
    
    UIView *blueView = UIView.new;
    blueView.backgroundColor = UIColor.blueColor;
    blueView.layer.borderColor = UIColor.purpleColor.CGColor;
    blueView.layer.borderWidth = 2;
    [self.view addSubview:blueView];
    
    UIView *orangeView = UIView.new;
    orangeView.backgroundColor = UIColor.orangeColor;
    orangeView.layer.borderColor = UIColor.brownColor.CGColor;
    orangeView.layer.borderWidth = 2;
    [self.view addSubview:orangeView];
    
    // 使这三个控件等高
    CGFloat padding = 10;//貌似是控件之间的距离
    
    [greenView mas_makeConstraints:^(MASConstraintMaker *make) {
        
        //设置greenView距离顶部的高度和距离左侧的高度均为padding
        make.top.left.mas_equalTo(padding);
        
        //设置greenView距离blueView的距离为padding
        make.bottom.mas_equalTo(blueView.mas_top).offset(-padding);
        
        //设置左侧距离redView的距离为padding
        make.right.mas_equalTo(redView.mas_left).offset(-padding);
        
        //设置greenView与redView等宽
        make.width.mas_equalTo(redView);
        
    }];
    
    [redView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.bottom.height.mas_equalTo(greenView);
        make.left.mas_equalTo(greenView.mas_right).offset(padding);
        make.right.mas_equalTo(-padding);
    }];
    
    [blueView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.mas_equalTo(greenView.mas_bottom).offset(padding);
        make.left.mas_equalTo(padding);
        make.right.mas_equalTo(orangeView.mas_left).offset(-padding);
        make.bottom.mas_equalTo(-padding);
        make.height.mas_equalTo(greenView);
        make.width.mas_equalTo(orangeView);
    }];
    
    [orangeView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.height.bottom.mas_equalTo(blueView);
        make.left.mas_equalTo(blueView.mas_right).offset(padding);
        make.right.mas_equalTo(-padding);
    }];
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
