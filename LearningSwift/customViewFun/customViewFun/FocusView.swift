//
//  FocusView.swift
//  customViewFun
//
//  Created by Noah Marriott on 2/2/16.
//  Copyright © 2016 Noah Marriott. All rights reserved.
//

import UIKit

class FocusView: UIView {

   
    override func canBecomeFocused() -> Bool {
        return true
    }
    
    override func didUpdateFocusInContext(context: UIFocusUpdateContext, withAnimationCoordinator coordinator: UIFocusAnimationCoordinator) {
        if context.previouslyFocusedView === self {
            UIView.animateWithDuration(0.1, animations: {() -> Void in
                
                context.previouslyFocusedView?.transform = CGAffineTransformMakeScale(1.0, 1.0)
               
        })
            
            
        }else if context.nextFocusedView === self {
           
                UIView.animateWithDuration(0.1, animations: {() -> Void in
                    
                    context.nextFocusedView?.transform = CGAffineTransformMakeScale(1.2, 1.2)
                    
                })
            }
        }
        
       
}


