//
//  AppDelegate.swift
//  TableViper
//
//  Created by Isa Aliev on 20.01.18.
//  Copyright © 2018 IA. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
        window = UIWindow(frame: UIScreen.main.bounds)
        
        if let window = window {
            RootWireframe.setupWith(window)
        }
        
        return true
    }

}

