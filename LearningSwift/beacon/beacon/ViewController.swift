//
//  ViewController.swift
//  beacon
//
//  Created by Noah Marriott on 2/6/16.
//  Copyright © 2016 Noah Marriott. All rights reserved.
//

import UIKit
import CoreLocation

class ViewController: UIViewController, CLLocationManagerDelegate {
    
    let manager = CLLocationManager()
    let region = CLBeaconRegion(proximityUUID: NSUUID(UUIDString: "07775DD0-111B-11E4-9191-0800200C9A66")!, identifier: "Beacon")
    
    
    let colors = [
        62564: UIColor.blueColor(),
        10036: UIColor.blackColor()
        
    ]
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        manager.delegate = self
        if (CLLocationManager.authorizationStatus() != CLAuthorizationStatus.AuthorizedWhenInUse) {
            manager.requestWhenInUseAuthorization()
        }
      manager.startRangingBeaconsInRegion(region)
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

   func locationManager(manager: CLLocationManager, didRangeBeacons beacons: [CLBeacon], inRegion region: CLBeaconRegion) {
    
    let knowbeacons = beacons.filter{ $0.proximity != CLProximity.Unknown}
    
    if knowbeacons.count > 0 {
        
    let closestBeacon = knowbeacons[0] as CLBeacon
        
        self.view.backgroundColor = self.colors[closestBeacon.minor.integerValue]
        
        
    }
    
    }
}

