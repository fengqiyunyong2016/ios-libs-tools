//
//  SystemTool.h
//  gezilicai
//
//  Created by 7heaven on 16/3/2.
//  Copyright © 2016年 yuexue. All rights reserved.
//

#ifndef Gezilicai_SystemTool
#define Gezilicai_SystemTool

typedef NS_ENUM(NSInteger, Platform){
    Platform_Unknow = 0,
    
    Platform_4,
    Platform_4V,
    Platform_4S,
    Platform_5,
    Platform_5S,
    Platform_5C,
    Platform_SE,
    
    Platform_6,
    Platform_6P,
    Platform_6S,
    Platform_6SP,
    
    Platform_7,
    Platform_7P,
    
    Platform_8,
    Platform_8P,
    
    Platform_X,
};

NSTimeInterval getSystemBootTime();

@interface SystemTool : NSObject

+ (Platform)devicePlatform;

@end

#endif
