//
//  ViewController.swift
//  capsuleit
//
//  Created by Noah Marriott on 8/24/15.
//  Copyright (c) 2015 Noah Marriott. All rights reserved.
//

import UIKit
import Firebase
import GeoFire

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        var fef = Firebase(url: "https://locationnotifcation.firebaseio.com/")
        var next = GeoFire(firebase)
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

