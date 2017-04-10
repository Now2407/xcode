//
//  homeCell.swift
//  classesWithLocals
//
//  Created by Noah Marriott on 7/21/15.
//  Copyright (c) 2015 Noah Marriott. All rights reserved.
//

import UIKit

class homeCell: UITableViewCell {

    @IBOutlet weak var img: UIImageView!
    @IBOutlet weak var name: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
