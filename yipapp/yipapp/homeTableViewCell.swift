//
//  homeTableViewCell.swift
//  yipapp
//
//  Created by Noah Marriott on 12/29/15.
//  Copyright © 2015 Noah Marriott. All rights reserved.
//

import UIKit
import QuartzCore

class homeTableViewCell: UITableViewCell {
    @IBOutlet weak var logo: UIImageView!

    @IBOutlet weak var timePosted: UILabel!
    @IBOutlet weak var message: UITextView!
    @IBOutlet weak var nameOfBiz: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        
        logo.layer.cornerRadius = 5
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
