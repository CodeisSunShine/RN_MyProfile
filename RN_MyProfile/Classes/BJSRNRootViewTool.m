//
//  BJSRNRootViewTool.m
//  BJEducation_student
//
//  Created by MagicalAo on 2019/8/20.
//  Copyright © 2019 Baijiahulian. All rights reserved.
//

#import "BJSRNRootViewTool.h"

@implementation BJSRNRootViewTool

+ (RCTRootView *)getRCTRootViewWithBundleRoot:(NSString *)bundleRoot
                                   ModuleName:(NSString *)moduleName
                            initialProperties:(NSDictionary *)initialProperties {
    NSURL *jsCodeLocation;
    NSBundle *bundle = [NSBundle bundleForClass:[self class]];
    jsCodeLocation = [bundle URLForResource:@"bundle/index.ios" withExtension:@"jsbundle"];
    NSURL *p4CodeLocation = [bundle URLForResource:@"sad" withExtension:@"mp4"];
//    jsCodeLocation = [[RCTBundleURLProvider sharedSettings] jsBundleURLForBundleRoot:bundleRoot fallbackResource:nil];
    RCTRootView *rootView = [[RCTRootView alloc] initWithBundleURL:jsCodeLocation
                                                        moduleName:moduleName
                                                 initialProperties:initialProperties
                                                     launchOptions:nil];
    return rootView;
}

@end
