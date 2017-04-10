//
//  lists.swift
//  shoppingShare
//
//  Created by Noah Marriott on 2/8/16.
//  Copyright © 2016 Noah Marriott. All rights reserved.
//

import UIKit

class list {
    
    var savesnum: String!
    var previewimg: String!
    var profileicon: String!
    var trendingnum: String!
    var storeicon: String!
    var storename: String!
    var sharenum: String!
    
    
    
    
    
    
    init(dict: NSDictionary){
        
        self.savesnum = dict["saves_num"] as! String
        self.previewimg = dict["preview_url"] as! String
        self.profileicon = dict["profile_pic"] as! String
        self.trendingnum = dict["trending_num"] as! String
        self.storeicon = dict["store_icon"] as! String
        self.storename = dict["store_name"] as! String
        self.sharenum = dict["share_num"] as! String
        
        
        
    }
    
    
}