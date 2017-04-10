//
//  friendsTableViewCell.swift
//  themovieperksapp
//
//  Created by Noah Marriott on 12/28/15.
//  Copyright © 2015 Noah Marriott. All rights reserved.
//

import UIKit
import QuartzCore


class friendsTableViewCell: UITableViewCell {
    @IBOutlet weak var hashtag: UILabel!

    @IBOutlet weak var name: UILabel!
    @IBOutlet weak var profileImage: UIImageView!
    override func awakeFromNib() {
        super.awakeFromNib()
        self.profileImage.layer.cornerRadius = 5

        // Initialization code
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
