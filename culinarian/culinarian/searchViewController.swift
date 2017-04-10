//
//  searchViewController.swift
//  culinarian
//
//  Created by Noah Marriott on 9/27/15.
//  Copyright © 2015 Noah Marriott. All rights reserved.
//

import UIKit

var term:String = ""

class searchViewController: UIViewController {

    @IBAction func closeSence(sender: AnyObject) {
    }
    @IBAction func currentLoc(sender: AnyObject) {
    }
    @IBOutlet weak var SearchTerm: UITextField!
    @IBAction func search(sender: AnyObject) {
        
        term = SearchTerm.text!
        if term == "" {
            
            print("no vallues")
        }else{
            
        self.performSegueWithIdentifier("switchto", sender: self)

        }
        
    }
    override func viewDidLoad() {
        
        
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
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
