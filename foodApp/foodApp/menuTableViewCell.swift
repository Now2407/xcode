//
//  menuTableViewCell.swift
//  foodApp
//
//  Created by Noah Marriott on 9/20/15.
//  Copyright © 2015 Noah Marriott. All rights reserved.
//

import UIKit

class menuTableViewCell: UITableViewCell {

    @IBOutlet weak var rateBttn: UIButton!
    @IBOutlet weak var dishName: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
