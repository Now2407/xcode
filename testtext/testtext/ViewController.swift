//
//  ViewController.swift
//  testtext
//
//  Created by Noah Marriott on 10/6/15.
//  Copyright © 2015 Noah Marriott. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var textlab: UITextView!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        textlab.text = "My Name is Noah"
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

