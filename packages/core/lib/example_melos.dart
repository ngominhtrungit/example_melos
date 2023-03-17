
import 'example_melos_platform_interface.dart';

class ExampleMelos {
  Future<String?> getPlatformVersion() {
    return ExampleMelosPlatform.instance.getPlatformVersion();
  }
}
