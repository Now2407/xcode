//
//  feedTableViewCell.swift
//  MyMoviePerks
//
//  Created by Noah Marriott on 10/8/15.
//  Copyright © 2015 Noah Marriott. All rights reserved.
//

import UIKit

class feedTableViewCell: UITableViewCell {

    @IBOutlet weak var movieImg: UIImageView!
    @IBOutlet weak var Genre: UILabel!
    @IBOutlet weak var rated: UILabel!
    @IBOutlet weak var title: UITextView!
    @IBOutlet weak var movieTitle: UILabel!
    @IBOutlet weak var profileImg: UIImageView!
    @IBOutlet weak var nameRef: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        
        
        
        // Initialization code
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
