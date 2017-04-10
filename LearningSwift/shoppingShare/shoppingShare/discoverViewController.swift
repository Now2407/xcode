//
//  discoverViewController.swift
//  shoppingShare
//
//  Created by Noah Marriott on 2/8/16.
//  Copyright © 2016 Noah Marriott. All rights reserved.
//

import UIKit

class discoverViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    //create fake objects
    
    var items = [category]()
    
    var arr = [NSDictionary]()
    
    var obj1 = ["_id":"1", "name": "Paleo Diet", "imgurl": "paleo"]
    var obj2 = ["_id":"3", "name": "Slim Diet", "imgurl": "diet"]
    var obj3 = ["_id":"4", "name": "Movie Time", "imgurl": "moviesnacks"]
    

    override func viewDidLoad() {
        super.viewDidLoad()

        
        
        arr.append(obj1 as NSDictionary)
        arr.append(obj2 as NSDictionary)
        arr.append(obj3 as NSDictionary)
        
        
        for item in arr {
            
            let a = category(dict: item)
            items.append(a)
        }
        
        print(items)
        
       
        
        
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
  
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCellWithIdentifier("DCell") as! discoverTableViewCell
        cell.title.text = items[indexPath.row].name
        cell.img.image = UIImage(named: "\(items[indexPath.row].imgurl)")
        
        return cell
        
        
        
    }
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        
        
       return items.count
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
