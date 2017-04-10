//
//  custom.swift
//  tvframework
//
//  Created by Noah Marriott on 5/5/16.
//  Copyright © 2016 Noah Marriott. All rights reserved.
//

import UIKit

public class bttn: UIView {
    
    
   
   
    public init(frame: CGRect, mycolor:UIColor) {
        super.init(frame: frame)
        
        self.backgroundColor = mycolor
        
        self.userInteractionEnabled = true
        
        let gesture = UITapGestureRecognizer(target: self, action: "hello:")
        
        addGestureRecognizer(gesture)
        
        
    
    
    }
    
    func hello() {
        print("hello")
    }
    
    required public init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
  
   
    

   
 

    
}
