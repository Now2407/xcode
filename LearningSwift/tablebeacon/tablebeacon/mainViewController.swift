//
//  mainViewController.swift
//  tablebeacon
//
//  Created by Noah Marriott on 2/7/16.
//  Copyright © 2016 Noah Marriott. All rights reserved.
//

import UIKit

class mainViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    
   var foods = [food]()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        foods += [food(id: 1, name: "Chicken Dishes", feedImage: "chicken", amount: 6)]
        foods += [food(id: 2, name: "Drinks", feedImage: "drinks", amount: 5)]
        foods += [food(id: 3, name: "Side Dishes", feedImage: "sides", amount: 5)]
        
        
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
       // return foods.count
        
        return foods.count
        
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCellWithIdentifier("foodCell") as! mainTableViewCell
        
        cell.catname.text = foods[indexPath.row].name
        
        cell.foodPic.image = UIImage(named: "\(foods[indexPath.row].feedImage)")
        
        cell.catamount.text = String(foods[indexPath.row].amount)

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
