import 'package:plugin_platform_interface/plugin_platform_interface.dart';

import 'shipbook_method_channel.dart';

abstract class ShipbookPlatform extends PlatformInterface {
  /// Constructs a ShipbookPlatform.
  ShipbookPlatform() : super(token: _token);

  static final Object _token = Object();

  static ShipbookPlatform _instance = MethodChannelShipbook();

  /// The default instance of [ShipbookPlatform] to use.
  ///
  /// Defaults to [MethodChannelShipbook].
  static ShipbookPlatform get instance => _instance;

  /// Platform-specific implementations should set this with their own
  /// platform-specific class that extends [ShipbookPlatform] when
  /// they register themselves.
  static set instance(ShipbookPlatform instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  Future<String?> getPlatformVersion() {
    throw UnimplementedError('platformVersion() has not been implemented.');
  }

  Future<void> start(String appId, String appKey) {
    throw UnimplementedError('start() has not been implemented.');
  }

  Future<void> e(String tag, String message) {
    throw UnimplementedError('e() has not been implemented.');
  }

  Future<void> w(String tag, String message) {
    throw UnimplementedError('w() has not been implemented.');
  }

  Future<void> i(String tag, String message) {
    throw UnimplementedError('i() has not been implemented.');
  }

  Future<void> d(String tag, String message) {
    throw UnimplementedError('d() has not been implemented.');
  }

  Future<void> v(String tag, String message) {
    throw UnimplementedError('v() has not been implemented.');
  }
}
