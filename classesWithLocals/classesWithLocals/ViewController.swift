//
//  ViewController.swift
//  classesWithLocals
//
//  Created by Noah Marriott on 7/21/15.
//  Copyright (c) 2015 Noah Marriott. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet weak var tbView: UITableView!
    var names = ["Cooking", "Programming", "Music", "Sports", "Wood Working", "Fitness And Health"]
    var imgs = [ "cooking.jpg", "code.jpg", "piano.jpg", "sports.jpg", "wood.jpg", "yoga.jpg"]
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
      
       
        
        
    }


    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func tableView(tableView:UITableView, numberOfRowsInSection section:Int) -> Int {
        return self.names.count
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tbView.dequeueReusableCellWithIdentifier("theCell") as! homeCell
        
        cell.name.text = names[indexPath.row]
        let theImage = UIImage(named: imgs[indexPath.row])
        cell.img.image = theImage
        
        return cell
    }
    
   

}

