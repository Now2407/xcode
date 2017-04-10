//
//  hi.swift
//  hellotv
//
//  Created by Noah Marriott on 5/5/16.
//  Copyright © 2016 Noah Marriott. All rights reserved.
//

import Foundation

import UIKit

public class bttn: UIButton {
    
   
    
    required public init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        
        addTarget(nil, action: Selector("hello:"), forControlEvents: .TouchUpInside)
        
    
    }
    
    private func hello(){
        
        print("hello")
    }
    
    
}
