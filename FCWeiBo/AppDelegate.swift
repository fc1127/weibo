//
//  AppDelegate.swift
//  FCWeiBo
//
//  Created by FC on 2017/10/11.
//  Copyright © 2017年 God bless never bug. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?


    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
        
        window = UIWindow()
        
        window?.backgroundColor=UIColor.white
        
        window?.rootViewController=FCTarBarController()
        
        window?.makeKeyAndVisible()
        
    
        
        return true
        
    }
    
    
    
    

    

}

