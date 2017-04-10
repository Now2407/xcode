//
//  notifi.swift
//  beacons
//
//  Created by Noah Marriott on 2/6/16.
//  Copyright © 2016 Noah Marriott. All rights reserved.
//

import UIKit

class notifi {
    class func sendLocalNotification(msg: String){
        let notication = UILocalNotification()
        notication.alertBody = msg
        notication.soundName = "Default.mp3"
        UIApplication.sharedApplication().scheduleLocalNotification(notication)
    }
}

