//
//  ViewController.swift
//  startly
//
//  Created by Noah Marriott on 8/1/15.
//  Copyright (c) 2015 Noah Marriott. All rights reserved.
//

import UIKit



class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource, UISearchBarDelegate{
    @IBOutlet weak var tbVIew: UITableView!
    var searchbar = UISearchBar()
    
    var cities = ["New York", "San Francisco", "Boston", "Chicago", "Austin", "Denver", "Los Angeles"]
    
    var imgs = ["newyork.jpg", "sanfrancisco.jpg", "boston.jpg", "chicago.jpg", "austin.jpg", "denver.jpg", "losangeles.jpg"]
    var search = UISearchBar()

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        self.navigationItem.titleView = search
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return cities.count
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tbVIew.dequeueReusableCellWithIdentifier("theCell") as! DiscoverCell
       
        
        let theimg = UIImage(named: imgs[indexPath.row])
        
         cell.cityName.text = cities[indexPath.row]
        
        cell.cityImage.image = theimg
        
        return cell
        
    }
    
    


}

