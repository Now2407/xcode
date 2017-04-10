//
//  ViewController.swift
//  testVault
//
//  Created by Noah Marriott on 9/13/15.
//  Copyright © 2015 Noah Marriott. All rights reserved.
//

import UIKit


class ViewController: UIViewController {
    var loginID:String!
    var apiKey:String!
    
    var str:Int!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        let request = NSMutableURLRequest(URL: NSURL(string: "https://api.stripe.com/v1/transfers")!)
        request.HTTPMethod = "POST"
        
        loginID = ""
         apiKey = ""
        let postString:NSString = "login_id=\(loginID)&api_key=\(apiKey)"
        
        request.HTTPBody = postString.dataUsingEncoding(NSUTF8StringEncoding)
        let task = NSURLSession.sharedSession().dataTaskWithRequest(request) {
            data, response, error in
            
            if error != nil {
                print("error=\(error)")
                return
            }
            
            print("response = \(response)")
            
            let responseString = NSString(data: data!, encoding: NSUTF8StringEncoding)
            print("responseString = \(responseString)")
        }
        task.resume()
        
        
        
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    



}

