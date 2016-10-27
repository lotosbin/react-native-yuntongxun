//
//  RCTYuntongxunIMLib.h
//  RCTYuntongxunIMLib


#import "RCTBridgeModule.h"
#import "RCTEventDispatcher.h"
#import "RCTBridge.h"
#import <RongIMLib/RongIMLib.h>
#import <RongIMLib/RCIMClient.h>


@interface RCTYuntongxunIMLib: NSObject <RCTBridgeModule, RCIMClientReceiveMessageDelegate> {
    
}
-(RCIMClient *) getClient;

- (void)onReceived:(RCMessage *)message
              left:(int)nLeft
            object:(id)object;

-(void)sendEvent:(NSString *)name body:(NSMutableDictionary *)body;

-(void)sendMessage:(NSString *)type
          targetId:(NSString *)targetId
           content:(RCMessageContent *)content
       pushContent:(NSString *) pushContent
           resolve:(RCTPromiseResolveBlock)resolve
            reject:(RCTPromiseRejectBlock)reject;

-(NSMutableDictionary *)getEmptyBody;

@end
