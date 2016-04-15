//
//  UUTokenNetwork.m
//  boleketang
//
//  Created by zhuochenming on 16/4/15.
//  Copyright © 2016年 zhuochenming. All rights reserved.
//

#import "UUTokenNetwork.h"

@implementation UUTokenNetwork

+ (void)GET:(NSString *)URLString
 parameters:(id)parameters
    success:(void (^)(id responseObject))success
    failure:(void (^)(NSError *error, id responseObject))failure {
    UUNetworkSession *manager = [UUNetworkSession manager];
    NSString *token = [NSString stringWithFormat:@"token %@", [[NSUserDefaults standardUserDefaults] objectForKey:@"token"]];
    
    [manager.requestSerializer setValue:token forHTTPHeaderField:@"Authorization"];
    manager.requestSerializer.timeoutInterval = 5.0;
    
    [manager GET:URLString parameters:parameters progress:^(NSProgress * _Nonnull downloadProgress) {
        
    } success:^(NSURLSessionDataTask * _Nonnull task, id  _Nullable responseObject) {
        success(responseObject);
    } failure:^(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error, id responseObject) {
        failure(error, responseObject);
    }];
}

+ (void)POST:(NSString *)URLString
  parameters:(id)parameters
     success:(void (^)(id responseObject))success
     failure:(void (^)(NSError *error, id responseObject))failure {
    UUNetworkSession *manager = [UUNetworkSession manager];
    NSString *token = [NSString stringWithFormat:@"token %@", [[NSUserDefaults standardUserDefaults] objectForKey:@"token"]];
    
    [manager.requestSerializer setValue:token forHTTPHeaderField:@"Authorization"];
    manager.requestSerializer.timeoutInterval = 5.0;
    
    [manager POST:URLString parameters:parameters progress:^(NSProgress * _Nonnull uploadProgress) {
        
    } success:^(NSURLSessionDataTask * _Nonnull task, id  _Nullable responseObject) {
        success(responseObject);
    } failure:^(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error, id responseObject) {
        failure(error, responseObject);
    }];
}

@end
