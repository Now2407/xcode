//
//  ViewController.swift
//  learningSegmentedControl
//
//  Created by Noah Marriott on 1/20/16.
//  Copyright © 2016 Noah Marriott. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var secondView: UIView!
    @IBOutlet weak var firstView: UIView!
    @IBOutlet weak var segControl: UISegmentedControl!
    override func viewDidLoad() {
        
        firstView.hidden = false
        secondView.hidden = true
        
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func changeView(sender: AnyObject) {
       
        switch segControl.selectedSegmentIndex {
        case 0:
            firstView.hidden = false
            secondView.hidden = true
        
        case 1:
        firstView.hidden = true
        secondView.hidden = false
            
        default:
            break;
        }
    }

}

