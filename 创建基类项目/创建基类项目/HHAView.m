//
//  HHAView.m
//  创建基类项目
//
//  Created by 段立峰 on 2017/4/11.
//  Copyright © 2017年 Dlf. All rights reserved.
//

#import "HHAView.h"

@implementation HHAView



-(void)setupUI{
    
    
    UIButton * bb = [UIButton hh_textButton:@"abc" fontSize:13 normalColor:[UIColor hh_randomColor] selectedColor:[UIColor hh_randomColor]];
    
   
    
    [self addSubview:bb];
    
    bb.frame = CGRectMake(50, 50, 50, 50);
    [bb addTarget:self action:@selector(click) forControlEvents:UIControlEventTouchUpInside];
}
-(void)click{
    
    
    
    
}
@end
