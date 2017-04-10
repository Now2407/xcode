//
//  ViewController.swift
//  classBookApp
//
//  Created by Noah Marriott on 7/21/15.
//  Copyright (c) 2015 Noah Marriott. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet weak var tbView: UITableView!
    var names = ["arts", "cooking", "programming", "music", "sports", "wood working", "fitness and health"]
    var imgs = ["arts.jpg", "cooking.jpg", "code.jpg", "piano.jpg", "sports.jpg", "wood.jpg", "yoga.jpg"]
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        println(imgs)
    
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
   
    
    
    func tableView(tableView:UITableView, numberOfRowsInSection section:Int) -> Int
    {
        return names.count
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tbView.dequeueReusableCellWithIdentifier("myCell") as! homeTableViewCell
        
        cell.title.text = names[indexPath.row]
        
        var imageName = UIImage(named: imgs[indexPath.row])
        
        cell.headerImg.image = imageName
        
        
        
        return cell
        
        
    }
    

    
    
}

