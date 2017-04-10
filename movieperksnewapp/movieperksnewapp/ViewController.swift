//
//  ViewController.swift
//  movieperksnewapp
//
//  Created by Noah Marriott on 10/9/15.
//  Copyright © 2015 Noah Marriott. All rights reserved.
//

import UIKit

class feedViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet weak var tbView: UITableView!
    
    var profileImgs = ["me", "girl", "boy","me","boy", "girl", "boy", "me"]
    var movieTitles = ["Star Wars Epiode 7 The Force Awakens", "The Hunger Games Mocking Jay Part 2",  "Peanuts The Movie", "Steve Jobs The Movie", "Maze Runner: The Scorch Trials", "Hotel Transylvania 2", "Martin The Movie", "Spectre"]
    
    var namerefs = ["Noah Marriott", "Beth Song", "Bob Dully", "Noah Marriott", "Bob Dully", "Beth Song", "Bob Dully","Noah Marriott"]


    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        self.tbView.separatorColor = UIColor(red:0.93, green:0.93, blue:0.93, alpha:1.0)
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return movieTitles.count
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("TheCell") as! feedTableViewCell
        
        cell.preservesSuperviewLayoutMargins = false
        cell.separatorInset = UIEdgeInsetsZero
        cell.layoutMargins = UIEdgeInsetsZero
        
        cell.profileImg.image = UIImage(named: "\(profileImgs[indexPath.row])")
        cell.movieTitle.text = movieTitles[indexPath.row]
        
        cell.refname.text = "\(namerefs[indexPath.row]) Referred You"
        
        
        
        return cell
        
    }


}

