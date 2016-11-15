//
//  DJRequestNetWork.m
//  KCKC
//
//  Created by 刘文江 on 2016/10/31.
//  Copyright © 2016年 刘文江. All rights reserved.
//

#import "DJRequestNetWork.h"
#import "DJBaseRequest.h"

@implementation DJRequestNetWork

+ (void)requestWithURL:(NSString *)url params:(NSDictionary *)params success:(Success)successBlock failure:(Failure)failureBlock
{
    DJBaseRequest *baseRequest = [[DJBaseRequest alloc] initWithRequestURL:url params:params];
    NSLog(@"base%@",baseRequest);
    [baseRequest startWithCompletionBlockWithSuccess:^(__kindof YTKBaseRequest * _Nonnull request) {
        if (request.responseJSONObject)
        {
            successBlock(request.responseJSONObject);
        }
    } failure:^(__kindof YTKBaseRequest * _Nonnull request) {
         failureBlock(request.responseJSONObject);
    }];
    
}
@end
