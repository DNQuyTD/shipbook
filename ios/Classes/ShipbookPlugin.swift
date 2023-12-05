import Flutter
import UIKit
import ShipBookSDK

public class ShipbookPlugin: NSObject, FlutterPlugin {
  public static func register(with registrar: FlutterPluginRegistrar) {
    let channel = FlutterMethodChannel(name: "shipbook", binaryMessenger: registrar.messenger())
    let instance = ShipbookPlugin()
    registrar.addMethodCallDelegate(instance, channel: channel)
  }

  public func handle(_ call: FlutterMethodCall, result: @escaping FlutterResult) {
    switch call.method {
    case "getPlatformVersion":
        result("iOS " + UIDevice.current.systemVersion)
    case "start":
        start(call, result)
    case "e":
        e(call, result)
    case "w":
        w(call, result)
    case "i":
        i(call, result)
    case "d":
        d(call, result)
    case "v":
        v(call, result)
    default:
        result(nil)
    }
  }

  private func start(_ call: FlutterMethodCall,_ result: @escaping FlutterResult) {
      let arguments = call.arguments as! Dictionary<String, Any>
      let appId = arguments["appId"] as! String;
      let appKey = arguments["appKey"] as! String;
      ShipBook.start(appId: appId, appKey: appKey);
      result(nil)
  }

  private func e(_ call: FlutterMethodCall,_ result: @escaping FlutterResult) {
      let arguments = call.arguments as! Dictionary<String, Any>
      let tag = arguments["tag"] as! String;
      let message = arguments["message"] as! String;

      let log = ShipBook.getLogger(tag);
      log.e(message);
      result(nil)
  }

  private func w(_ call: FlutterMethodCall,_ result: @escaping FlutterResult) {
      let arguments = call.arguments as! Dictionary<String, Any>
      let tag = arguments["tag"] as! String;
      let message = arguments["message"] as! String;

      let log = ShipBook.getLogger(tag);
      log.w(message);
      result(nil)
  }

  private func i(_ call: FlutterMethodCall,_ result: @escaping FlutterResult) {
      let arguments = call.arguments as! Dictionary<String, Any>
      let tag = arguments["tag"] as! String;
      let message = arguments["message"] as! String;

      let log = ShipBook.getLogger(tag);
      log.i(message);
      result(nil)
  }

  private func d(_ call: FlutterMethodCall,_ result: @escaping FlutterResult) {
      let arguments = call.arguments as! Dictionary<String, Any>
      let tag = arguments["tag"] as! String;
      let message = arguments["message"] as! String;

      let log = ShipBook.getLogger(tag);
      log.d(message);
      result(nil)
  }

  private func v(_ call: FlutterMethodCall,_ result: @escaping FlutterResult) {
      let arguments = call.arguments as! Dictionary<String, Any>
      let tag = arguments["tag"] as! String;
      let message = arguments["message"] as! String;

      let log = ShipBook.getLogger(tag);
      log.v(message);
      result(nil)
  }
}
