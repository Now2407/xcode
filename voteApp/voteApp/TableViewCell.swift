//
//  TableViewCell.swift
//  voteApp
//
//  Created by Noah Marriott on 7/20/15.
//  Copyright (c) 2015 Noah Marriott. All rights reserved.
//

import UIKit
import QuartzCore
class TableViewCell: UITableViewCell {

    @IBOutlet weak var name: UILabel!
    @IBOutlet weak var profile: UIImageView!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
      
        
        
    
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
