#import "ExampleMelosPlugin.h"
#if __has_include(<example_melos/example_melos-Swift.h>)
#import <example_melos/example_melos-Swift.h>
#else
// Support project import fallback if the generated compatibility header
// is not copied when this plugin is created as a library.
// https://forums.swift.org/t/swift-static-libraries-dont-copy-generated-objective-c-header/19816
#import "example_melos-Swift.h"
#endif

@implementation ExampleMelosPlugin
+ (void)registerWithRegistrar:(NSObject<FlutterPluginRegistrar>*)registrar {
  [SwiftExampleMelosPlugin registerWithRegistrar:registrar];
}
@end
