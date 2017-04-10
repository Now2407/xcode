//
//  videos.swift
//  singsong
//
//  Created by Noah Marriott on 2/9/16.
//  Copyright © 2016 Noah Marriott. All rights reserved.
//

import UIKit

class video {
    
    var videourl: String!
    var videoname: String!
    var likecount: String!
    var thumbnail: String!
    var length: String!
    
    init(dict: NSDictionary){
        
        self.videourl = dict["video_url"] as? String
        self.videoname = dict["name"] as? String
        self.likecount = dict["like_count"] as? String
        self.thumbnail = dict["thumbnail_url"] as? String
        self.length = dict["length_count"] as? String
        
        
    }
    
    
    
    
}
