//
//  loginViewController.swift
//  culinarian
//
//  Created by Noah Marriott on 9/26/15.
//  Copyright © 2015 Noah Marriott. All rights reserved.
//

import UIKit
import Firebase

class loginViewController: UIViewController {
    
    var ref = Firebase(url: "https://culinarianapp.firebaseio.com/")

    @IBOutlet weak var emailTxt: UITextField!
    @IBOutlet weak var passwordTxt: UITextField!
    @IBOutlet weak var login: UIButton!
    
    @IBAction func loginpressed(sender: AnyObject) {
        
        if emailTxt.text == "" || passwordTxt.text == "" {
            print("please enter text")
        }else{
        ref.authUser(emailTxt.text, password: passwordTxt.text,
            withCompletionBlock: { error, authData in
                if error != nil {
                    
                    print(error)
                    
                    // There was an error logging in to this account
                } else {
                    // We are now logged in
                    
                    self.performSegueWithIdentifier("logged", sender: self)
                    
                    
                    

                    
                    
                }
        })
            
        }
       
    }
    

    




    
    @IBAction func close(sender: AnyObject) {
        self.dismissViewControllerAnimated(true, completion: nil);//This is intended to dismiss the Info sceen.
    
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        
        emailTxt.borderStyle = .RoundedRect
        passwordTxt.borderStyle = .RoundedRect
        

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
