//
//  BJSRNMyInfoMethodTool.h
//  BJEducation_student
//
//  Created by MagicalAo on 2019/8/20.
//  Copyright © 2019 Baijiahulian. All rights reserved.
//

#import <Foundation/Foundation.h>

#import <React/RCTEventEmitter.h>
#import <React/RCTEventEmitter.h>
#import <React/RCTBridge.h>

NS_ASSUME_NONNULL_BEGIN

@protocol BJSRNMyInfoMethodToolDelegate <NSObject>

- (void)selectWithContentObject:(NSDictionary *)object;

@end

@interface BJSRNMyInfoMethodTool : RCTEventEmitter <RCTBridgeModule>

@property (nonatomic, weak) id <BJSRNMyInfoMethodToolDelegate> callBackDelegate;

- (void)updaChangeDataWithChangeDict:(NSDictionary *)changeDict;

@end

NS_ASSUME_NONNULL_END
