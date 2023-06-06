package com.example.shipbook

import android.app.Application
import android.content.Context
import androidx.annotation.NonNull

import io.flutter.embedding.engine.plugins.FlutterPlugin
import io.flutter.plugin.common.MethodCall
import io.flutter.plugin.common.MethodChannel
import io.flutter.plugin.common.MethodChannel.MethodCallHandler
import io.flutter.plugin.common.MethodChannel.Result
import io.shipbook.shipbooksdk.Log
import io.shipbook.shipbooksdk.ShipBook

/** ShipbookPlugin */
class ShipbookPlugin: FlutterPlugin, MethodCallHandler {
  /// The MethodChannel that will the communication between Flutter and native Android
  ///
  /// This local reference serves to register the plugin with the Flutter Engine and unregister it
  /// when the Flutter Engine is detached from the Activity
  private lateinit var channel : MethodChannel

  private lateinit var context: Context

  override fun onAttachedToEngine(@NonNull flutterPluginBinding: FlutterPlugin.FlutterPluginBinding) {
    this.context = flutterPluginBinding.applicationContext
    channel = MethodChannel(flutterPluginBinding.binaryMessenger, "shipbook")
    channel.setMethodCallHandler(this)
  }

  override fun onMethodCall(@NonNull call: MethodCall, @NonNull result: Result) {
    when (call.method) {
      "getPlatformVersion" -> result.success("Android ${android.os.Build.VERSION.RELEASE}")
      "start" -> start(call, result)
      "e" -> e(call, result)
      "w" -> w(call, result)
      "i" -> i(call, result)
      "d" -> d(call, result)
      "v" -> v(call, result)
      else -> {
        result.notImplemented()
      }
    }
  }

  override fun onDetachedFromEngine(@NonNull binding: FlutterPlugin.FlutterPluginBinding) {
    channel.setMethodCallHandler(null)
  }

  private fun start(@NonNull call: MethodCall, @NonNull result: Result) {
    var arguments = call.arguments as Map<String, Any>
    var appId = arguments["appId"] as String
    var appKey = arguments["appKey"] as String
    ShipBook.start(context as Application, appId, appKey);
    result.success(null)
  }

  private fun e(@NonNull call: MethodCall, @NonNull result: Result) {
    var arguments = call.arguments as Map<String, Any>
    var tag = arguments["tag"] as String
    var message = arguments["message"] as String
    Log.e(tag, message);
    result.success(null)
  }

  private fun w(@NonNull call: MethodCall, @NonNull result: Result) {
    var arguments = call.arguments as Map<String, Any>
    var tag = arguments["tag"] as String
    var message = arguments["message"] as String
    Log.w(tag, message);
    result.success(null)
  }

  private fun i(@NonNull call: MethodCall, @NonNull result: Result) {
    var arguments = call.arguments as Map<String, Any>
    var tag = arguments["tag"] as String
    var message = arguments["message"] as String
    Log.i(tag, message);
    result.success(null)
  }

  private fun d(@NonNull call: MethodCall, @NonNull result: Result) {
    var arguments = call.arguments as Map<String, Any>
    var tag = arguments["tag"] as String
    var message = arguments["message"] as String
    Log.d(tag, message);
    result.success(null)
  }

  private fun v(@NonNull call: MethodCall, @NonNull result: Result) {
    var arguments = call.arguments as Map<String, Any>
    var tag = arguments["tag"] as String
    var message = arguments["message"] as String
    Log.v(tag, message);
    result.success(null)
  }
}
