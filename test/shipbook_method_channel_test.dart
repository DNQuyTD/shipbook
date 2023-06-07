import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:shipbook/src/shipbook_method_channel.dart';

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();

  final MethodChannelShipbook platform = MethodChannelShipbook();
  const MethodChannel channel = MethodChannel('shipbook');

  setUp(() {
    TestDefaultBinaryMessengerBinding.instance.defaultBinaryMessenger.setMockMethodCallHandler(
      channel,
      (MethodCall methodCall) async {
        return '42';
      },
    );
  });

  tearDown(() {
    TestDefaultBinaryMessengerBinding.instance.defaultBinaryMessenger.setMockMethodCallHandler(channel, null);
  });

  test('getPlatformVersion', () async {
    expect(await platform.getPlatformVersion(), '42');
  });
}
