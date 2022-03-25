import UIKit
import Flutter
import OkHi

@UIApplicationMain
@objc class AppDelegate: FlutterAppDelegate {
    private let okverify = OkVerify()
    
    override func application(
        _ application: UIApplication,
        didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?
    ) -> Bool {
        if launchOptions?[UIApplication.LaunchOptionsKey.location] != nil {
            okverify.startMonitoring()
        }
        GeneratedPluginRegistrant.register(with: self)
        return super.application(application, didFinishLaunchingWithOptions: launchOptions)
    }
}
