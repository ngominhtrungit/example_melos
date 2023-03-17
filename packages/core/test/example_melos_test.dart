import 'package:flutter_test/flutter_test.dart';
import 'package:example_melos/example_melos.dart';
import 'package:example_melos/example_melos_platform_interface.dart';
import 'package:example_melos/example_melos_method_channel.dart';
import 'package:plugin_platform_interface/plugin_platform_interface.dart';

class MockExampleMelosPlatform
    with MockPlatformInterfaceMixin
    implements ExampleMelosPlatform {

  @override
  Future<String?> getPlatformVersion() => Future.value('42');
}

void main() {
  final ExampleMelosPlatform initialPlatform = ExampleMelosPlatform.instance;

  test('$MethodChannelExampleMelos is the default instance', () {
    expect(initialPlatform, isInstanceOf<MethodChannelExampleMelos>());
  });

  test('getPlatformVersion', () async {
    ExampleMelos exampleMelosPlugin = ExampleMelos();
    MockExampleMelosPlatform fakePlatform = MockExampleMelosPlatform();
    ExampleMelosPlatform.instance = fakePlatform;

    expect(await exampleMelosPlugin.getPlatformVersion(), '42');
  });
}
