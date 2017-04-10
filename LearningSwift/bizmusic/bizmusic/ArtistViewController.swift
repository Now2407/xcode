//
//  ArtistViewController.swift
//  bizmusic
//
//  Created by Noah Marriott on 4/10/16.
//  Copyright © 2016 Noah Marriott. All rights reserved.
//

import UIKit

class ArtistViewController: UIViewController, UITableViewDelegate, UITableViewDataSource, UISearchBarDelegate{
    
    
    
    
    @IBOutlet weak var tbView: UITableView!
    
    var shots = [artists]()
    
   
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
      
        
        

        
        var dict1 = [["date":"16", "month":"APR", "name":"Kristina Clark", "genre":"Pop & Dance", "miles":"1.4", "location":"The White Oak Bar"], ["date":"16", "month":"APR", "name":"Kristina Clark", "genre":"Pop & Dance", "miles":"1.4", "location":"The White Oak Bar"], ["date":"16", "month":"APR", "name":"Bob Smith", "genre":"Pop & Dance", "miles":"1.6", "location":"The White Oak Bar"], ["date":"16", "month":"APR", "name":"Jim Dale", "genre":"Pop & Dance", "miles":"1.4", "location":"The Klub SJ"]]
        
        
        
        for anItem in dict1 {
            
            let shot = artists(dict: anItem)
            shots.append(shot)
            
        }
  
      
        
        
        

        // Do any additional setup after loading the view.
    }
    
   
    
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return shots.count
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        let cell = tbView.dequeueReusableCellWithIdentifier("tbCell") as! ArtistTableViewCell
        
        cell.date.text = shots[indexPath.row].date
        cell.genre.text = shots[indexPath.row].genre
        cell.location.text = shots[indexPath.row].location
        cell.miles.text = "\(shots[indexPath.row].miles) Mi"
        cell.month.text = shots[indexPath.row].month
        cell.name.text = shots[indexPath.row].name
        
        return cell
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
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
