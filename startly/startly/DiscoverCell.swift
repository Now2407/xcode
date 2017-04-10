//
//  DiscoverCell.swift
//  startly
//
//  Created by Noah Marriott on 8/1/15.
//  Copyright (c) 2015 Noah Marriott. All rights reserved.
//

import UIKit

class DiscoverCell: UITableViewCell {

    @IBOutlet weak var cityImage: UIImageView!
    @IBOutlet weak var cityName: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
