//
//  ViewController.swift
//  playingwithcustomclasses
//
//  Created by Noah Marriott on 5/5/16.
//  Copyright © 2016 Noah Marriott. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var bttn: custombutton!
    override func viewDidLoad() {
        super.viewDidLoad()
        
    self.view.addSubview(bttn)
        
        
        
        
        
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

