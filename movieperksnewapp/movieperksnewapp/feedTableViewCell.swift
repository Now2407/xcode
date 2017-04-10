//
//  feedTableViewCell.swift
//  movieperksnewapp
//
//  Created by Noah Marriott on 10/9/15.
//  Copyright © 2015 Noah Marriott. All rights reserved.
//

import UIKit

class feedTableViewCell: UITableViewCell{
    @IBOutlet weak var profileImg: UIImageView!

    @IBOutlet weak var movieTitle: UITextView!
    @IBOutlet weak var refname: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        
        movieTitle.editable = false
        movieTitle.selectable = false
        
        
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
