//
//  ViewController.swift
//  foodApp
//
//  Created by Noah Marriott on 9/19/15.
//  Copyright © 2015 Noah Marriott. All rights reserved.
//

import UIKit
import Firebase
class ViewController: UIViewController {
    
    
    
    @IBOutlet weak var emailTxt: UITextField!
    
    
    @IBOutlet weak var passwordTxt: UITextField!
    
    
    
    
    @IBAction func signUpBttn(sender: AnyObject) {
        
        
       
        let ref = Firebase(url: "https://myfoodieapp.firebaseio.com")
        ref.createUser(emailTxt.text, password: passwordTxt.text,
            withValueCompletionBlock: { error, result in
                
                
                if error != nil {
                    // There was an error creating the account
                } else {
                    let uid = result["uid"] as? String
                    print("Successfully created user account with uid: \(uid)")
                }
        })
        
        
    }
    override func viewDidLoad() {
     
      
        
    
        
       
        
        super.viewDidLoad()
        
        
        
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

