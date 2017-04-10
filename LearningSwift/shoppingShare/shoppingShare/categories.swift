//
//  categories.swift
//  shoppingShare
//
//  Created by Noah Marriott on 2/8/16.
//  Copyright © 2016 Noah Marriott. All rights reserved.
//

import UIKit

class category {
    
    var name: String!
    var imgurl: String!
    var id: String!
    
    init(dict: NSDictionary){
        self.id = dict["_id"] as! String
        self.name = dict["name"] as! String
        self.imgurl = dict["imgurl"] as! String
    }
    
}
