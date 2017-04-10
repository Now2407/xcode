//
//  nextbutton.swift
//  tvframework
//
//  Created by Noah Marriott on 5/6/16.
//  Copyright © 2016 Noah Marriott. All rights reserved.
//


import UIKit



public class newbttn: UIButton {
    
    
    public init(frame: CGRect, mycolor:UIColor) {
        super.init(frame: frame)
        
        self.backgroundColor = mycolor
        
        self.userInteractionEnabled = true
        
        self.setTitle("login", forState: .Normal)
        
       self.addTarget(self, action: "hello:", forControlEvents: .PrimaryActionTriggered)
    }
    
    
    
    func hello(sender: UIButton!){
        
        
        
        
        
        let apop = popview()
        
        apop.modalTransitionStyle = .CoverVertical
    
        var topvc = UIApplication.sharedApplication().keyWindow?.rootViewController
        
        while ((topvc?.presentedViewController) != nil) {

            topvc = topvc?.presentedViewController
        }
        
        topvc?.presentViewController(apop, animated: true, completion: nil)
        
        
        
        
        
        
        
        
        
        
        
        }
    
    required public init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
    
    
    
    
    
    
    
}