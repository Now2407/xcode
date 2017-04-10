//
//  discoverTableViewCell.swift
//  shoppingShare
//
//  Created by Noah Marriott on 2/8/16.
//  Copyright © 2016 Noah Marriott. All rights reserved.
//

import UIKit

class discoverTableViewCell: UITableViewCell {

    @IBOutlet weak var title: UILabel!
    @IBOutlet weak var img: UIImageView!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
