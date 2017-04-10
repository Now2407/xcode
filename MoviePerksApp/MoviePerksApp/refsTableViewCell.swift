//
//  refsTableViewCell.swift
//  MoviePerksApp
//
//  Created by Noah Marriott on 9/27/15.
//  Copyright © 2015 Noah Marriott. All rights reserved.
//

import UIKit

class refsTableViewCell: UITableViewCell {

    @IBOutlet weak var refpic: UIImageView!
    @IBOutlet weak var movieTitle: UILabel!
    @IBOutlet weak var refNameTxt: UILabel!
   // @IBOutlet weak var refNameTxt: UILabel!
   // @IBOutlet weak var refPic: UIImageView!
   // @IBOutlet weak var movieTitle: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    

}
