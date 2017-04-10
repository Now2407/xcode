//
//  ViewController.swift
//  MyMoviePerks
//
//  Created by Noah Marriott on 10/6/15.
//  Copyright © 2015 Noah Marriott. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet weak var tbView: UITableView!
    var profileImgs = ["me", "girl", "boy","me","boy", "girl", "boy", "me"]
    var movieTitles = ["Star Wars Epiode 7 The Force Awakens", "The Hunger Games Mocking Jay Part 2",  "Peanuts The Movie", "Steve Jobs The Movie", "Insurgent", "Back To The Future Part 3", "Martin The Movie", "007 Spectre"]
    
    var namerefs = ["Noah Marriott", "Beth Song", "Bob Dully", "Noah Marriott", "Bob Dully", "Beth Song", "Bob Dully","Noah Marriott"]

    
   var rated = ["PG-13", "PG-13", "G", "R", "PG-13", "PG-13", "PG-13","PG-13"]
    var Gen = ["Action", "Drama", "Action", "Documentry", "Comedy", "Action", "Action", "Action", "Action"]
    
    var backDrops = ["star", "mock", "charlie", "steve", "surge", "bttf", "martin", "007"]

    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    //self.tbView.separatorColor = UIColor(red:0.93, green:0.93, blue:0.93, alpha:1.0)
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
        
        
        cell.profileImg.image = UIImage(named: "\(profileImgs[indexPath.row])")
        cell.movieTitle.text = movieTitles[indexPath.row]
        
        cell.nameRef.text = "\(namerefs[indexPath.row]) Referred You"
        
        cell.movieImg.image = UIImage(named: "\(backDrops[indexPath.row])")
        
        return cell
        
    }
    
   
    


func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
    
    
    
}
    
   

    

}

