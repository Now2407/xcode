//
//  ViewController.swift
//  project22
//
//  Created by Noah Marriott on 2/7/16.
//  Copyright © 2016 Noah Marriott. All rights reserved.
//

import UIKit
import CoreLocation
class ViewController: UIViewController, CLLocationManagerDelegate {

    let manager = CLLocationManager()
    
    let region = CLBeaconRegion(proximityUUID: NSUUID(UUIDString: "07775DD0-111B-11E4-9191-0800200C9A66")!, identifier: "Beacon")

    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        manager.delegate = self
        manager.requestAlwaysAuthorization()
        
        
        
        // Do any additional setup after loading the view, typically from a nib.
    }
    @IBAction func startdeal(sender: AnyObject) {
        
        manager.startRangingBeaconsInRegion(region)
        manager.startMonitoringForRegion(region)
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
   
    
    func locationManager(manager: CLLocationManager, didRangeBeacons beacons: [CLBeacon], inRegion region: CLBeaconRegion) {
        
        if beacons.count > 0{
            let beacon = beacons.first! as CLBeacon
            
            
            updateDistance(beacon.proximity)
            
        }
        
        
    }
  
    func updateDistance(distance: CLProximity){
        
        switch distance {
        
        case .Far:
            print("far")
        
            
        case .Near:
            
            sendnoti()
            
           print("near")
            
        case .Immediate:
            print("intermeidate")
            
        case .Unknown:
            
            print("unknown")
            
            
            
    
    
    
    }
    }
    
    
    func sendnoti(){
        var notification = UILocalNotification()
        notification.alertBody = "20% off coffe"
        notification.soundName = "Default.mp3"
        UIApplication.sharedApplication().scheduleLocalNotification(notification)
    }
    

}

