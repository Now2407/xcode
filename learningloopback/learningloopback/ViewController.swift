//
//  ViewController.swift
//  learningloopback
//
//  Created by Noah Marriott on 10/25/15.
//  Copyright © 2015 Noah Marriott. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let url = NSURL(string:"http://0.0.0.0:3000/api/users")
        let request = NSMutableURLRequest(URL: url!)
        request.HTTPMethod = "POST"
        let poststring = "email=me@domain.com&password=1234"
        
        request.HTTPBody = poststring.dataUsingEncoding(NSUTF8StringEncoding)
        
        let task = NSURLSession.sharedSession().dataTaskWithRequest(request) {
            data, response, error in
            
            if error != nil{
                print(error)
            }else{
                print(data)
                
                print(NSString(data: data!, encoding: NSUTF8StringEncoding))
                
                
            }
            
        
        }
        task.resume()
        
        
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

