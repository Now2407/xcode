//
//  InterfaceController.swift
//  watchkitutut WatchKit Extension
//
//  Created by Noah Marriott on 9/9/15.
//  Copyright © 2015 Noah Marriott. All rights reserved.
//

import WatchKit
import Foundation


class InterfaceController: WKInterfaceController {
    @IBOutlet var textLabel: WKInterfaceLabel!

    override func awakeWithContext(context: AnyObject?) {
        super.awakeWithContext(context)
        
        // Configure interface objects here.
    }

    @IBAction func changeText() {
        
        textLabel.setText("hello world, i changed!")
    }
    override func willActivate() {
        // This method is called when watch view controller is about to be visible to user
        super.willActivate()
    }

    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
        super.didDeactivate()
    }

}
