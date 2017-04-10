//
//  ViewController.swift
//  picapp
//
//  Created by Noah Marriott on 9/27/15.
//  Copyright © 2015 Noah Marriott. All rights reserved.
//

import UIKit

class ViewController: UIViewController, IODClientDelegate {
    
    var ido = IODClient(apiKey: "bac36ffc-0cf0-4a1d-bfb4-e50b92ca4aca")

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        ido.PostRequest(&<#T##params: Dictionary<String, AnyObject>##Dictionary<String, AnyObject>#>, iodApp: <#T##String#>)
        
    }
    
    func requestCompletedWithContent(response: String) {
        
        
        
        
        
    }

    func requestCompletedWithJobID(response: String) {
        <#code#>
    }
    
    func onErrorOccurred(errorMEssage: String) {
        <#code#>
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

