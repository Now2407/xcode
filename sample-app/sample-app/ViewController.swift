//
//  ViewController.swift
//  sample-app
//
//  Created by Noah Marriott on 10/24/15.
//  Copyright © 2015 Noah Marriott. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    @IBOutlet weak var usernameTxt: UITextField!
    @IBOutlet weak var passwordTxt: UITextField!

    @IBAction func signup(sender: AnyObject) {
        let url = NSURL(string: "http://localhost:3000/api/places")
        
        let request = NSMutableURLRequest(URL: url!)
        
        request.HTTPMethod = "POST"
        
    
        
        let username = usernameTxt.text
        
        let password = passwordTxt.text
        
    let prarms = "username=\(username)&password=\(password)"
        
        request.HTTPBody = prarms.dataUsingEncoding(NSUTF8StringEncoding)
        
        let task = NSURLSession.sharedSession().dataTaskWithRequest(request){
            
            data, response, error in
            
            if error != nil{
                print("did not work")
            }else{
                print("new user!")
            }
            
            
            
        }
        
        task.resume()
    }

}

