//
//  ViewController.swift
//  geofire
//
//  Created by Noah Marriott on 8/29/15.
//  Copyright (c) 2015 Noah Marriott. All rights reserved.
//

import UIKit
import CoreLocation
import Firebase
import MapKit



class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        
        let geofireRef = Firebase(url: "https://musicbeacon.firebaseio.com/places")
        
        var arr = ["name":"spots pizza", "lat":"37.4114383", "lng": "-122.1386391"]
        
        let data = 
        
        
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

