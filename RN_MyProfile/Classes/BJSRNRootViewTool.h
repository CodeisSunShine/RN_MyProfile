//
//  BJSRNRootViewTool.h
//  BJEducation_student
//
//  Created by MagicalAo on 2019/8/20.
//  Copyright © 2019 Baijiahulian. All rights reserved.
//

#import <Foundation/Foundation.h>

#import <React/RCTRootView.h>
#import <React/RCTBundleURLProvider.h>
#import <React/RCTEventEmitter.h>

NS_ASSUME_NONNULL_BEGIN

@interface BJSRNRootViewTool : NSObject

+ (RCTRootView *)getRCTRootViewWithBundleRoot:(NSString *)bundleRoot
                                   ModuleName:(NSString *)moduleName
                            initialProperties:(NSDictionary *)initialProperties;

@end

NS_ASSUME_NONNULL_END
