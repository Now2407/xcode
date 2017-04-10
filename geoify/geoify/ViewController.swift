//
//  ViewController.swift
//  geoify
//
//  Created by Noah Marriott on 9/6/15.
//  Copyright (c) 2015 Noah Marriott. All rights reserved.
//

import UIKit
import Firebase
import CoreLocation
import MapKit

class ViewController: UIViewController, CLLocationManagerDelegate, MKMapViewDelegate {
    
    var locationManger = CLLocationManager()
    
    var alreadyran:Bool = false

    @IBOutlet weak var map: MKMapView!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
          var fire = Firebase(url: "https://mysteriesapp.firebaseio.com/locations")
//        
//        var arr = ["lat":"37.4452083", "lng":"-122.1626659", "message":"come enjoy delish at cheesecake factory"]
//        
//       var newfire = fire.childByAutoId()
//        
//        newfire.setValue(arr)
        
        
        fire.observeEventType(.ChildAdded, withBlock: { snapshot in
            
            var diction = snapshot.value as! NSDictionary
           // self.data(diction)
            self.dicit(diction)
           
        })
        
        map.showsUserLocation = true
        
        
        locationManger.delegate = self
        locationManger.requestAlwaysAuthorization()
        locationManger.startUpdatingLocation()
        
        
        
   
      
        
        
        
         
        
    }
    
    
    func dicit(dict:NSDictionary){
        for dictify in dict{
            var locattionnotification = UILocalNotification()
            var msg: AnyObject? = dict["message"]
            locattionnotification.alertBody = "\(msg)"
            locattionnotification.regionTriggersOnce = false
            locattionnotification.region = CLCircularRegion(circularRegionWithCenter: CLLocationCoordinate2D(latitude:dict["lat"]!.doubleValue, longitude:dict["lng"]!.doubleValue), radius: 100.0, identifier: "Location1")
            UIApplication.sharedApplication().scheduleLocalNotification(locattionnotification)
            
            println("scheduled")
        }
        
    }

  
    
   

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
  
    
    
}




