//
//  DeviceDelegateHelper.m
//  RCTYuntongxunIMLib
//
//  Created by liubinbin on 27/10/2016.
//  Copyright © 2016 lovebing.org. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

#import "DeviceDelegateHelper.h"

#define KNOTIFICATION_onConnected       @"KNOTIFICATION_onConnected"

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
//第二步：连接云通讯的服务平台，实现ECDelegateBase代理的方法

/**
 
 @brief 连接状态接口
 
 @discussion 监听与服务器的连接状态 V5.0版本接口
 
 @param state 连接的状态
 
 @param error 错误原因值
 
 */

-(void)onConnectState:(ECConnectState)state failed:(ECError*)error {
    
    switch (state) {
            
        case State_ConnectSuccess://连接成功
            
            [[NSNotificationCenter defaultCenter] postNotificationName:KNOTIFICATION_onConnected object:[ECError errorWithCode:ECErrorType_NoError]];
            
            break;
            
        case State_Connecting://正在连接
            
            [[NSNotificationCenter defaultCenter] postNotificationName:KNOTIFICATION_onConnected object:[ECError errorWithCode:ECErrorType_Connecting]];
            
            break;
            
        case State_ConnectFailed://失败
            
            [[NSNotificationCenter defaultCenter] postNotificationName:KNOTIFICATION_onConnected object:error];
            
            break;
            
        default:
            
            break;
            
    }
    
}
@end
