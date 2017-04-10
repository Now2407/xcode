//
//  checkinViewController.swift
//  tablebeacon
//
//  Created by Noah Marriott on 2/7/16.
//  Copyright © 2016 Noah Marriott. All rights reserved.
//

import UIKit
import CoreLocation

class checkinViewController: UIViewController, CLLocationManagerDelegate{
    
    var locationManager = CLLocationManager()
    
    let region = CLBeaconRegion(proximityUUID: NSUUID(UUIDString: "07775DD0-111B-11E4-9191-0800200C9A66")!, identifier: "Beacon")

    override func viewDidLoad() {
        super.viewDidLoad()
        
        locationManager.delegate = self
        
        locationManager.requestAlwaysAuthorization()
        
        locationManager.startRangingBeaconsInRegion(region)
        
        locationManager.startMonitoringForRegion(region)
        
        
        
        locationManager.startUpdatingLocation()

        // Do any additional setup after loading the view.
    }
    
    func locationManager(manager: CLLocationManager, didRangeBeacons beacons: [CLBeacon], inRegion region: CLBeaconRegion) {
        
        if beacons.count > 0{
            let beacon = beacons[0] 
            
            beaconswitching(beacon.proximity)
            
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func beaconswitching(bec: CLProximity){
        
        switch bec{
            
        case .Far:
            
            print("far")
            
      //  notify.sendLocalNotification("Hello! Stop By And Take A Look At Our Menu!")
            
            
        case .Near:
            print("near")
            
        //notify.sendLocalNotification("Wana Grab A Bite?")
            
        case .Immediate:
            
            self.performSegueWithIdentifier("checkin", sender: self)
            locationManager.stopMonitoringForRegion(region)
            locationManager.stopUpdatingLocation()
            
        case .Unknown:
            print("unknown")
        
        
            
        }
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */
    
    

}
