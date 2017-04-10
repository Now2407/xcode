//
//  homeViewController.swift
//  IOU's
//
//  Created by Noah Marriott on 12/27/15.
//  Copyright © 2015 Noah Marriott. All rights reserved.
//

import UIKit

class homeViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    var images = ["Jim", "Joe", "Mark", "Bethany"]
    
    var names = ["Jim", "Joe", "Mark", "Bethany"]
    var amount = ["$20", "$5", "$15", "$25"]
    var reason = ["A Super Good Car Wash", "A Milk Shake At Denny's", "Meal At Joes Diner", "Groceries On 11/7/17"]
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    return reason.count
    }
    

    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCellWithIdentifier("homecell") as!  homeTableViewCell
        
        cell.title.text = "\(names[indexPath.row]) owes \(amount[indexPath.row]) for \(reason[indexPath.row])"
        
        cell.img.image = UIImage(named: "\(images[indexPath.row])")
        
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
