//
//  ViewController.swift
//  geo-achive
//
//  Created by Noah Marriott on 7/9/15.
//  Copyright (c) 2015 Noah Marriott. All rights reserved.
//

import UIKit
import QuartzCore

class ViewController: UIViewController {

   
    
    @IBOutlet weak var login: UIView!

    @IBOutlet weak var signupBttn: UIView!
    
    @IBOutlet weak var textField3: UITextField!
    @IBOutlet weak var textField2: UITextField!
    @IBOutlet weak var fbButton: UIView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
       fbButton.layer.cornerRadius = 5
       
        signupBttn.layer.cornerRadius = 5
        
        self.login.layer.cornerRadius = 5
        
        
        self.textField3.borderStyle = UITextBorderStyle.RoundedRect
        
        self.textField2.borderStyle = UITextBorderStyle.RoundedRect
        
        
    
        let paddingView = UIView(frame: CGRectMake(0, 0, 5, textField2.frame.height))
        textField2.leftView = paddingView
        textField2.leftViewMode = UITextFieldViewMode.Always
        let paddingView2 = UIView(frame: CGRectMake(0, 0, 5, textField3.frame.height))
        textField3.leftView = paddingView2
        textField3.leftViewMode = UITextFieldViewMode.Always
       
    
    }
    
    
    
     
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    


}

