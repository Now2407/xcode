//
//  ServiceProvider.swift
//  prettypreview
//
//  Created by Noah Marriott on 2/1/16.
//  Copyright © 2016 Noah Marriott. All rights reserved.
//

import Foundation
import TVServices

class ServiceProvider: NSObject, TVTopShelfProvider {

    override init() {
        super.init()
    }

    // MARK: - TVTopShelfProvider protocol

    var topShelfStyle: TVTopShelfContentStyle {
        // Return desired Top Shelf style.
        return .Inset
    }

    var topShelfItems: [TVContentItem] {
        // Create an array of TVContentItems.
        
        let item1 = TVContentItem(contentIdentifier: TVContentIdentifier(identifier: "myapp.item1", container:nil)!)
        
            item1?.imageURL = NSURL(string: "http://compass.xbox.com/assets/23/0d/230dc52a-8f0e-40bf-bbd1-c51fdb8371e3.png?n=Homepage-360-UA_Upgrade-big_1056x594.png")
            
        
       
        return [item1!]
    }

}

