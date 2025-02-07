//
//  AppTools.m
//  gezilicai
//
//  Created by 7heaven on 2/3/16.
//  Copyright © 2016 yuexue. All rights reserved.
//

#import "AppTools.h"
#import <sys/utsname.h>
@implementation AppTools

static CGFloat __iOS_version;
static NSString *__bundle_id;
static NSString *__current_model_name;
static NSString *__bundle_id;

static NSString *__ua_string;

static NSString *__app_version;
static NSString *__app_build_version;
static NSString *__channel_name;
static NSString *__device_model_name;


//static NSString *__appstore_comment_address;

+ (CGFloat) iOSVersion{
    @synchronized(self) {
        if(__iOS_version == 0){
            __iOS_version = [[[UIDevice currentDevice] systemVersion] floatValue];
        }
        
        return __iOS_version;
    }
}

+ (NSString *) modelName{
    @synchronized(self) {
        if(!__current_model_name){
            struct utsname systemInfo;
            uname(&systemInfo);
            
            __current_model_name = [NSString stringWithCString:systemInfo.machine encoding:NSUTF8StringEncoding];
        }
        
        return __current_model_name;
    }
}

+ (NSString *) bundleId{
    @synchronized(self) {
        if(!__bundle_id){
            __bundle_id = [[NSBundle mainBundle] bundleIdentifier];
        }
        
        return __bundle_id;
    }
}

+ (NSString *) userAgentString{
    @synchronized(self) {
        if(!__ua_string){
            __ua_string = [NSString stringWithFormat:@"%@/%@",[[[NSBundle mainBundle]infoDictionary] objectForKey:@"CFBundleIdentifier"],[[[NSBundle mainBundle] infoDictionary] objectForKey:@"CFBundleShortVersionString"]];
        }
        
        return __ua_string;
    }
}

+ (NSString *) appVersion{
    @synchronized(self) {
        if(!__app_version){
            __app_version = [NSString stringWithFormat:@"%@", [[[NSBundle mainBundle] infoDictionary] objectForKey:@"CFBundleShortVersionString"]];
        }
        
        return __app_version;
    }
}

+ (NSString *) appBuildVersion{
    @synchronized(self){
        if(!__app_build_version){
            __app_build_version = [NSString stringWithFormat:@"%@", [[[NSBundle mainBundle] infoDictionary] objectForKey:@"CFBundleVersion"]];
        }
        
        return __app_build_version;
    }
}

+ (NSString *) channelName{
    @synchronized(self) {
        if(!__channel_name){
            __channel_name = @"app_store";
        }
        
        return __channel_name;
    }
}

+ (NSString*)deviceModelNameString{
    struct utsname systemInfo;
    uname(&systemInfo);
    
    NSString *deviceModel = [NSString stringWithCString:systemInfo.machine encoding:NSASCIIStringEncoding];
    
    
     if ([deviceModel isEqualToString:@"iPhone3,1"])    return @"iPhone 4";
     if ([deviceModel isEqualToString:@"iPhone3,2"])    return @"iPhone 4";
     if ([deviceModel isEqualToString:@"iPhone3,3"])    return @"iPhone 4";
     if ([deviceModel isEqualToString:@"iPhone4,1"])    return @"iPhone 4S";
     if ([deviceModel isEqualToString:@"iPhone5,1"])    return @"iPhone 5";
     if ([deviceModel isEqualToString:@"iPhone5,2"])    return @"iPhone 5 (GSM+CDMA)";
     if ([deviceModel isEqualToString:@"iPhone5,3"])    return @"iPhone 5c (GSM)";
     if ([deviceModel isEqualToString:@"iPhone5,4"])    return @"iPhone 5c (GSM+CDMA)";
     if ([deviceModel isEqualToString:@"iPhone6,1"])    return @"iPhone 5s (GSM)";
     if ([deviceModel isEqualToString:@"iPhone6,2"])    return @"iPhone 5s (GSM+CDMA)";
     if ([deviceModel isEqualToString:@"iPhone7,1"])    return @"iPhone 6 Plus";
     if ([deviceModel isEqualToString:@"iPhone7,2"])    return @"iPhone 6";
     if ([deviceModel isEqualToString:@"iPhone8,1"])    return @"iPhone 6s";
     if ([deviceModel isEqualToString:@"iPhone8,2"])    return @"iPhone 6s Plus";
     if ([deviceModel isEqualToString:@"iPhone8,4"])    return @"iPhone SE";
     if ([deviceModel isEqualToString:@"iPhone9,1"])    return @"iPhone 7";
     if ([deviceModel isEqualToString:@"iPhone9,2"])    return @"iPhone 7 Plus";
     if ([deviceModel isEqualToString:@"iPhone9,3"])    return @"iPhone 7";
     if ([deviceModel isEqualToString:@"iPhone9,4"])    return @"iPhone 7 Plus";
     if ([deviceModel isEqualToString:@"iPhone10,1"])   return @"iPhone_8";
     if ([deviceModel isEqualToString:@"iPhone10,4"])   return @"iPhone_8";
     if ([deviceModel isEqualToString:@"iPhone10,2"])   return @"iPhone_8_Plus";
     if ([deviceModel isEqualToString:@"iPhone10,5"])   return @"iPhone_8_Plus";
     if ([deviceModel isEqualToString:@"iPhone10,3"])   return @"iPhone X";
     if ([deviceModel isEqualToString:@"iPhone10,6"])   return @"iPhone X";
     if ([deviceModel isEqualToString:@"iPhone11,8"])   return @"iPhone XR";
     if ([deviceModel isEqualToString:@"iPhone11,2"])   return @"iPhone XS";
     if ([deviceModel isEqualToString:@"iPhone11,6"])   return @"iPhone XS Max";
     if ([deviceModel isEqualToString:@"iPhone11,4"])   return @"iPhone XS Max";
     if ([deviceModel isEqualToString:@"iPhone12,1"])   return @"iPhone 11";
     if ([deviceModel isEqualToString:@"iPhone12,3"])   return @"iPhone 11 Pro";
     if ([deviceModel isEqualToString:@"iPhone12,5"])   return @"iPhone 11 Pro Max";
     if ([deviceModel isEqualToString:@"iPhone12,8"])   return @"iPhone SE (2nd generation)";
     if ([deviceModel isEqualToString:@"iPhone13,1"])   return @"iPhone 12 mini";
     if ([deviceModel isEqualToString:@"iPhone13,2"])   return @"iPhone 12";
     if ([deviceModel isEqualToString:@"iPhone13,3"])   return @"iPhone 12 Pro";
     if ([deviceModel isEqualToString:@"iPhone13,4"])   return @"iPhone 12 Pro Max";
         
     if ([deviceModel isEqualToString:@"iPod1,1"])      return @"iPod Touch 1G";
     if ([deviceModel isEqualToString:@"iPod2,1"])      return @"iPod Touch 2G";
     if ([deviceModel isEqualToString:@"iPod3,1"])      return @"iPod Touch 3G";
     if ([deviceModel isEqualToString:@"iPod4,1"])      return @"iPod Touch 4G";
     if ([deviceModel isEqualToString:@"iPod5,1"])      return @"iPod Touch (5 Gen)";
     if ([deviceModel isEqualToString:@"iPad1,1"])      return @"iPad";
     if ([deviceModel isEqualToString:@"iPad1,2"])      return @"iPad 3G";
     if ([deviceModel isEqualToString:@"iPad2,1"])      return @"iPad 2 (WiFi)";
     if ([deviceModel isEqualToString:@"iPad2,2"])      return @"iPad 2";
     if ([deviceModel isEqualToString:@"iPad2,3"])      return @"iPad 2 (CDMA)";
     if ([deviceModel isEqualToString:@"iPad2,4"])      return @"iPad 2";
     if ([deviceModel isEqualToString:@"iPad2,5"])      return @"iPad Mini (WiFi)";
     if ([deviceModel isEqualToString:@"iPad2,6"])      return @"iPad Mini";
     if ([deviceModel isEqualToString:@"iPad2,7"])      return @"iPad Mini (GSM+CDMA)";
     if ([deviceModel isEqualToString:@"iPad3,1"])      return @"iPad 3 (WiFi)";
     if ([deviceModel isEqualToString:@"iPad3,2"])      return @"iPad 3 (GSM+CDMA)";
     if ([deviceModel isEqualToString:@"iPad3,3"])      return @"iPad 3";
     if ([deviceModel isEqualToString:@"iPad3,4"])      return @"iPad 4 (WiFi)";
     if ([deviceModel isEqualToString:@"iPad3,5"])      return @"iPad 4";
     if ([deviceModel isEqualToString:@"iPad3,6"])      return @"iPad 4 (GSM+CDMA)";
     if ([deviceModel isEqualToString:@"iPad4,1"])      return @"iPad Air (WiFi)";
     if ([deviceModel isEqualToString:@"iPad4,2"])      return @"iPad Air (Cellular)";
     if ([deviceModel isEqualToString:@"iPad4,4"])      return @"iPad Mini 2 (WiFi)";
     if ([deviceModel isEqualToString:@"iPad4,5"])      return @"iPad Mini 2 (Cellular)";
     if ([deviceModel isEqualToString:@"iPad4,6"])      return @"iPad Mini 2";
     if ([deviceModel isEqualToString:@"iPad4,7"])      return @"iPad Mini 3";
     if ([deviceModel isEqualToString:@"iPad4,8"])      return @"iPad Mini 3";
     if ([deviceModel isEqualToString:@"iPad4,9"])      return @"iPad Mini 3";
     if ([deviceModel isEqualToString:@"iPad5,1"])      return @"iPad Mini 4 (WiFi)";
     if ([deviceModel isEqualToString:@"iPad5,2"])      return @"iPad Mini 4 (LTE)";
     if ([deviceModel isEqualToString:@"iPad5,3"])      return @"iPad Air 2";
     if ([deviceModel isEqualToString:@"iPad5,4"])      return @"iPad Air 2";
     if ([deviceModel isEqualToString:@"iPad6,3"])      return @"iPad Pro 9.7";
     if ([deviceModel isEqualToString:@"iPad6,4"])      return @"iPad Pro 9.7";
     if ([deviceModel isEqualToString:@"iPad6,7"])      return @"iPad Pro 12.9";
     if ([deviceModel isEqualToString:@"iPad6,8"])      return @"iPad Pro 12.9";
      
     if ([deviceModel isEqualToString:@"AppleTV2,1"])      return @"Apple TV 2";
     if ([deviceModel isEqualToString:@"AppleTV3,1"])      return @"Apple TV 3";
     if ([deviceModel isEqualToString:@"AppleTV3,2"])      return @"Apple TV 3";
     if ([deviceModel isEqualToString:@"AppleTV5,3"])      return @"Apple TV 4";
      
     if ([deviceModel isEqualToString:@"i386"])         return @"Simulator";
     if ([deviceModel isEqualToString:@"x86_64"])       return @"Simulator";
     return deviceModel;
}

+ (NSString*)deviceModelName{
   
    @synchronized(self){
        if(!__device_model_name){
            __device_model_name = [self deviceModelNameString];
        }
        return __device_model_name;
    }
}

//+ (NSString *) appStoreCommentAddress{
//    @synchronized(self) {
//        if(!__appstore_comment_address){
//            __appstore_comment_address = @"https://itunes.apple.com/us/app/ge-shang-ji-jin-ge-shang-li/id1112389855";
//        }
//        
//        return __appstore_comment_address;
//    }
//}

@end
