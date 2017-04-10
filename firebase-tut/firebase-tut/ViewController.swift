//
//  ViewController.swift
//  firebase-tut
//
//  Created by Noah Marriott on 8/23/15.
//  Copyright (c) 2015 Noah Marriott. All rights reserved.
//

import UIKit
import Firebase

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
         //Create a reference to a Firebase location
        
        
        var uploadcont = 1
        
        // Write data to Firebase
              var write = Firebase(url:"musicbeacon.firebaseIO.com/songs/\(uploadcont++)")
//        
        var names =
        ["song":
            ["details":
                
                ["filename":"lights.mp3", "name":"lights"]
            
            
            
            , "attributes":["pop", "dance", "party"]]]
        
        
        
        
        
        
            write.setValue(names)
        
        
        
    
    
    
        
//        write.setValue(names)
//        
//        
//        
//        
//        
//        // Do any additional setup after loading the view, typically from a nib.
//       
//    }
//    
//    var fire = Firebase(url: "https://intense-fire-4150.firebaseIO.com/users").observeEventType(.Value, withBlock: {
//    snapshot in
//    println("\(snapshot)")
//        
//        var dic = snapshot.value as! NSDictionary
//        println(dic["Noah"])
//    
//        
//        
//    })
        
    var write2db = Firebase(url:"musicbeacon.firebaseIO.com/songs")
        write2db.queryOrderedByChild("rock").observeEventType(.ChildAdded, withBlock: {(snapshot) in
         println("\(snapshot.value)")
         
     })
    
    
    

     func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }



    }}
