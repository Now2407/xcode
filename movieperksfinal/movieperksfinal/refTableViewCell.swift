//
//  refTableViewCell.swift
//  movieperksfinal
//
//  Created by Noah Marriott on 10/3/15.
//  Copyright © 2015 Noah Marriott. All rights reserved.
//

import UIKit

class refTableViewCell: UITableViewCell {

    @IBOutlet weak var movieName: UILabel!
    @IBOutlet weak var refName: UILabel!
    @IBOutlet weak var movieRating: UILabel!
    @IBOutlet weak var movieActors: UILabel!
    @IBOutlet weak var playingNearby: UILabel!
    @IBOutlet weak var movieImage: UIImageView!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
