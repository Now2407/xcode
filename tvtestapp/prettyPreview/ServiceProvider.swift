//
//  ServiceProvider.swift
//  prettyPreview
//
//  Created by Noah Marriott on 9/10/15.
//  Copyright © 2015 Noah Marriott. All rights reserved.
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
        return TVTopShelfContentStyle.Inset
    }

    var topShelfItems: [TVContentItem] {
        // Create an array of TVContentItems.
        
      let item1 = TVContentItem(contentIdentifier: TVContentIdentifier(identifier: "myapp.item1", container: nil)!)
        
        item1?.imageURL = NSURL(string: <#T##String#>)
        
        return[item1!]
    }

}

