import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

import 'shipbook_platform_interface.dart';

/// An implementation of [ShipbookPlatform] that uses method channels.
class MethodChannelShipbook extends ShipbookPlatform {
  /// The method channel used to interact with the native platform.
  @visibleForTesting
  final MethodChannel methodChannel = const MethodChannel('shipbook');

  @override
  Future<String?> getPlatformVersion() async {
    final String? version =
        await methodChannel.invokeMethod<String>('getPlatformVersion');
    return version;
  }

  @override
  Future<void> start(String appId, String appKey) async {
    await methodChannel.invokeMethod<String>(
        'start', <String, String>{'appId': appId, 'appKey': appKey});
  }

  @override
  Future<void> i(String tag, String message) async {
    await methodChannel.invokeMethod<String>(
        'i', <String, String>{'tag': tag, 'message': message});
  }
}
