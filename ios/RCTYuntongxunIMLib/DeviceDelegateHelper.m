//
//  DeviceDelegateHelper.m
//  RCTYuntongxunIMLib
//
//  Created by liubinbin on 27/10/2016.
//  Copyright © 2016 lovebing.org. All rights reserved.
//

#import <Foundation/Foundation.h>

#import "DeviceDelegateHelper.h"
@implementation DeviceDelegateHelper : NSObject {
    
}
//第一步：创建单例方法

+(DeviceDelegateHelper*)sharedInstance
{
    
    static DeviceDelegateHelper *devicedelegatehelper;
    
    static dispatch_once_t devicedelegatehelperonce;
    
    dispatch_once(&devicedelegatehelperonce, ^{
        
        devicedelegatehelper = [[DeviceDelegateHelper alloc] init];
        
    });
    
    return devicedelegatehelper;
    
}
@end
