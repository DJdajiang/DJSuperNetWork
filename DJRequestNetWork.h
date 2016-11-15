//
//  DJRequestNetWork.h
//  KCKC
//
//  Created by 刘文江 on 2016/10/31.
//  Copyright © 2016年 刘文江. All rights reserved.
//

#import <Foundation/Foundation.h>

/*
 *  数据请求类
 */

//定义两个block；
typedef void(^Success)(id success);
typedef void(^Failure)(id failure);

@interface DJRequestNetWork : NSObject

+ (void)requestWithURL:(NSString *)url params:(NSDictionary *)params success:(Success)successBlock failure:(Failure)failureBlock;

@end
