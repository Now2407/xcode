//
//  homeTableViewCell.swift
//  classBookApp
//
//  Created by Noah Marriott on 7/21/15.
//  Copyright (c) 2015 Noah Marriott. All rights reserved.
//

import UIKit

class homeTableViewCell: UITableViewCell {

    @IBOutlet weak var title: UILabel!
    @IBOutlet weak var headerImg: UIImageView!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
