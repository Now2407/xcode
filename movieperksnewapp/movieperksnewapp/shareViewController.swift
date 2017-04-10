//
//  shareViewController.swift
//  movieperksnewapp
//
//  Created by Noah Marriott on 10/10/15.
//  Copyright © 2015 Noah Marriott. All rights reserved.
//

import UIKit

class shareViewController: UIViewController {

    @IBOutlet weak var textview: UITextView!
    @IBOutlet weak var name: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        name.attributedPlaceholder = NSAttributedString(string:"To",
            attributes:[NSForegroundColorAttributeName: UIColor.blackColor()])
        textview.textColor = UIColor.blackColor()
        
        name.textColor = UIColor.blackColor()
        
        textview.font = UIFont.boldSystemFontOfSize(15)
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
