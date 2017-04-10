//
//  mainViewController.swift
//  IOUappFinal
//
//  Created by Noah Marriott on 1/23/16.
//  Copyright © 2016 Noah Marriott. All rights reserved.
//

import UIKit

class mainViewController: UIViewController {

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
   
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */


}