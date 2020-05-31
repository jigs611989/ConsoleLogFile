//
//  AppDelegate.swift
//  ConsoleLogFileExample
//
//  Created by Jignesh Patel on 17/05/20.
//  Copyright © 2020 Jignesh Patel. All rights reserved.
//

import UIKit
import ConsoleLogFile

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {
    
    var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        ConsoleLogFile.shared.createLog(fileName: "consoleFile", maxFileSizeInMB: 5, shouldOverrideOldFile: false)
        // Override point for customization after application launch.
        return true
    }
}

