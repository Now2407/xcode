//
//  explore.swift
//  singsong
//
//  Created by Noah Marriott on 2/9/16.
//  Copyright © 2016 Noah Marriott. All rights reserved.
//

import UIKit

class explore {
    
    var img: String!
    var id: String!
    
    init(dict: NSDictionary){
        
        self.img = dict["url"] as? String
        self.id = dict["_id"] as? String
        
    }
    
    
}
