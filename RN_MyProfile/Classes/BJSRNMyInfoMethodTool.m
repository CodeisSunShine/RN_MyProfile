//
//  BJSRNMyInfoMethodTool.m
//  BJEducation_student
//
//  Created by MagicalAo on 2019/8/20.
//  Copyright © 2019 Baijiahulian. All rights reserved.
//

#import "BJSRNMyInfoMethodTool.h"

@implementation BJSRNMyInfoMethodTool

RCT_EXPORT_MODULE()

#pragma mark - 原生调RN

//这个方法也是必须实现的
- (NSArray<NSString *>*)supportedEvents {
    // EventReminder 是监听的标识，类似 iOS 发通知 需要一个标识去识别，通过这个标识发送通知调用 RN方法
    return @[
             @"updaChangeDataWithChangeDict"
             ];
}

// RCT_EXPORT_METHOD(xxx) 暴露给 RN 调用的方法写这里面， xxx 是调用方法
RCT_EXPORT_METHOD(updaChangeData) {
    //这里是加个通知，其他原生类里通过发送通知来调用 alertRNInfo 方法,就是实现发通知给 RN 的功能方法
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(updaChangeDataNotificationWith:) name:@"updaChangeDataWithChangeDict" object:nil];
}

- (void)updaChangeDataNotificationWith:(NSNotification *)noti {
    dispatch_async(dispatch_get_main_queue(), ^{
        //这是核心方法, EventReminder 是标识，在上面的数组 supportedEvents 方法里也要加入， body 是 传给 RN 的参数
        [self sendEventWithName:@"updaChangeDataWithChangeDict" body:noti.userInfo];
    });
}

- (void)updaChangeDataWithChangeDict:(NSDictionary *)changeDict {
    [[NSNotificationCenter defaultCenter] postNotificationName:@"updaChangeDataWithChangeDict" object:nil userInfo:changeDict];
}

#pragma mark - RN调原生

RCT_EXPORT_METHOD(selectCell:(NSDictionary *)object) {
    NSLog(@"%@",object);
    [self selectContentWithObject:object];
}

RCT_EXPORT_METHOD(selectSex:(NSDictionary *)sexObject) {
    NSLog(@"%@",sexObject);
}

RCT_EXPORT_METHOD(selectBirthday:(NSDictionary *)birObject) {
    NSLog(@"%@",birObject);
}

RCT_EXPORT_METHOD(selectArea:(NSDictionary *)areaObject) {
    NSLog(@"%@",areaObject);
}

RCT_EXPORT_METHOD(selectShippingAddress:(NSDictionary *)addObject) {
    NSLog(@"%@",addObject);
}

RCT_EXPORT_METHOD(selectStage:(NSDictionary *)stageObject) {
    NSLog(@"%@",stageObject);
    [self updaChangeData];
}

- (void)selectContentWithObject:(NSDictionary *)object {

    dispatch_async(dispatch_get_main_queue(), ^{
        [[NSNotificationCenter defaultCenter] postNotificationName:@"RN_MyInf_SelectContent" object:nil userInfo:object];
    });
}

@end
