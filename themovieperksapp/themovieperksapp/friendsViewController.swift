//
//  friendsViewController.swift
//  themovieperksapp
//
//  Created by Noah Marriott on 12/28/15.
//  Copyright © 2015 Noah Marriott. All rights reserved.
//

import UIKit

class friendsViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    @IBOutlet weak var tbView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.tbView.separatorColor = UIColor(red:0.90, green: 0.90, blue: 0.90, alpha: 1)

        
        self.tbView.tableFooterView = UIView()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func cancelScreen(sender: AnyObject) {
        
        self.dismissViewControllerAnimated(true, completion: {});
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    var names = ["Bill Smith", "Joe Chan", "Mark zimmer", "Ted King"]
    
    var images = ["bill", "joe", "mark", "ted"]
    
    var hashtags = ["@billz", "@joe123", "@lemonguy", "@tedx"]
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return self.names.count
        
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCellWithIdentifier("cell") as!  friendsTableViewCell
      
        cell.name.text = names[indexPath.row]
        //cell.hashtag.text = hashtags[indexPath.row]
        cell.profileImage.image = UIImage(named: "\(images[indexPath.row])")
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
