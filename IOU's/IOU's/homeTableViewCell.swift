//
//  homeTableViewCell.swift
//  IOU's
//
//  Created by Noah Marriott on 12/27/15.
//  Copyright © 2015 Noah Marriott. All rights reserved.
//

import UIKit

class homeTableViewCell: UITableViewCell {

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
