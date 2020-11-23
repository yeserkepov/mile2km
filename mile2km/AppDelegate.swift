//
//  AppDelegate.swift
//  mile2km
//
//  Created by User on 11/20/20.
//

import UIKit

@available(iOS 13.0, *)
@main

class AppDelegate: UIResponder, UIApplicationDelegate {



    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        return true
    }

    // MARK: UIScen@available(iOS 13.0, *)
   
//    func eSessionLifecycle


    func application(_ application: UIApplication, configurationForConnecting connectingSceneSession: UISceneSession, options: UIScene.ConnectionOptions) -> UISceneConfiguration {
        // Called when a new scene session is being created.
        // Use this method to select a configuration to create if #available(iOS 13.0, *) {
        return UISceneConfiguration(name: "Default Configuration", sessionRole: connectingSceneSession.role)

    // Fallback on earlier versions
 
    }


func application(_ application: UIApplication, didDiscardSceneSessions sceneSessions: Set<UISceneSession>) {
        // Called when the user discards a scene session.
        // If any sessions were discarded while the application was not running, this will be called shortly after application:didFinishLaunchingWithOptions.
        // Use this method to release any resources that were specific to the discarded scenes, as they will not return.
    }


}

