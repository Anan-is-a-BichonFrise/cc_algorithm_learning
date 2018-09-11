//
//  AlgorithmMethod.m
//  CCAlgorithmSerialization
//
//  Created by ccclear on 2018/9/11.
//  Copyright © 2018年 cc. All rights reserved.
//

#import "AlgorithmMethod.h"

@implementation AlgorithmMethod

+ (void)algorithmForSimpleBucketSort {
    
    NSArray *arrA = @[@5,@3,@2,@5,@8];
    NSMutableArray *arrB = [NSMutableArray arrayWithArray:@[@0,@0,@0,@0,@0,@0,@0,@0,@0,@0]];
    
    for (int i = 0; i < arrA.count; i ++) {
        
        // 1.取出A数组中每个位置的元素zhi
        NSInteger valueA = [arrA[i] integerValue];
        // 2.将对应B数组位置的值 +1
        arrB[valueA] = @([arrB[valueA] integerValue] + 1);
    }
    
    // 循环B数组将值大于0的数据打印,出现几次 打印几次,即为排序后的数据
    for (int i = 0; i < arrB.count; i ++) {
        
        for (int j = 0; j < [arrB[i] integerValue]; j ++) {
            
            NSLog(@"%d",i);
        }
    }
    
    /*
     * 时间复杂度 O(M+N)
     * 这个算法对小范围内的数字进行排序 可靠性高，但是对大数字就很浪费空间，例如排 1，100，1000，10000
     * 我就得提前初始化一个长度为10001的数组，但只需排5个数字的顺序，所以很浪费空间
     */
}

+ (void)algorithmForBubbleSort {
    
    NSMutableArray * randomArr = [NSMutableArray array];
    for (int i = 0; i < 10; i ++) {
        
        int index = arc4random() % 100;
        randomArr[i] = @(index);
    }
    
    NSLog(@"排序前的数组 = %@",randomArr);
    
    for (int i = 0; i < randomArr.count; i ++) {// a = [2,20,80,76,1,22,5]
        
        /*
         * 循环解读:第一次排序 i= 0时，循环B上限循环次数为（randomArr.count - 0） 其中循环B，已经将最小的排到最后面了,此时 a = [20,80,76,2,22,5,1]; 所以下次循环，循环B没必要再取最后一个值,所以第二次循环B上限次数为（randomArr.count - 1）,所以综合 循环B的上限次数为(randomArr.count - i),至于为什么 还要 -1 ，是因为循环B中取值时会取到当前的下一位数据，所以不控制 -1 会造成数组越界
         */
        for (int j = 0; j < randomArr.count - i - 1; j ++) {// 循环B
            
            
            // 从大到小排
            if ([randomArr[j] integerValue] < [randomArr[j + 1] integerValue]) {
                
                // 临时变量
                NSNumber *temp = randomArr[j];
                // 交换 位置
                randomArr[j] = randomArr[j + 1];
                randomArr[j + 1] = temp;
            }
            
        }
    }
    
    NSLog(@"排序后的数组 = %@",randomArr);
    /*
     * 时间复杂度 O(N*N)
     * 这个算法劣势在于每次排序都会从头走一遍循环 对于大数据排序很耗时间，所以浪费效率
     */
}
@end
