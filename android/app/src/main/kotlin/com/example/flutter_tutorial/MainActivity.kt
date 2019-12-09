package com.example.flutter_tutorial

import android.os.Bundle

import io.flutter.app.FlutterActivity
import io.flutter.plugin.common.MethodChannel
import io.flutter.plugins.GeneratedPluginRegistrant

class MainActivity: FlutterActivity() {
  companion object{
    const val CHANNEL = "exameple.com/value"
  }
  override fun onCreate(savedInstanceState: Bundle?) {
    super.onCreate(savedInstanceState)
    GeneratedPluginRegistrant.registerWith(this)

    MethodChannel(flutterView, CHANNEL).setMethodCallHandler{
      methodCall, result ->
        if (methodCall.method == "getValue") {
          result.success("성공")
        } else {
          result.notImplemented()
        }
    }
  }
}
