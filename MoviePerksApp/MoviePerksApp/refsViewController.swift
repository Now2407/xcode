//
//  refsViewController.swift
//  MoviePerksApp
//
//  Created by Noah Marriott on 9/27/15.
//  Copyright © 2015 Noah Marriott. All rights reserved.
//

import UIKit

class refsViewController: UIViewController, UITableViewDataSource, UITableViewDelegate{
    
    var titles = ["Hunger Games: Mocking Jay Part 2", "Star Wars: Episode VII - The Force Awakens", "Maze Runner 2: Scorch trials", "Peanutes The Movie", "The Good Dinosuarus"]
    
    var refpics = ["noah-1", "noah-1", "noah-1", "noah-1", "noah-1"]
    
    var refnanes = ["Noah Marriott", "Noah Marriott", "Noah Marriott", "Noah Marriott", "Noah Marriott"]
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return refnanes.count
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCellWithIdentifier("thecell") as! refsTableViewCell
        
        
        cell.refpic.image = UIImage(named:"\(refpics[indexPath.row])")
        
        cell.movieTitle.text = titles[indexPath.row]
        
        cell.refNameTxt.text = "\(refnanes[indexPath.row]) Referred You"
        
      //  cell.refNameTxt.text = "\(refnanes[indexPath.row]) Refered You"
        
      //  cell.refPic.image = UIImage(named: "\(refpics[indexPath.row])")
        //cell.movieTitle.text = titles[indexPath.row]
        
        
        return cell
        
        
    }

}
