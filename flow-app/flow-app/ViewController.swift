//
//  ViewController.swift
//  flow-app
//
//  Created by Noah Marriott on 8/23/15.
//  Copyright (c) 2015 Noah Marriott. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        let notificationType = UIUserNotificationType.Alert | UIUserNotificationType.Badge | UIUserNotificationType.Sound
        let acceptAction = UIMutableUserNotificationAction()
        acceptAction.identifier = "Accept"
        acceptAction.title = "Accept"
        acceptAction.activationMode = UIUserNotificationActivationMode.Background
        acceptAction.destructive = false
        acceptAction.authenticationRequired = false
        
        let declineAction = UIMutableUserNotificationAction()
        declineAction.identifier = "Decline"
        declineAction.title = "Decline"
        declineAction.activationMode = UIUserNotificationActivationMode.Background
        declineAction.destructive = false
        declineAction.authenticationRequired = false
        
        
        let category = UIMutableUserNotificationCategory()
        category.identifier = "invite"
        category.setActions([acceptAction, declineAction], forContext: UIUserNotificationActionContext.Default)
        let categories = NSSet(array: [category])
        let settings = UIUserNotificationSettings(forTypes: notificationType, categories: categories as Set<NSObject>)
        application.registerUserNotificationSettings(settings)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

