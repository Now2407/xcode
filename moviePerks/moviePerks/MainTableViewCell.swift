//
//  MainTableViewCell.swift
//  moviePerks
//
//  Created by Noah Marriott on 9/27/15.
//  Copyright © 2015 Noah Marriott. All rights reserved.
//

import UIKit

extension UILabel {
    func kern(kerningValue:CGFloat) {
        self.attributedText =  NSAttributedString(string: self.text ?? "", attributes: [NSKernAttributeName:kerningValue, NSFontAttributeName:font, NSForegroundColorAttributeName:self.textColor])
    }
}

class MainTableViewCell: UITableViewCell {
    @IBOutlet weak var movieTitle: UILabel!

    @IBOutlet weak var refName: UILabel!
    
    
    @IBOutlet weak var movieImg: UIImageView!
    override func awakeFromNib() {
        super.awakeFromNib()
        
        
        // Initialization code
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        
        movieTitle.kern(0.5)

        // Configure the view for the selected state
    }

}
