//
//  nearbyViewController.swift
//  Magicpass
//
//  Created by Noah Marriott on 8/23/15.
//  Copyright (c) 2015 Noah Marriott. All rights reserved.
//

import UIKit

class nearbyViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet weak var tbVIew: UITableView!
    
    var logo = ["logo2", "caGreat"]
    var theName = ["Mastercard Masters of Code", "California's Great America"]
    var cat = ["Events", "Theme Parks"]
    var location = ["San Fransisco, CA", "Santa Clara, CA"]
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return theName.count
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        let cell = tbVIew.dequeueReusableCellWithIdentifier("theCell") as! nearbyTableViewCell
        
        var logoImg = UIImage(named: logo[indexPath.row])
        
        cell.logo.image = logoImg
        cell.Name.text = theName[indexPath.row]
        cell.cat.text = cat[indexPath.row]
        cell.city.text = location[indexPath.row]
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
