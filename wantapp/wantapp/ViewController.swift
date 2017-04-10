//
//  ViewController.swift
//  wantapp
//
//  Created by Noah Marriott on 8/25/15.
//  Copyright (c) 2015 Noah Marriott. All rights reserved.
//

import UIKit
import MapKit
import Firebase

class ViewController: UIViewController, MKMapViewDelegate {
    
    @IBOutlet weak var mapView: MKMapView!

    var shot:String!
    
    var latitude = ""
    
    var longitude = ""
    
  
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
      
        
        
        
//        var data = [["loc":"CA","lat":"37.4440647","lng":"-122.1667096"],["loc":"CA","lat":"37.447099","lng":"122.160901"]]
//      
        
        
       
        
        
        
       
        
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
//
//        
//       

        
        
        
      


   
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

//
//
//
//        for locations in data {
//
//            var location = data["location"]
//            var lat = (location?["lat"] as NSString!).doubleValue
//
//
//            var lng = (location?["lng"] as NSString!).doubleValue
//            
//           
//            
//            var loc = CLLocationCoordinate2DMake(lat, lng)
//            
//             var anoPoint = MKPointAnnotation()
//            
//                anoPoint.coordinate = loc
//            
//            
//            
//            
//            
//            
        
            
            
}



            
            
            
            
        
        
       // }
        // Do any additional setup after loading the view, typically from a nib.
    






