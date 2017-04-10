//
//  loginViewController.swift
//  petApp
//
//  Created by Noah Marriott on 1/23/16.
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

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
 

    @IBAction func loginButtonPressed(sender: AnyObject) {
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
