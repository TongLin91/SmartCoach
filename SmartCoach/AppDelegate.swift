//
//  AppDelegate.swift
//  SmartCoach
//
//  Created by Tong Lin on 12/18/18.
//  Copyright © 2018 TongL. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        
        let coachNC = CoachRouter.makeCoachNavigationController()
        
        window = UIWindow(frame: UIScreen.main.bounds)
        window?.rootViewController = coachNC
        window?.makeKeyAndVisible()
        
        return true
    }
}

