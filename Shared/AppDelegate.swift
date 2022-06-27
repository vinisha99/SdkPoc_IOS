//
//  AppDelegate.swift
//  SdkPoc (iOS)
//
//  Created by Vinisha Nagarajan on 6/14/22.
//

import Foundation
import AWSDK

class AppDelegate: UIResponder, UIApplicationDelegate, AWControllerDelegate {
    func controllerDidFinishInitialCheck(error: NSError?) {
        if error != nil {
            AWLogError("Initial Check Done Error: \(String(describing: error))")
            print("Initial Check Done Error: \(String(describing: error))")
            return
        }
        AWLogInfo("SDK Initial Check Done!")
        print("SDK Initial Check Done!")
    }
    
    
    func application(_ application: UIApplication,
                     didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool
    {
        let awcontroller = AWController.clientInstance()
        awcontroller.callbackScheme = "myCallbackScheme"
        awcontroller.delegate = self
        awcontroller.start()
        return true
    }
    
}
