//
//  AppcompassModule.m
//  Pods
//

#import "AppcompassModule.h"
#import <WeexPluginLoader/WeexPluginLoader.h>
#import "AppCompass.h"

@interface AppcompassModule ()

@end

@implementation AppcompassModule

WX_PlUGIN_EXPORT_MODULE(eeuiCompass, AppcompassModule)
WX_EXPORT_METHOD(@selector(get:))
WX_EXPORT_METHOD(@selector(watch::))
WX_EXPORT_METHOD(@selector(clearWatch:))

- (void)get:(WXModuleCallback)callback{
    [[AppCompass singletonManger] get:^(id error,id result) {
        if (callback) {
            if (error) {
                callback(error);
            } else {
                callback(result);
            }
        }
    }];
}

- (void)watch:(NSDictionary *)options :(WXModuleKeepAliveCallback)callback{
    [[AppCompass singletonManger] watch:options :^(id error,id result) {
        if (callback) {
            if (error) {
                callback(error, YES);
            } else {
                callback(result, YES);
            }
        }
    }];
}

- (void)clearWatch:(WXModuleCallback)callback{
    [[AppCompass singletonManger] clearWatch:^(id error,id result) {
        if (callback) {
            if (error) {
                callback(error);
            } else {
                callback(result);
            }
        }
    }];
}

- (void)dealloc{
    [[AppCompass singletonManger] close];
}

@end
