import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

import 'example_melos_platform_interface.dart';

/// An implementation of [ExampleMelosPlatform] that uses method channels.
class MethodChannelExampleMelos extends ExampleMelosPlatform {
  /// The method channel used to interact with the native platform.
  @visibleForTesting
  final methodChannel = const MethodChannel('example_melos');

  @override
  Future<String?> getPlatformVersion() async {
    final version = await methodChannel.invokeMethod<String>('getPlatformVersion');
    return version;
  }
}
