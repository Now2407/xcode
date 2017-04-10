//
//  refViewController.swift
//  
//
//  Created by Noah Marriott on 10/3/15.
//
//

import UIKit

class refViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    var movienames = ["The Hunger Games Mocking Jay Part 2", "Star Wars: Episode VII - The Force Awakens", "Maze Runner 2: Scorch trials", "Peanutes The Movie", "The Good Dinosuarus"]
    
    var refnanes = ["Noah Marriott", "Noah Marriott", "Noah Marriott", "Noah Marriott", "Noah Marriott"]
    
    var movieratings = ["Rated PG-13", "Rated PG-13", "Rated PG-13", "Rated PG", "Rated G"]
    
    var actors = ["berry tom, zach ritz","berry tom, zach ritz","berry tom, zach ritz","berry tom, zach ritz","berry tom, zach ritz", ]
    
    var nearby = ["Playing Cinema 16 Today","Playing Cinema 16 Today","Playing Cinema Camera Today","Playing Cinema 16 Today","Playing Cinema 20 Today",]
    
    var movieimage = ["hungergames", "starwars", "scorchtrialsposter", "peanutes", "thegooddinosaur"]
    
    

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return movieimage.count
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("refCell") as! refTableViewCell
        
        cell.movieName.text = movienames[indexPath.row]
        cell.refName.text = "\(refnanes[indexPath.row]) Referred You"
        cell.movieRating.text = movieratings[indexPath.row]
        cell.movieActors.text = actors[indexPath.row]
        
        cell.playingNearby.text = nearby[indexPath.row]
        
        cell.movieImage.image = UIImage(named: "\(movieimage[indexPath.row])")
    
    return cell
    }
    
}

    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        
        
        
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */


