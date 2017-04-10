//
//  ViewController.swift
//  geo-capsule
//
//  Created by Noah Marriott on 7/13/15.
//  Copyright (c) 2015 Noah Marriott. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    
    
    

  
    @IBOutlet weak var tbView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        self.tbView.separatorColor = UIColor.clearColor()
    }
    


    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    


}

