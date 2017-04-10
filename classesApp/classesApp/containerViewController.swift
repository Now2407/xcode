//
//  ViewController.swift
//  classesApp
//
//  Created by Noah Marriott on 7/24/15.
//  Copyright (c) 2015 Noah Marriott. All rights reserved.
//

import UIKit
extension String {
    /// Truncates the string to length number of characters and
    /// appends optional trailing string if longer
    func truncate(length: Int, trailing: String? = nil) -> String {
        if count(self) > length {
            return self.substringToIndex(advance(self.startIndex, length)) + (trailing ?? "")
        } else {
            return self
        }
    }
}
class containerViewController: UIViewController {
    
    
    
    @IBOutlet weak var followBttn: UIButton!
    @IBAction func msgBttn(sender: AnyObject) {
    }
    @IBOutlet weak var aboutMeTxt: UILabel!
    
    @IBOutlet weak var mySkillsTxt: UILabel!
    
    @IBOutlet weak var profileImg: UIImageView!
    @IBOutlet weak var myName: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        myName.text = "Joe Marriott"
        aboutMeTxt.text = "My name is Noah Marriott and i love to Program iOS. I teach a wide range of programming classes as well as taking".truncate(10, trailing: "...")
        
        mySkillsTxt.text = "Programming, Swimming, Song Writting, iPhone, iPad, Math, english, Apple, PC's".truncate(10, trailing: "...")
        
        profileImg.image = UIImage(named: "me")
        
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}
