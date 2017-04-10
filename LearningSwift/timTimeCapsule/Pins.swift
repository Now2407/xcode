//
//  Pins.swift
//  timTimeCapsule
//
//  Created by Noah Marriott on 2/7/16.
//  Copyright © 2016 Noah Marriott. All rights reserved.
//

import UIKit

class pin {
    
    var name:String!
    var person: String!
    var lat:String!
    var lng:String!
    var post: String!
    
    init(dict: NSDictionary){
        self.name = dict["name"] as! String
        self.person = dict["_id"] as! String
        self.lat = dict["lat"] as! String
        self.lng = dict["lng"] as! String
        self.post = dict["post"] as! String
        
    }
    
    
    
}