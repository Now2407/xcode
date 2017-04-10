//
//  ViewController.swift
//  culinarian
//
//  Created by Noah Marriott on 9/26/15.
//  Copyright © 2015 Noah Marriott. All rights reserved.
//

import UIKit
import Firebase

class ViewController: UIViewController {

    
    var ref = Firebase(url: "https://culinarianapp.firebaseio.com/")
    
    override func viewDidLoad() {
        
        
        
        
        super.viewDidLoad()
        
      
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func viewDidAppear(animated: Bool) {
       
        if ref.authData != nil {
            
//            if loggedinonce == true {
//            
//                
//                loggedinonce = false
//
//            self.performSegueWithIdentifier("login", sender: self)
//            
//            }else{
//                print("hi")
//            }
//            if let delegate = UIApplication.sharedApplication().delegate as? AppDelegate {
//                delegate.usrDeaults
//            }
            
            if NSUserDefaults.standardUserDefaults().valueForKey("loginedInOnce") == nil {
                self.performSegueWithIdentifier("login", sender: self)
                NSUserDefaults.standardUserDefaults().setBool(true, forKey: "loginedInOnce")
            }
            
        }else{
            print("You will have to login!")
            
            

        }
     
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

