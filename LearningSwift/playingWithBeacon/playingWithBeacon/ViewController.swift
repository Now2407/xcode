//
//  ViewController.swift
//  playingWithBeacon
//
//  Created by Noah Marriott on 2/6/16.
//  Copyright © 2016 Noah Marriott. All rights reserved.
//

import UIKit
import CoreLocation

class ViewController: UIViewController, CLLocationManagerDelegate {
    
    
    var manger:CLLocationManager!
    
    
    let region = CLBeaconRegion(proximityUUID: NSUUID(UUIDString: "07775DD0-111B-11E4-9191-0800200C9A66")!, identifier: "Beacon")
    
    
    


    override func viewDidLoad() {
        super.viewDidLoad()
        
      manger = CLLocationManager()
        manger.delegate = self
        manger.requestAlwaysAuthorization()
        
    region.notifyOnExit = true
        region.notifyOnEntry = true
        region.notifyEntryStateOnDisplay = true
        
        self.manger.startMonitoringForRegion(region)
        
        
        
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    

    
  

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    func locationManager(manager: CLLocationManager, didEnterRegion region: CLRegion) {
     print("hello")
        
    }
    
    func locationManager(manager: CLLocationManager, didExitRegion region: CLRegion) {
        print("good bye")
       
    }
    
  
 
    
}

