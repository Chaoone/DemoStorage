//
//  ViewController.m
//  AnimationExploration
//
//  Created by Harden JC on 2017/8/18.
//  Copyright © 2017年 chaoone. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    CABasicAnimation *animation = [CABasicAnimation animationWithKeyPath:@"opacity"];
    animation.fromValue = [NSNumber numberWithFloat:1.f];
    animation.toValue = [NSNumber numberWithFloat:0.f];
    animation.autoreverses = YES; // 回退动画;
    animation.duration = 1.f;
    animation.repeatCount = MAXFLOAT;
    animation.removedOnCompletion = NO;
    animation.fillMode = kCAFillModeForwards; // removedOnCompletion, fillMode配合使用保持动画完成效果;
    animation.timingFunction = [CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionEaseIn];
    
    UIImageView *imgView = [[UIImageView alloc] initWithFrame:CGRectMake(200, 200, 64, 64)];
    imgView.backgroundColor = [UIColor clearColor];
    imgView.image = [UIImage imageNamed:@"heart"];
    [self.view addSubview:imgView];
    [imgView.layer addAnimation:animation forKey:@"aAlpha"];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}


@end
