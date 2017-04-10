//
//  ViewController.swift
//  moviePerks
//
//  Created by Noah Marriott on 9/27/15.
//  Copyright © 2015 Noah Marriott. All rights reserved.
//

import UIKit


class ViewController: UIViewController, UITabBarDelegate, UITableViewDataSource {
    
    
    
    var movieTitles = ["Hunger Games: Mocking Jay Part 2", "Star Wars: Episode VII - The Force Awakens", "Maze Runner 2: Scorch trials", "Peanutes The Movie", "The Good Dinosuarus"]
    
    var imgnames = ["hungergames", "starwars", "scorchtrialsposter", "peanutes", "thegooddinosaur"]
    
    var refed = ["Noah Marriott", "Nick Cortez", "Wane Dave", "Lisa L. Somely", "Ken Daves"]
    
   

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    self.tabBarController!.tabBar.translucent = false
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return movieTitles.count
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("CellRefs") as! MainTableViewCell
        
        let img = UIImage(named:"\(imgnames[indexPath.row])")
        
        cell.movieTitle.text = movieTitles[indexPath.row]
        cell.refName.text = "\(refed[indexPath.row]) Referred You"
        
        cell.movieImg.image = img 
        
        return cell
    }
    
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        
    }



}

