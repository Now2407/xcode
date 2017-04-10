//
//  NearbyTableViewCell.swift
//  StreetCommerce
//
//  Created by Noah Marriott on 11/27/15.
//  Copyright © 2015 Noah Marriott. All rights reserved.
//

import UIKit

class NearbyTableViewCell: UITableViewCell {

    @IBOutlet weak var productTitle: UITextView!
    @IBOutlet weak var productMiles: UILabel!
    @IBOutlet weak var productPrice: UILabel!
    @IBOutlet weak var productImg: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
