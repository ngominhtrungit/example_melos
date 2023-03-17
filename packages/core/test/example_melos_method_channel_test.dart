import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:example_melos/example_melos_method_channel.dart';

void main() {
  MethodChannelExampleMelos platform = MethodChannelExampleMelos();
  const MethodChannel channel = MethodChannel('example_melos');

  TestWidgetsFlutterBinding.ensureInitialized();

  setUp(() {
    channel.setMockMethodCallHandler((MethodCall methodCall) async {
      return '42';
    });
  });

  tearDown(() {
    channel.setMockMethodCallHandler(null);
  });

  test('getPlatformVersion', () async {
    expect(await platform.getPlatformVersion(), '42');
  });
}
