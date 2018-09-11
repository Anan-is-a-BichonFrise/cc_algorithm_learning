//
//  ViewController.m
//  CCAlgorithmSerialization
//
//  Created by ccclear on 2018/9/1.
//  Copyright © 2018年 cc. All rights reserved.
//

#import "ViewController.h"
#import "AlgorithmMethod.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    // 1.简单的 桶排序
    [AlgorithmMethod algorithmForSimpleBucketSort];
    
    // 2.冒泡排序
    [AlgorithmMethod algorithmForBubbleSort];
}



@end
