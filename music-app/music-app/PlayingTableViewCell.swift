//
//  PlayingTableViewCell.swift
//  music-app
//
//  Created by Noah Marriott on 8/30/15.
//  Copyright (c) 2015 Noah Marriott. All rights reserved.
//

import UIKit

class PlayingTableViewCell: UITableViewCell {

    @IBOutlet weak var suggetedby: UILabel!
    @IBOutlet weak var artPic: UIImageView!
    
    @IBOutlet weak var songAlbum: UILabel!
    @IBOutlet weak var SongArtist: UILabel!
    @IBOutlet weak var songName: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
