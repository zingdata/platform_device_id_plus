#import "PlatformDeviceIdPlugin.h"
#if __has_include(<platform_device_id_upgrade/platform_device_id_upgrade-Swift.h>)
#import <platform_device_id_upgrade/platform_device_id_upgrade-Swift.h>
#else
// Support project import fallback if the generated compatibility header
// is not copied when this plugin is created as a library.
// https://forums.swift.org/t/swift-static-libraries-dont-copy-generated-objective-c-header/19816
#import "platform_device_id_upgrade-Swift.h"
#endif

@implementation PlatformDeviceIdPlugin
+ (void)registerWithRegistrar:(NSObject<FlutterPluginRegistrar>*)registrar {
  [SwiftPlatformDeviceIdPlugin registerWithRegistrar:registrar];
}
@end