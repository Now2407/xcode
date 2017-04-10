//
//  close1ViewController.swift
//  culinarian
//
//  Created by Noah Marriott on 9/26/15.
//  Copyright © 2015 Noah Marriott. All rights reserved.
//



import UIKit
import QuartzCore
import Firebase

class close1ViewController: UIViewController {
    
    @IBOutlet weak var usernameTxt: UITextField!
    @IBOutlet weak var emailTxt: UITextField!
    var userid = ""
    var newuser:NSDictionary!
    var fakePost:NSDictionary!
    @IBOutlet weak var passwordTxt: UITextField!
    
    var ref = Firebase(url: "https://culinarianapp.firebaseio.com/")
    override func viewDidLoad() {
        super.viewDidLoad()
        
        emailTxt.borderStyle = .RoundedRect
        passwordTxt.borderStyle = .RoundedRect
        usernameTxt.borderStyle = .RoundedRect
        
        
        

        
        

        // Do any additional setup after loading the view.
    }
    @IBOutlet weak var submitbttn: UIButton!
    @IBAction func submit(sender: AnyObject) {
        
        
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
                                "username": self.usernameTxt.text
                                
                                ] as Dictionary
                            
                            self.fakePost = [
                                
                                "userId": "\(authData.uid)",
                                
                                "dishname": "Mexican Tacos With Cheese",
                                
                                "location": "mex",
                                "likes": "0"
                                
                                ] as Dictionary
                            
                            self.ref.childByAppendingPath("users").childByAppendingPath(authData.uid).setValue(self.newuser)
                            
                            self.ref.childByAppendingPath("posts").childByAppendingPath("\(authData.uid)").setValue(self.fakePost)
                            
                            
                            self.performSegueWithIdentifier("logmein", sender: self)

                        }
                        
                    })
                    
                    
                    
                }
            })
            
            
            
            
            
        
        }
        
        
    }
    
    
                
                

 

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func close1(sender: AnyObject) {
self.dismissViewControllerAnimated(true, completion: nil);//This is intended to dismiss the Info sceen.
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
