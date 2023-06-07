import 'shipbook_platform_interface.dart';

class Log {
  static Future<void> e(String tag, String message) {
    return ShipbookPlatform.instance.e(tag, message);
  }
  static Future<void> w(String tag, String message) {
    return ShipbookPlatform.instance.w(tag, message);
  }
  static Future<void> i(String tag, String message) {
    return ShipbookPlatform.instance.i(tag, message);
  }
  static Future<void> d(String tag, String message) {
    return ShipbookPlatform.instance.d(tag, message);
  }
  static Future<void> v(String tag, String message) {
    return ShipbookPlatform.instance.v(tag, message);
  }
}
