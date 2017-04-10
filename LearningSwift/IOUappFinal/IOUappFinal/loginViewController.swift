//
//  loginViewController.swift
//  IOUappFinal
//
//  Created by Noah Marriott on 1/22/16.
//  Copyright © 2016 Noah Marriott. All rights reserved.
//

import UIKit
import Alamofire
class loginViewController: UIViewController {

    @IBOutlet weak var pTxt: UITextField!
    @IBOutlet weak var uTxt: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        

        // Do any additional setup after loading the view.
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
    

    @IBAction func login(sender: AnyObject) {
        
        if  pTxt.text != nil || uTxt.text != nil{
        
        Alamofire.request(.POST, "http://localhost:8080/login", parameters: ["username": uTxt.text!, "password": pTxt.text!])
            .responseJSON { response in
                
                if let JSON = response.result.value {
                   print(JSON)
                    
                    KeychainWrapper.setString(JSON["username"] as! String, forKey: "username")
                  KeychainWrapper.setString(JSON["password"] as! String, forKey: "password")
                    KeychainWrapper.setString(JSON["_id"] as! String, forKey: "userid")
                    
                   
                    NSUserDefaults.standardUserDefaults().setBool(true, forKey: "loggedin")
                    
                    
                    

                   
                    
                                    }
        
        }
        
    }
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
}

