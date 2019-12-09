import UIKit
import Flutter

@UIApplicationMain
@objc class AppDelegate: FlutterAppDelegate {
  override func application(
    _ application: UIApplication,
    didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?
  ) -> Bool {
    
    let controller = self.window.rootViewController as! FlutterViewController
    
    let channel = FlutterMethodChannel.init(name: "exameple.com/value", binaryMessenger: controller.binaryMessenger)
    channel.setMethodCallHandler { (FlutterMethodCall, result) in
        if ( FlutterMethodCall.method == "getValue") {
            result("성공")
        }else{
            result(FlutterMethodNotImplemented)
        }
    }
    
    GeneratedPluginRegistrant.register(with: self)
    return super.application(application, didFinishLaunchingWithOptions: launchOptions)
  }
}
