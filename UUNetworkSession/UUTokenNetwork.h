//
//  UUTokenNetwork.h
//  boleketang
//
//  Created by zhuochenming on 16/4/15.
//  Copyright © 2016年 zhuochenming. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "UUNetworkSession.h"

@interface UUTokenNetwork : NSObject

+ (void)GET:(NSString *)URLString
 parameters:(id)parameters
    success:(void (^)(id responseObject))success
    failure:(void (^)(NSError *error, id responseObject))failure;

+ (void)POST:(NSString *)URLString
  parameters:(id)parameters
     success:(void (^)(id responseObject))success
     failure:(void (^)(NSError *error, id responseObject))failure;

@end
