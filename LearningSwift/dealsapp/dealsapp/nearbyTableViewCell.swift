//
//  nearbyTableViewCell.swift
//  dealsapp
//
//  Created by Noah Marriott on 3/19/16.
//  Copyright © 2016 Noah Marriott. All rights reserved.
//

import UIKit

class nearbyTableViewCell: UITableViewCell {
    @IBOutlet weak var dealTime: UILabel!

    @IBOutlet weak var dealPic: UIImageView!
    @IBOutlet weak var dealCost: UILabel!
    @IBOutlet weak var dealPrecent: UILabel!
    @IBOutlet weak var dealName: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
