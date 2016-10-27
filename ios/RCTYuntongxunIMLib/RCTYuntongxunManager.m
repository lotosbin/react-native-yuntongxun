//
//  RCTYuntongxunManager.m
//  RCTYuntongxunIMLib
//
//  Created by liubinbin on 27/10/2016.
//  Copyright © 2016 lovebing.org. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "RCTYuntongxunManager.h"
#import "RCTLog.h"
#import "ECDevice.h"
#import "DeviceDelegateHelper.h"

@implementation RCTYuntongxunManager

RCT_EXPORT_MODULE()

RCT_EXPORT_METHOD(addEvent:(NSString *)name location:(NSString *)location)
{
    RCTLogInfo(@"Pretending to create an event %@ at %@", name, location);
}

RCT_EXPORT_METHOD(initModule)
{
    [ECDevice sharedInstance].delegate = [DeviceDelegateHelper sharedInstance];

  RCTLogInfo(@"yuntongxun init");
}
@end
