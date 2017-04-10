//
//  homeViewController.swift
//  yipapp
//
//  Created by Noah Marriott on 12/29/15.
//  Copyright © 2015 Noah Marriott. All rights reserved.
//

import UIKit

class homeViewController: UIViewController, UITableViewDelegate, UITableViewDataSource{
    
    @IBOutlet weak var tbView: UITableView!
    var times = ["1", "5", "3"]
    var images = ["spotspizza", "bestbuy", "purelounge"]
    
    var messages = ["We are having a sale for mini Pizza's! buy one get one free on all pizza toppings and get 20 dollars off any large pizza as well! enjoy!", "we just shipped our iPad Air 3! we having a sale on all iPad Air 2's! come check it out!", "we are celebrating our 20 year birthday! we are having a sale on the bar! 2 drinks for 50% off! come between now and saturday!"]
    var names = ["Spots Pizza", "Bestbuy", "Pure lounge"]

    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.tbView.rowHeight = UITableViewAutomaticDimension
        
        self.tbView.estimatedRowHeight = 44.0
        // Do any additional setup after loading the view.
    }
    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }

  
   

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return names.count
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("MainCell") as! homeTableViewCell
        
        cell.logo.image = UIImage(named: "\(images[indexPath.row])")
                cell.timePosted.text = "\(times[indexPath.row]) hr Ago"
        
        cell.message.text = messages[indexPath.row]
        
        cell.nameOfBiz.text = names[indexPath.row]
        
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
