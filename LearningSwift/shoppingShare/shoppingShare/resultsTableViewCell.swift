//
//  resultsTableViewCell.swift
//  shoppingShare
//
//  Created by Noah Marriott on 2/8/16.
//  Copyright © 2016 Noah Marriott. All rights reserved.
//

import UIKit

class resultsTableViewCell: UITableViewCell {
    @IBOutlet weak var previewImg: UIImageView!

    @IBOutlet weak var flamenum: UILabel!
    @IBOutlet weak var sharenum: UILabel!
    @IBOutlet weak var savenum: UILabel!
    @IBOutlet weak var creatorImg: UIImageView!
    @IBOutlet weak var storeName: UILabel!
    @IBOutlet weak var storeIcon: UIImageView!
    @IBOutlet weak var listName: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
