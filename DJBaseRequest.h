//
//  DJBaseRequest.h
//  KCKC
//
//  Created by 刘文江 on 2016/10/31.
//  Copyright © 2016年 刘文江. All rights reserved.
//

#import <YTKNetwork/YTKNetwork.h>
/*
 *  实现是网络请求的二次封装
 */
@interface DJBaseRequest : YTKBaseRequest

- (instancetype)initWithRequestURL:(NSString *)url params:(NSDictionary *)params;

@end
