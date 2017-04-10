//
//  nearByViewController.swift
//  StreetCommerce
//
//  Created by Noah Marriott on 11/27/15.
//  Copyright © 2015 Noah Marriott. All rights reserved.
//

import UIKit
import QuartzCore

class nearByViewController: UIViewController, UISearchBarDelegate, UITableViewDataSource, UITableViewDelegate {
    
    
    var miles = ["2 Miles Away", "2 Miles Away", "4 Miles Away", "2 Miles Away"]
    
    var productTitles = ["Times Square Framed Picture", "Light Up Colorful Alarm Clock ", "NYC Clothing Assortment", "Colored & Patterned Hand Bags"]
    
    var soldby = ["Joe Smith", "Bob Handy", "Joe Smith", "Mark Temp"]
    
    var cost = ["20.00", "15.00", "10.00", "20.00"]
    
    var imgs = ["pic1","pic3", "pic4", "pic5"]
    

    @IBOutlet weak var tbView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
       // self.navigationController?.navigationBar.translucent = false
        self.navigationController?.navigationBar.barStyle = .BlackTranslucent
        self.navigationController?.navigationBar.barTintColor = UIColor(red:0.11, green:0.55, blue:0.90, alpha:1.0)        //
        self.navigationController?.navigationBar.translucent = false
        //self.navigationController?.navigationBar.barStyle = .Black
        
    
        var search = UISearchBar(frame:CGRectMake(0.0, -0.20, self.view.bounds.width, 46.0))
        
        
        search.barTintColor = UIColor(red:0.04, green:0.54, blue:0.92, alpha:1.0)
        
        search.barStyle = .Default
        
search.layer.borderWidth = 1
        
        search.layer.borderColor = UIColor(red:0.11, green:0.55, blue:0.90, alpha:1.0).CGColor
        
        self.view.addSubview(search)
        
        
        let navigationBar: UINavigationBar = self.navigationController!.navigationBar
        navigationBar.setBackgroundImage(UIImage(named: "bar"), forBarPosition: .Any, barMetrics: .Default)
        
        self.navigationController?.navigationBar.shadowImage = UIImage()
        
        self.navigationController?.navigationBar.barTintColor = UIColor(red:0.11, green:0.55, blue:0.90, alpha:1.0)

        
        //

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 4
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        var cell = tableView.dequeueReusableCellWithIdentifier("TheCell") as! NearbyTableViewCell
        
    cell.productMiles.text = miles[indexPath.row]
        
    //cell.productPrice.text = cost[indexPath.row]
        
        //cell.soldBy.text = soldby[indexPath.row]
        
        cell.productTitle.text = productTitles[indexPath.row]
        
        cell.productImg.image = UIImage(named:"\(imgs[indexPath.row])")
        
        return cell
        
    }
    
    func tableView(tableView: UITableView, willDisplayCell cell: UITableViewCell, forRowAtIndexPath indexPath: NSIndexPath) {
        // Remove seperator inset
        if cell.respondsToSelector("setSeparatorInset:") {
            cell.separatorInset = UIEdgeInsetsZero
        }
        // Prevent the cell from inheriting the Table View's margin settings
        if cell.respondsToSelector("setPreservesSuperviewLayoutMargins:") {
            cell.preservesSuperviewLayoutMargins = false
        }
        // Explictly set your cell's layout margins
        if cell.respondsToSelector("setLayoutMargins:") {
            cell.layoutMargins = UIEdgeInsetsZero
        }
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
