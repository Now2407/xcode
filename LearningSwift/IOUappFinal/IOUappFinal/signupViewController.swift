//
//  signupViewController.swift
//  
//
//  Created by Noah Marriott on 1/21/16.
//
//

import UIKit
import Alamofire

class signupViewController: UIViewController {
    
    
   
    @IBOutlet weak var passwordTxt: UITextField!
    @IBOutlet weak var usernameTxt: UITextField!
    @IBOutlet weak var emailTxt: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func viewDidAppear(animated: Bool) {
        let logged = NSUserDefaults.standardUserDefaults().valueForKey("loggedin")
        
        if logged == nil {
            
            print("hello")
        }
        
        if logged != nil{
            print("")
        }
    }
    
    
    
    @IBAction func signup(sender: AnyObject) {
        
        if passwordTxt.text != nil || usernameTxt.text != nil || emailTxt.text != nil {

        
        Alamofire.request(.POST, "http://localhost:8080/signup", parameters: ["username": usernameTxt.text!, "password": passwordTxt.text!, "email": emailTxt.text!])
            .responseJSON { response in
                
                if let JSON = response.result.value {
                    
                    print(JSON)
                    
                    if JSON["success"] as! NSString == "true" {
                        
                        self.logmein(JSON["username"] as! String, pass: JSON["password"] as! String)
                        
                    }

                    
                    
            
        }
                
             }
            }
        
    }
    
    
    
    func logmein(user: String, pass: String){
        
        
        Alamofire.request(.POST, "http://localhost:8080/login", parameters: ["username": user, "password": pass])
            .responseJSON { response in
                if let JSON2 = response.result.value {
                    
                    
                    if JSON2["success"] as! NSString == "true" {
                        
                       KeychainWrapper.setString(JSON2["username"] as! String, forKey: "username")
                        KeychainWrapper.setString(JSON2["password"] as! String, forKey: "password")
                        KeychainWrapper.setString(JSON2["_Id"] as! String, forKey: "userid")
                        
                        NSUserDefaults.standardUserDefaults().setBool(true, forKey: "loggedin")
                        
                        NSUserDefaults.standardUserDefaults().synchronize()
                       

                        
                    }
                    
                
        
                

                }
        }
    
       }
    }




