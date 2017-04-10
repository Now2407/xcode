//
//  ViewController.swift
//  mysteryApp
//
//  Created by Noah Marriott on 9/6/15.
//  Copyright (c) 2015 Noah Marriott. All rights reserved.
//

import UIKit
import CoreLocation
import Firebase
import MapKit
class ViewController: UIViewController, CLLocationManagerDelegate, MKMapViewDelegate  {
    
    @IBOutlet weak var map: MKMapView!
    
    var locationManger = CLLocationManager()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        var ref = Firebase(url:"https://mysteriesapp.firebaseio.com/locations")
        
        ref.observeEventType(.ChildAdded, withBlock: { snapshot in
            
            var diction = snapshot.value as! NSDictionary
            
            self.loopNotifi(diction)
        })
       
//        var arr = ["message":"welcome to apple inc","lat":"37.3317929", "lng":"-122.0295837"]
//        
//        var newRef = ref.childByAutoId()
//        newRef.setValue(arr)
//        
//        // Get a reference to our posts
       
//        // Retrieve new posts as they are added to your database
        
        
        locationManger.delegate = self
        locationManger.requestAlwaysAuthorization()
        locationManger.startUpdatingLocation()
        
     
        
       
        
        // Do any additional setup after loading the view, typically from a nib.
    
    }
    
 
    // Get a reference to our posts
   
    // Retrieve new posts as they are added to your database
   

  
    
    // Get a reference to our posts
    
    
    // Retrieve new posts as they are added to your database
    
    
    
    func loopNotifi(dict:NSDictionary){
        
        
         for var i = 0; i < dict.count; i++ {
            
            var message: AnyObject? = dict["message"]
            
            
            
            var lng = dict["lng"]!.doubleValue
            
            var lat = dict["lat"]!.doubleValue
            
            let locattionnotification = UILocalNotification()
            locattionnotification.alertBody = "\(message)"
            locattionnotification.regionTriggersOnce = false
            locattionnotification.region = CLCircularRegion(circularRegionWithCenter: CLLocationCoordinate2D(latitude:lng
                , longitude:lat), radius: 200.0, identifier: "Location1")
            UIApplication.sharedApplication().scheduleLocalNotification(locattionnotification)
            
            
            println("sheduled this one")
            
        }
        
        
        
    }
    }




