import 'package:plugin_platform_interface/plugin_platform_interface.dart';

import 'example_melos_method_channel.dart';

abstract class ExampleMelosPlatform extends PlatformInterface {
  /// Constructs a ExampleMelosPlatform.
  ExampleMelosPlatform() : super(token: _token);

  static final Object _token = Object();

  static ExampleMelosPlatform _instance = MethodChannelExampleMelos();

  /// The default instance of [ExampleMelosPlatform] to use.
  ///
  /// Defaults to [MethodChannelExampleMelos].
  static ExampleMelosPlatform get instance => _instance;

  /// Platform-specific implementations should set this with their own
  /// platform-specific class that extends [ExampleMelosPlatform] when
  /// they register themselves.
  static set instance(ExampleMelosPlatform instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  Future<String?> getPlatformVersion() {
    throw UnimplementedError('platformVersion() has not been implemented.');
  }
}
