//
//  mainViewController.swift
//  themovieperksapp
//
//  Created by Noah Marriott on 12/27/15.
//  Copyright © 2015 Noah Marriott. All rights reserved.
//

import UIKit
import QuartzCore


    
    
    

class mainViewController: UIViewController {
    
    @IBOutlet weak var tbView: UITableView!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.tbView.separatorColor = UIColor(red:0.90, green: 0.90, blue: 0.90, alpha: 1)
        
  //  self.tabBarController!.tabBar.layer.borderWidth = 0.25
   //   self.tabBarController!.tabBar.layer.borderColor =        // self.tabBarController?.tabBar.clipsToBounds = true
        // Do any additional setup after loading the view.
        
        

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return names.count
    }
    
    var names = ["Bill", "Joe", "Mark", "Ted", "Joe", "Bill", "Ted"]
    var movietitles = ["James Bond Spectre", "The Hangover Part 3", "The Martin", "Steve Jobs The Movie", "Hunger Games Part 2 Mocking Jay", "Cloudy With A Chance Of Meatballs", "Back To The Future"]
    var images = ["bill", "joe", "mark", "ted", "joe", "bill", "ted"]
    var times = ["2 D", "5 D", "1 H", "4 H", "6 M", "5 D", "1 Y"]
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCellWithIdentifier("homecell") as!  mainTableViewCell
        
        cell.title.text = "\(names[indexPath.row]) Referred You to See"
        cell.movietitle.text = movietitles[indexPath.row]
        cell.profileImg.image = UIImage(named: "\(images[indexPath.row])")
        
        cell.days.text = times[indexPath.row]
        
        cell.preservesSuperviewLayoutMargins = false
        
        cell.layoutMargins = UIEdgeInsetsZero
        return cell
    }

    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
