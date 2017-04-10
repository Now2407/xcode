//
//  custombutton.swift
//  playingwithcustomclasses
//
//  Created by Noah Marriott on 5/5/16.
//  Copyright © 2016 Noah Marriott. All rights reserved.
//

import Foundation

import UIKit

class custombutton: UIButton {
    
    required init?(coder aDecoder: NSCoder) {
        
       super.init(coder: aDecoder)
        
            self.addTarget(nil, action: Selector("hello:"), forControlEvents: .TouchUpInside)
        
        
        
    }
    
    
    

    
    
    func hello(sender: UIButton){
        
        print("hello")
    }
    

}
