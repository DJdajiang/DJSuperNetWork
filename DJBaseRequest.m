//
//  DJBaseRequest.m
//  KCKC
//
//  Created by 刘文江 on 2016/10/31.
//  Copyright © 2016年 刘文江. All rights reserved.
//

#import "DJBaseRequest.h"
#import <SVProgressHUD/SVProgressHUD.h>
@implementation DJBaseRequest
{
    NSString *_url;
    NSDictionary *_params;
}

- (instancetype)initWithRequestURL:(NSString *)url params:(NSDictionary *)params
{
    self = [super init];
    if (self)
    {
        _url = url;
        _params = params;
        
        
    }
    NSLog(@"_url%@",_url);
    return self;
}

//请求成功的回调
- (void)requestCompleteFilter
{
    
}

//请求失败的回调
- (void)requestFailedFilter
{
    [SVProgressHUD showErrorWithStatus:@"请求失败"];
}

//请求的url
- (NSString *)requestUrl
{
    return _url;
}

//请求连接的超时，默认的是60秒
- (NSTimeInterval)requestTimeoutInterval
{
    //设置10秒
    return 10;
}

//请求的参数
- (id)requestArgument
{
    return _params;
}

//http请求方法
- (YTKRequestMethod)requestMethod
{
    //返回get方法
    return YTKRequestMethodGet;
}

//请求数据类型
- (YTKRequestSerializerType)requestSerializerType
{
    //JSON数据
    return YTKRequestSerializerTypeJSON;
}

- (id)responseJSONObject
{
    if (self.responseData)
    {
        return [NSJSONSerialization JSONObjectWithData:self.responseData options:NSJSONReadingMutableContainers error:nil];
    }
    else
    {
        return nil;
    }
    
    
}

@end
