//
//  ViewController.swift
//  voteApp
//
//  Created by Noah Marriott on 7/19/15.
//  Copyright (c) 2015 Noah Marriott. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    var names = ["Zedd Arn", "Katy Perry", "Ariana Grande", "Bruno", "Pitbul mul"]
    var imgs = ["Zedd.jpg","Katy.jpg","Ariana.jpg", "Bruno.jpg", "Pitbul.jpg"]
        
    @IBOutlet weak var tbView: UITableView!
        
        override func viewDidLoad() {
            super.viewDidLoad()
            // Do any additional setup after loading the view, typically from a nib.
            
            tbView.tableFooterView = UIView(frame: CGRectZero)
        }
        
        override func didReceiveMemoryWarning() {
            super.didReceiveMemoryWarning()
            // Dispose of any resources that can be recreated.
        }
        
        func tableView(tableView:UITableView, numberOfRowsInSection section:Int) -> Int
        {
            return names.count
        }
        
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tbView.dequeueReusableCellWithIdentifier("thecell") as! TableViewCell
        
        cell.name.text = names[indexPath.row]
        
        var imageName = UIImage(named: imgs[indexPath.row])
        
        cell.profile.image = imageName
        
        
        
        return cell
        
        
    }
            


    
}




