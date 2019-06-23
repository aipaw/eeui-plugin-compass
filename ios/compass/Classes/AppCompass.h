//
//  AppCompass.h
//
//

#import <Foundation/Foundation.h>
#import <CoreLocation/CoreLocation.h>
#import <CoreLocation/CLLocationManager.h>
#import <CoreLocation/CLLocationManagerDelegate.h>
#import <CoreLocation/CLHeading.h>
#import <CoreMotion/CoreMotion.h>

@interface AppCompass : NSObject
typedef void (^AppCallback)(id error,id result);
+ (id)singletonManger;
- (void)get:(AppCallback)back;
- (void)watch:(NSDictionary *)options :(AppCallback)back;
- (void)clearWatch:(AppCallback)back;
- (void)close;
@end
