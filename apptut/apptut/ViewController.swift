//
//  ViewController.swift
//  apptut
//
//  Created by Noah Marriott on 8/29/15.
//  Copyright (c) 2015 Noah Marriott. All rights reserved.
//

import UIKit
import MapKit
import Firebase
import GeoFire
import CoreLocation

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        var base = Firebase(url: "https://musicbeacon.firebaseio.com/")
        var geoFire = GeoFire(firebaseRef: base)
        
        geoFire.setLocation(CLLocation(latitude: 37.7853889, longitude: -122.4056973), forKey: "firebase-hq") { (error) in
            if (error != nil) {
                println("An error occured: \(error)")
            } else {
                println("Saved location successfully!")
            }
        }
        
        
        
        
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

