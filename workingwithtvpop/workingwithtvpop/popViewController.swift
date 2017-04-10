//
//  popViewController.swift
//  workingwithtvpop
//
//  Created by Noah Marriott on 5/9/16.
//  Copyright © 2016 Noah Marriott. All rights reserved.
//

import UIKit

import AVFoundation

class popViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    func playvideo(link: String){
        
        let player = AVPlayer(URL: NSURL(fileURLWithPath: link))
        
        player.play()
        
        
        
        
    }

}
