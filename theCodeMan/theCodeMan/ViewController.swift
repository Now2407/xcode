//
//  ViewController.swift
//  theCodeMan
//
//  Created by Noah Marriott on 9/14/16.
//  Copyright © 2016 Noah Marriott. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var theLabel: UILabel!
    @IBOutlet weak var labelTxt: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    
    func change(){
        
    
        let unwrapp = labelTxt.text
       
       if unwrapp != "" {
        
        theLabel.text = "hi \(unwrapp!)"
            
       }else{
        theLabel.text = "No String Here"
        }

    }

    @IBAction func changeTxt(sender: AnyObject) {
        
        change()
    }
}

