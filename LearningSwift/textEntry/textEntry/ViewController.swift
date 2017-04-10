//
//  ViewController.swift
//  textEntry
//
//  Created by Noah Marriott on 2/2/16.
//  Copyright © 2016 Noah Marriott. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var myTxtField: UITextField!
    @IBOutlet weak var myLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        myTxtField.addTarget(self, action: "textChange:", forControlEvents: .EditingChanged)
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func textChange(theField: UITextField){
        
        myLabel.text = theField.text
    }

}

