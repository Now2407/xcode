//
//  hereTableViewCell.swift
//  newproducthoot
//
//  Created by Noah Marriott on 12/26/15.
//  Copyright © 2015 Noah Marriott. All rights reserved.
//

import UIKit

class hereTableViewCell: UITableViewCell {

    @IBOutlet weak var nameofproduct: UILabel!
    @IBOutlet weak var productimage: UIImageView!
   
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
