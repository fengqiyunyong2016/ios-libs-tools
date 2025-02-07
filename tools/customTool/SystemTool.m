//
//  SystemTool.m
//  gezilicai
//
//  Created by 7heaven on 16/3/2.
//  Copyright © 2016年 yuexue. All rights reserved.
//

#include "SystemTool.h"
#include <sys/types.h>
#include <sys/sysctl.h>
#import <sys/utsname.h>

#define MIB_SIZE 2

NSTimeInterval getSystemBootTime(){
    int mib[MIB_SIZE];
    size_t size;
    struct timeval  boottime;
    
    mib[0] = CTL_KERN;
    mib[1] = KERN_BOOTTIME;
    size = sizeof(boottime);
    if (sysctl(mib, MIB_SIZE, &boottime, &size, NULL, 0) != -1)
    {
        // successful call
        return boottime.tv_sec;
        
        
        
    }
    
    return 0;
}


@implementation SystemTool

+ (Platform)devicePlatform{
    struct utsname systemInfo;
    uname(&systemInfo);
    NSString *platform = [NSString stringWithCString:systemInfo.machine encoding:NSUTF8StringEncoding];
    
    //iPhone 系列
    //    if ([platform isEqualToString:@"iPhone1,1"])    return @"iPhone 1G";
    //    if ([platform isEqualToString:@"iPhone1,2"])    return @"iPhone 3G";
    //    if ([platform isEqualToString:@"iPhone2,1"])    return @"iPhone 3GS";
    if ([platform isEqualToString:@"iPhone3,1"])    return Platform_4;
    if ([platform isEqualToString:@"iPhone3,2"])    return Platform_4V;
    if ([platform isEqualToString:@"iPhone4,1"])    return Platform_4S;
    if ([platform isEqualToString:@"iPhone5,1"])    return Platform_5;
    if ([platform isEqualToString:@"iPhone5,2"])    return Platform_5;
    if ([platform isEqualToString:@"iPhone5,3"])    return Platform_5C;
    if ([platform isEqualToString:@"iPhone5,4"])    return Platform_5C;
    if ([platform isEqualToString:@"iPhone6,1"])    return Platform_5S;
    if ([platform isEqualToString:@"iPhone6,2"])    return Platform_5S;
    if ([platform isEqualToString:@"iPhone8,4"])    return Platform_SE;    
    if ([platform isEqualToString:@"iPhone7,1"])    return Platform_6P;
    if ([platform isEqualToString:@"iPhone7,2"])    return Platform_6;
    if ([platform isEqualToString:@"iPhone8,1"])    return Platform_6S;
    if ([platform isEqualToString:@"iPhone8,2"])    return Platform_6SP;
    if ([platform isEqualToString:@"iPhone9,1"])    return Platform_7;
    if ([platform isEqualToString:@"iPhone9,3"])    return Platform_7;
    if ([platform isEqualToString:@"iPhone9,2"])    return Platform_7P;
    if ([platform isEqualToString:@"iPhone9,4"])    return Platform_7P;
    if ([platform isEqualToString:@"iPhone10,1"])   return Platform_8;
    if ([platform isEqualToString:@"iPhone10,4"])   return Platform_8;
    if ([platform isEqualToString:@"iPhone10,2"])   return Platform_8P;
    if ([platform isEqualToString:@"iPhone10,5"])   return Platform_8P;
    if ([platform isEqualToString:@"iPhone10,3"])   return Platform_X;
    if ([platform isEqualToString:@"iPhone10,6"])   return Platform_X;
    
    
    return Platform_Unknow;
}

@end
