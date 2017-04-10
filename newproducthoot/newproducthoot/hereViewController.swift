//
//  hereViewController.swift
//  newproducthoot
//
//  Created by Noah Marriott on 12/26/15.
//  Copyright © 2015 Noah Marriott. All rights reserved.
//

import UIKit

class hereViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet weak var tbView: UITableView!
    
    var images = ["image1","image2","image3","image4","image5","image6"]
    
    var productitles = ["Destiny - Standard Edition - Xbox One", "Destiny: Limited Edition - Xbox One", "Wii U Super Smash Bros and Splatoon Bundle", "Just Dance 2016 - Wii U", "Tough Armor Case for iPhone 6 / iPhone 6s ", "Apple Watch 42mm Space Gray"]

    override func viewDidLoad() {
        super.viewDidLoad()
        
        

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return images.count
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCellWithIdentifier("heretableviewcell") as! hereTableViewCell
        
        
        cell.productimage.image = UIImage(named: "\(images[indexPath.row])")
        cell.nameofproduct.text = productitles[indexPath.row]
        
        return cell
       
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if (segue.identifier == "toproductdetail") {
            
            let moreVC:reviewsViewController = segue.destinationViewController as! reviewsViewController
            
            let selectedRowIndex = self.tbView.indexPathForSelectedRow!
            
            moreVC.moveID = selectedRowIndex.row
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
