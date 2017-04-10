//
//  meViewController.swift
//  
//
//  Created by Noah Marriott on 9/26/15.
//
//

import UIKit

var rowselected:String!


class meViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    
        var all = ["discovery-1", "discovery-2", "discovery-3", "discovery-4", "discovery-5","discovery-6"]
        
        override func viewDidLoad() {
            super.viewDidLoad()
            
            // Do any additional setup after loading the view.
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
        
        
        
        
        
        
        
        func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
            return all.count
        }
        
        func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
            
            let cell = tableView.dequeueReusableCellWithIdentifier("cell") as! picTableViewCell
            
            
            let imga = UIImage(named: "\(all[indexPath.row])")
            cell.img.image = imga
            
            return cell
            
            
            
        }
    
    
    
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        tableView.deselectRowAtIndexPath(indexPath, animated: true)
        
        //let row = indexPath.row
        //rowselected = all[row]
        
//       var tb = tableView.cellForRowAtIndexPath(indexPath)
//        print()
    }
    
    
//    override func prepareForSegue(segue: UIStoryboardSegue!, sender: AnyObject!) {
//        if (segue.identifier == "YourSegueName") {
//            //get a reference to the destination view controller
//            let destinationVC:detail1ViewController = segue.destinationViewController
//            
//            //set properties on the destination view controller
//            self.destinationVC.me = rowselected
//            //etc...
//        }
//    }
}
       
        
        

