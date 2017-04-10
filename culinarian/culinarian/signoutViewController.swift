//
//  signoutViewController.swift
//  culinarian
//
//  Created by Noah Marriott on 9/26/15.
//  Copyright © 2015 Noah Marriott. All rights reserved.
//

import UIKit

import Firebase

var loggedinonce:Bool = false

class signoutViewController: UIViewController {
    

    
     var newref = Firebase(url: "https://twittermockly.firebaseio.com/")

    @IBAction func logout(sender: AnyObject) {
        
        newref.unauth()
        
        
        
        self.performSegueWithIdentifier("Logout", sender: self)
            
       
            
        loggedinonce = false
            
    
    }
    override func viewDidLoad() {
        super.viewDidLoad()

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
