//
//  ViewController.swift
//  wantsy
//
//  Created by Noah Marriott on 8/28/15.
//  Copyright (c) 2015 Noah Marriott. All rights reserved.
//

import UIKit
import Firebase
import MapKit
import AWSCore
import AWSCognito



class ViewController: UIViewController  {
    
    

    @IBOutlet weak var mapView: MKMapView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        //        var base1 = Firebase(url: "https://postbaby.firebaseio.com/")
        //
        //       var addPlace = base1.childByAppendingPath("places")
        //
        //        var save = addPlace.childByAutoId()
        //
        //         var data = ["id":"2", "lat":"37.445495","lng":"-122.147377", "title":"49ers vs lakers tickets"]
        //
        //
        //
        //        save.setValue(data)
        
        var base = Firebase(url: "https://postbaby.firebaseio.com/places")
        
        //base.setValue(data)
        
        
        base.observeEventType(.ChildAdded, withBlock: { snapshot in
            
            var dic = snapshot.value as! NSDictionary
            
            self.data(dic)
            
        })
        
    }
    
    
    
    func data(dict:NSDictionary){
        
        for var i = 0; i < dict.count; i++ {
            var cord = CLLocationCoordinate2D()
            
            var lati: AnyObject? = dict["lat"]
            var loni: AnyObject? = dict["lng"]
            
            cord.latitude = dict["lat"]!.doubleValue
            cord.longitude = dict["lng"]!.doubleValue
            
            var region = MKCoordinateRegion()
            
            region.center = cord
            
            region.span.latitudeDelta = 0.1
            
            region.span.longitudeDelta = 0.1
            
            mapView.setRegion(region, animated: true)
            
            
            
            var ani = MKPointAnnotation()
            
            ani.coordinate = cord
            
            if let title: AnyObject = dict["title"]{
                ani.title = "\(title)"
                
            }
            
            mapView.addAnnotation(ani)
            
        }
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

