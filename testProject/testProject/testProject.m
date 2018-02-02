//
//  testProject.m
//  testProject
//
//  Created by lixiang on 2018/2/2.
//  Copyright © 2018年 lixiang. All rights reserved.
//

#import "testProject.h"
#import <AppKit/AppKit.h>

@implementation testProject

- (id)runWithInput:(id)input fromAction:(AMAction *)anAction error:(NSDictionary **)errorInfo {
    
    //获取鼠标选中的字符串
    NSArray *arr = (NSArray *)input;
    NSString *string = [NSString stringWithFormat:@"%@",arr.firstObject];
    
    //删除字符串中的空格
    NSString *result = [string stringByReplacingOccurrencesOfString:@" " withString:@""];
    
    //将新的字符串放入剪贴板
    [[NSPasteboard generalPasteboard] declareTypes:[NSArray arrayWithObject:NSStringPboardType] owner:nil];
    [[NSPasteboard generalPasteboard] setString:result forType:NSStringPboardType];
    
    return input;
}

@end




