//
//  ViewController.swift
//  workingwithtvpop
//
//  Created by Noah Marriott on 5/9/16.
//  Copyright © 2016 Noah Marriott. All rights reserved.
//

import UIKit

import AVFoundation

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        let pop = popViewController()
        
        pop.playvideo("https://s3-us-west-2.amazonaws.com/myvideofun/logitech650-demo.mp4")
        
        self.presentViewController(pop, animated: true, completion: nil)
        
        
    }
    
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

