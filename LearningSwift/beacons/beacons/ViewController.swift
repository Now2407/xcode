//
//  ViewController.swift
//  beacons
//
//  Created by Noah Marriott on 2/6/16.
//  Copyright © 2016 Noah Marriott. All rights reserved.
//

import UIKit
import CoreLocation

class ViewController: UIViewController, CLLocationManagerDelegate {
    
    let Mnger = CLLocationManager()
    
    let region = CLBeaconRegion(proximityUUID: NSUUID(UUIDString: "07775DD0-111B-11E4-9191-0800200C9A66")!, identifier: "Beacon")

    override func viewDidLoad() {
        super.viewDidLoad()
        
        Mnger.delegate = self
        
    Mnger.startRangingBeaconsInRegion(region)
        Mnger.startMonitoringForRegion(region)
        
        Mnger.requestAlwaysAuthorization()
        
        
        
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

//    func locationManager(manager: CLLocationManager, didRangeBeacons beacons: [CLBeacon], inRegion region: CLBeaconRegion) {
//        
//
//        let nearestbecacon = beacons.filter{$0.proximity != CLProximity.Unknown}
//        
//        if nearestbecacon.count > 0 {
//            
//        
//        }
//    
//    }
    
    
    
   
    

   
   
}

