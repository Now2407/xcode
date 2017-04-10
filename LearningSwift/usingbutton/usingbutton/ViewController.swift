//
//  ViewController.swift
//  usingbutton
//
//  Created by Noah Marriott on 5/5/16.
//  Copyright © 2016 Noah Marriott. All rights reserved.
//

import UIKit

import tvframework

class ViewController: UIViewController {
    
    var me = newbttn(frame: CGRect(x: 20, y: 20, width: 200, height: 200), mycolor: UIColor.greenColor())
    
    
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        
        self.view.addSubview(me)
    
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

