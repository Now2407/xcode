//
//  mainTableViewCell.swift
//  themovieperksapp
//
//  Created by Noah Marriott on 12/27/15.
//  Copyright © 2015 Noah Marriott. All rights reserved.
//

import UIKit
import QuartzCore

class mainTableViewCell: UITableViewCell {

    @IBOutlet weak var days: UILabel!
    @IBOutlet weak var movietitle: UILabel!
    @IBOutlet weak var title: UILabel!
    @IBOutlet weak var profileImg: UIImageView!
    override func awakeFromNib() {
        super.awakeFromNib()
        
        self.profileImg.layer.cornerRadius = 5
       // title.font = UIFont(name: "Helvitca-neue", size:10)
        
        // Initialization code
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
