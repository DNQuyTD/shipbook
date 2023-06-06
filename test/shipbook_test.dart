import 'package:flutter_test/flutter_test.dart';
import 'package:shipbook/src/shipbook.dart';
import 'package:shipbook/src/shipbook_platform_interface.dart';
import 'package:shipbook/src/shipbook_method_channel.dart';
import 'package:plugin_platform_interface/plugin_platform_interface.dart';

class MockShipbookPlatform
    with MockPlatformInterfaceMixin
    implements ShipbookPlatform {

  @override
  Future<String?> getPlatformVersion() => Future.value('42');

  @override
  Future<void> d(String tag, String message) {
    // TODO: implement d
    throw UnimplementedError();
  }

  @override
  Future<void> e(String tag, String message) {
    // TODO: implement e
    throw UnimplementedError();
  }

  @override
  Future<void> i(String tag, String message) {
    // TODO: implement i
    throw UnimplementedError();
  }

  @override
  Future<void> start(String id1, String id2) {
    // TODO: implement start
    throw UnimplementedError();
  }

  @override
  Future<void> v(String tag, String message) {
    // TODO: implement v
    throw UnimplementedError();
  }

  @override
  Future<void> w(String tag, String message) {
    // TODO: implement w
    throw UnimplementedError();
  }
}

void main() {
  final ShipbookPlatform initialPlatform = ShipbookPlatform.instance;

  test('$MethodChannelShipbook is the default instance', () {
    expect(initialPlatform, isInstanceOf<MethodChannelShipbook>());
  });

  test('getPlatformVersion', () async {
    Shipbook shipbookPlugin = Shipbook();
    MockShipbookPlatform fakePlatform = MockShipbookPlatform();
    ShipbookPlatform.instance = fakePlatform;

    expect(await shipbookPlugin.getPlatformVersion(), '42');
  });
}
