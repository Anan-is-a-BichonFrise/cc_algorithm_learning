//
//  AlgorithmMethod.h
//  CCAlgorithmSerialization
//
//  Created by ccclear on 2018/9/11.
//  Copyright © 2018年 cc. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface AlgorithmMethod : NSObject

/*
 * 简式-桶排序
 * 案例:排 a = [5，3，2，5，8] 这组数字的顺序
 * 思想:先初始化 一个长度为10的数组 b，数组每个值为0，然后循环a数组，将a中每次出现的值 在b中对应的角标位置对应的值 +1 好比: a[0] = 5 对应的b[5] 赋值为1
 */
+ (void)algorithmForSimpleBucketSort;

/*
 * 冒泡排序
 * 
 * 思想:每次比较两个相邻的元素，如果它们的顺序错误就把它们交换位置
 * 核心:双重嵌套循环
 */

+ (void)algorithmForBubbleSort;

@end
