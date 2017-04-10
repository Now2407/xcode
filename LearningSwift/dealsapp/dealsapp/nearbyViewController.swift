//
//  nearbyViewController.swift
//  dealsapp
//
//  Created by Noah Marriott on 3/19/16.
//  Copyright © 2016 Noah Marriott. All rights reserved.
//

import UIKit

class nearbyViewController: UIViewController, UITableViewDataSource, UITableViewDelegate, UISearchBarDelegate {
    
    @IBOutlet weak var searchBarView: UINavigationItem!
    @IBOutlet weak var tbView: UITableView!
    var dealpics = ["beef", "beefdish", "desertshack"]
    var dealtimes = ["30 Mins 10 Secs", "55 Mins 20 Secs", "10 Mins 10 Secs"]
    
    var dealcosts = ["$20", "$30", "$25"]
    
    var dealsavings = ["Save 10%", "Save 30%", "Save 20%"]
    
    var dealnames = ["2 for dinner at Ying Hows","2 for dinner at Max's Diner", "1 for 2 at Desert Shack"]
    
    


    override func viewDidLoad() {
        super.viewDidLoad()
        
    

     
        
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        
        let cell = tbView.dequeueReusableCellWithIdentifier("foodCell") as! nearbyTableViewCell
        
        cell.dealPic.image = UIImage(named: "\(dealpics[indexPath.row])")
        
        cell.dealTime.text = dealtimes[indexPath.row]
        
        cell.dealCost.text = dealcosts[indexPath.row]
        
        cell.dealPrecent.text = dealsavings[indexPath.row]
        cell.dealName.text = dealnames[indexPath.row]

        return cell
        
    }
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return dealnames.count
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
