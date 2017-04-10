//
//  ViewController.swift
//  playingwithsearch
//
//  Created by Noah Marriott on 2/18/16.
//  Copyright © 2016 Noah Marriott. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UISearchControllerDelegate, UISearchResultsUpdating, UITableViewDataSource, UITableViewDelegate, UITabBarControllerDelegate {
    
  
    @IBOutlet weak var tbView: UITableView!
    @IBOutlet var hi: UIView!
    
    var window: UIWindow?
    
   
    
    
    @IBOutlet weak var searchTab: UITabBarItem!

    
    var items = ["one", "two", "three"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        

        
       
        
    
            
        
            
            
            
        
        
    
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    
    
    
    
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tbView.dequeueReusableCellWithIdentifier("cell")
        
        cell?.textLabel?.text = items[indexPath.row]
        
        
        return cell!
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 3
    }
   

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func updateSearchResultsForSearchController(searchController: UISearchController){
        //your code
    }
    

}

