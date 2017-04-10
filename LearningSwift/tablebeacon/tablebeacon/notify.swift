//
//  notify.swift
//  tablebeacon
//
//  Created by Noah Marriott on 2/7/16.
//  Copyright © 2016 Noah Marriott. All rights reserved.
//

import UIKit

class notify {
    
    class func sendLocalNotification(msg: String){
        let notication = UILocalNotification()
        notication.alertBody = msg
        notication.soundName = "Default.mp3"
        UIApplication.sharedApplication().scheduleLocalNotification(notication)
    }
    
}