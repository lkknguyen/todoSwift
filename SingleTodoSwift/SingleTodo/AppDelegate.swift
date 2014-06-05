//
//  AppDelegate.swift
//  SingleTodo
//
//  Created by Abraham Kuri on 6/3/14.
//  Copyright (c) 2014 Icalia Labs. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {
                            
    var window: UIWindow?


    func application(application: UIApplication, didFinishLaunchingWithOptions launchOptions: NSDictionary?) -> Bool {
        // Override point for customization after application launch
        
        var todoTableVC: ILTodoTableViewController = ILTodoTableViewController()
        var navigationController: UINavigationController = UINavigationController(rootViewController: todoTableVC)

        
        self.window!.rootViewController = navigationController
        
        
        return true
    }

}

