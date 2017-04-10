//
//  popview.swift
//  tvframework
//
//  Created by Noah Marriott on 5/6/16.
//  Copyright © 2016 Noah Marriott. All rights reserved.
//

import Foundation

import UIKit

class popview: UIViewController {
    
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
       
        view.backgroundColor = UIColor.clearColor()
        
        view.opaque = true
        
        var newview = UIView()
        
        newview.frame = CGRectMake(self.view.frame.size.width/3.5, 10, 200, 200)
        
        newview.backgroundColor = UIColor.blackColor()
        
        self.view.addSubview(newview)
        
    
    }
    
    
}
