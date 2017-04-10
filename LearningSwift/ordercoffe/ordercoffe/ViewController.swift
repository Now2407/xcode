//
//  ViewController.swift
//  ordercoffe
//
//  Created by Noah Marriott on 2/7/16.
//  Copyright © 2016 Noah Marriott. All rights reserved.
//

import UIKit
import CoreLocation

class ViewController: UIViewController, CLLocationManagerDelegate {
    
    var manager = CLLocationManager()
    
    var last: CLProximity?
    
    let region = CLBeaconRegion(proximityUUID: NSUUID(UUIDString: "07775DD0-111B-11E4-9191-0800200C9A66")!, identifier: "Beacon")


    override func viewDidLoad() {
        super.viewDidLoad()
        
    
        
        manager.delegate = self
        manager.requestAlwaysAuthorization()
        //manager.startRangingBeaconsInRegion(region)
        //manager.startMonitoringForRegion(region)
        ///manager.allowsBackgroundLocationUpdates = true
        //manager.startUpdatingLocation()
        
        
        
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    
  

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func locationManager(manager: CLLocationManager, didRangeBeacons beacons: [CLBeacon], inRegion region: CLBeaconRegion) {
        
        
        if beacons.count > 0{
            let beacon = beacons.first! as CLBeacon
            if beacon.proximity == last || beacon.proximity == CLProximity.Unknown {
                
                return
            
            }
            
            last = beacon.proximity
            
            updateDistance(last!)
            
            
            
        }
        
    }
    
    func updateDistance(distance: CLProximity){
        
        switch distance {
            
        case .Far:
 sendnoti()
            
    print("far")
            
        case .Near:
            

            
            print("near")

        case .Immediate:
            print("really close")
            //tigger()

            
        case .Unknown:
            print("error")

        }
    }
    
    func tigger(){
        self.performSegueWithIdentifier("seedeal", sender: self)
    }
    func sendnoti(){

        var notification = UILocalNotification()
        notification.alertBody = "20% off coffe"
        notification.soundName = "Default.mp3"
        UIApplication.sharedApplication().scheduleLocalNotification(notification)
            
    }
    
    

}

