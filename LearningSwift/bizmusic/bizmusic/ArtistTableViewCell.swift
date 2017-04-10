//
//  ArtistTableViewCell.swift
//  bizmusic
//
//  Created by Noah Marriott on 4/10/16.
//  Copyright © 2016 Noah Marriott. All rights reserved.
//

import UIKit
import QuartzCore

class ArtistTableViewCell: UITableViewCell {

    @IBOutlet weak var calView: UIView!
    @IBOutlet weak var date: UILabel!
    @IBOutlet weak var month: UILabel!
    @IBOutlet weak var name: UILabel!
    @IBOutlet weak var genre: UILabel!
    @IBOutlet weak var location: UILabel!
    @IBOutlet weak var miles: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
    
        calView.layer.cornerRadius = 2
        calView.layer.masksToBounds = true
        
        // Initialization code
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
