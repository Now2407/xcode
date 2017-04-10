//
//  signupViewController.swift
//  
//
//  Created by Noah Marriott on 1/23/16.
//
//

import UIKit
import Alamofire

class signupViewController: UIViewController {
    
    @IBOutlet weak var emailTxt: UITextField!
    @IBOutlet weak var passwordTxt: UITextField!
    
    @IBOutlet weak var usernameTxt: UITextField!

    override func viewDidLoad() {
        super.viewDidLoad()
        

    }
    
    func checkfields(){
        
        if emailTxt.text != nil || passwordTxt.text != nil || usernameTxt.text != nil {
            signup()

        }else{
            print("please enter text")
        }

    }
    
    func signup(){
        Alamofire.request(.POST, "http://localhost:9090/signup", parameters: ["username": usernameTxt.text!, "password": passwordTxt.text!, "email": emailTxt.text!])
            .responseJSON { response in
                if let JSON = response.result.value {
                    
                    if JSON["success"] as! String == "true" {
                        //request successful!
                        
                        self.logmein()
                        
                    }else{
                        print("err!")
                    }
                    
                    
                }
        }
    }
    
    func logmein(){
        
        Alamofire.request(.POST, "http://localhost:9090/login", parameters: ["username":emailTxt.text!, "password":passwordTxt.text!])
            .responseJSON { response in
                if let JSON2 = response.result.value {
                    
                    if let JSON2 = response.result.value {
                         //if JSON2["success"] as! String == "true" {
            
                        NSUserDefaults.standardUserDefaults().setBool(true, forKey: "logged_in")
                        
                        NSUserDefaults.standardUserDefaults().synchronize()
                        
                        
                        
                        print(JSON2["username"] as! String)
                        KeychainWrapper.setString(JSON2["password"] as! String, forKey: "password")
                        KeychainWrapper.setString(JSON2["_id"] as! String, forKey: "userid")
                        
                        self.performSegueWithIdentifier("logincomplete", sender: self)
                            
                            
                        // }else{
                            //print("err")
                        //}
                    }
                    
                }
        
    }
        
        
    }
    
    override func viewDidAppear(animated: Bool) {
        let loggedinuser = NSUserDefaults.standardUserDefaults().boolForKey("logged_in")
        
        if loggedinuser {
            self.performSegueWithIdentifier("logincomplete", sender: self)
        }else{
            print("user is not logged")
        }
    }
    
    func savesession(username: String, password: String, userid: String){
        
       
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func signUpPressed(sender: AnyObject) {
        
        
        checkfields()

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
    
    

