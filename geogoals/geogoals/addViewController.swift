//
//  addViewController.swift
//  geogoals
//
//  Created by Noah Marriott on 7/11/15.
//  Copyright (c) 2015 Noah Marriott. All rights reserved.
//

import UIKit

class addViewController: UIViewController, UITabBarDelegate {

    @IBOutlet weak var bttn: UITabBarItem!
   
    override func viewDidLoad() {
        super.viewDidLoad()
        println("hi")

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
        func tabBar(tabBar: UITabBar, didSelectItem item: UITabBarItem!) {
            
            
            
            if tabBar.selectedItem?.tag == 0
            {
                self.performSegueWithIdentifier("me", sender: self)
                
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
