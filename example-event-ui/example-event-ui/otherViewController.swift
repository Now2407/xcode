//
//  otherViewController.swift
//  example-event-ui
//
//  Created by Noah Marriott on 8/11/15.
//  Copyright (c) 2015 Noah Marriott. All rights reserved.
//

import UIKit
import QuartzCore

class otherViewController: UIViewController {

    @IBOutlet weak var city: UILabel!
    @IBOutlet weak var name: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        var gray = UIColor.blackColor()
        
        name.layer.shadowOffset = CGSizeMake(5, 5)
        name.layer.shadowColor = gray.CGColor
        name.layer.shadowOpacity = 1.0
        name.layer.shadowRadius = 5
        city.layer.shadowOffset = CGSizeMake(5, 5)
        city.layer.shadowColor = gray.CGColor
        city.layer.shadowOpacity = 1.0
        city.layer.shadowRadius = 5
        
        

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
