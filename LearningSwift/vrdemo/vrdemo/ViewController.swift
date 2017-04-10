//
//  ViewController.swift
//  vrdemo
//
//  Created by Noah Marriott on 4/2/16.
//  Copyright © 2016 Noah Marriott. All rights reserved.
//

import UIKit
import SceneKit

class ViewController: UIViewController {
    
    var scene : SCNScene?


    @IBOutlet weak var leftview: SCNView!
    @IBOutlet weak var rightview: SCNView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        leftview.scene = scene
        
        rightview.scene = scene
        
        let camX = 0.0 as Float
        let camX = 0.0 as Float
        
        
    }
    
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

