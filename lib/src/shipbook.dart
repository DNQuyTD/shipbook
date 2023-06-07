import 'shipbook_platform_interface.dart';

class Shipbook {
  Future<String?> getPlatformVersion() {
    return ShipbookPlatform.instance.getPlatformVersion();
  }

  static Future<void> start(String appId, String appKey) {
    return ShipbookPlatform.instance.start(appId, appKey);
  }
}
