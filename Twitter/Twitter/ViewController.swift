//
//  ViewController.swift
//  Twitter
//
//  Created by Noah Marriott on 9/23/15.
//  Copyright © 2015 Noah Marriott. All rights reserved.
//

import UIKit
import Firebase
class ViewController: UIViewController {
    
    var userid = ""
    var newuser:NSDictionary!
    var fakePost:NSDictionary!
    
    var ref = Firebase(url: "https://twittermockly.firebaseio.com/")
    @IBAction func login(sender: AnyObject) {
        if emailTxt.text == "" || passwordTxt.text == "" {
            
            print("make sure to enter each text field")
            
        }else{
            ref.authUser(emailTxt.text, password: passwordTxt.text, withCompletionBlock: {(error, authData) -> Void in
                
                
                if error != nil {
                    print(error)
                print("there is a problem")
                
                }else{
                    print("Login Sucess")
                    self.performSegueWithIdentifier("loginAndSignUpComplete", sender: self)
                }
                
        })
        }
    }
    
    @IBOutlet weak var emailTxt: UITextField!
    var myerror:NSError!
    @IBOutlet weak var passwordTxt: UITextField!
    @IBAction func signUp(sender: AnyObject) {
        
        if emailTxt.text == "" || passwordTxt.text == "" {
        
            print("make sure to enter each text field")
        
        }else{
            ref.createUser(emailTxt.text, password: passwordTxt.text, withValueCompletionBlock: {(error, result) -> Void in
                
                if error != nil {
                
                   print(error)
                    
                }else{
                    
                    
                    
                    print("sucess at sign up!")
                    
                    
                    self.ref.authUser(self.emailTxt.text, password: self.passwordTxt.text, withCompletionBlock: {(error, authData) -> Void in
                        
                        if error != nil {
                            print(error)
                        }else{
                            self.userid = authData.uid
                            
                             self.newuser = [
                                "provider": authData.provider,
                                
                                "email": authData.providerData["email"] as? NSString as? String,
                                
                                
                            ] as Dictionary
                            
                             self.fakePost = [
                                
                                "\(NSDate())": "this is my fake post"
                            
                            ] as Dictionary
                            
                            self.ref.childByAppendingPath("users").childByAppendingPath(authData.uid).setValue(self.newuser)
                            self.ref.childByAppendingPath("users/\(authData.uid)/posts").setValue(self.fakePost)
                            
                            self.performSegueWithIdentifier("loginAndSignUpComplete", sender: self)
                        }
                        
                    })
                    
                
                
                }
        })
            
            
            
            
                
        
        }
        

    }
    override func viewDidLoad() {
        super.viewDidLoad()
        if ref.authData != nil {
            
            
            self.performSegueWithIdentifier("loginAndSignUpComplete", sender: self)
            
        }else{
            print("You will have to login!")
        }
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func viewDidAppear(animated: Bool) {
      
    }

}

