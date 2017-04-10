//
//  mainViewController.swift
//  Twitter
//
//  Created by Noah Marriott on 9/24/15.
//  Copyright © 2015 Noah Marriott. All rights reserved.
//

import UIKit
import Firebase

class mainViewController: UIViewController {
    
 var newref = Firebase(url: "https://twittermockly.firebaseio.com/")
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        
        
    }
    
    @IBAction func logout(sender: AnyObject) {
        
        newref.unauth()
        
        self.performSegueWithIdentifier("Logout", sender: self)
        
    }
    
 

}
