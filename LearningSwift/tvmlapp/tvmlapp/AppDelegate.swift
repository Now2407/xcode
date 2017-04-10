//
//  AppDelegate.swift
//  tvmlapp
//
//  Created by Noah Marriott on 2/18/16.
//  Copyright © 2016 Noah Marriott. All rights reserved.
//

import UIKit
import TVMLKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate, TVApplicationControllerDelegate {
    
     var window: UIWindow?

    var appContoller: TVApplicationController?
    
    static let TVBaseURL = "http://localhost:9191/"
    static let TVBootURL = "\(AppDelegate.TVBaseURL)js/app.js"
    
    func application(application: UIApplication, didFinishLaunchingWithOptions launchOptions: [NSObject: AnyObject]?) -> Bool {

       window = UIWindow(frame: UIScreen.mainScreen().bounds)
        
        let appControllerContext = TVApplicationControllerContext()
        
        if let javascriptURL = NSURL(string: AppDelegate.TVBootURL){
            appControllerContext.javaScriptApplicationURL = javascriptURL
        }
        
        appControllerContext.launchOptions["BASEURL"] = AppDelegate.TVBaseURL
        
        appContoller = TVApplicationController(context: appControllerContext, window: window, delegate: self)
        
        return true
        
        
    }


}

