//
//  tableViewController.swift
//  listapp
//
//  Created by Noah Marriott on 2/9/16.
//  Copyright © 2016 Noah Marriott. All rights reserved.
//

import UIKit
import CoreData

class ViewController: UITableViewController {
    
    var listitems = [NSManagedObject]()

    override func viewDidLoad() {
        super.viewDidLoad()

        self.navigationItem.rightBarButtonItem = UIBarButtonItem(barButtonSystemItem: .Add, target: self, action: Selector("add"))
        // Do any additional setup after loading athe view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func add(){
        let alertcontroller = UIAlertController(title: "type someting", message: <#T##String?#>, preferredStyle: .Alert)
        
        let confirmaction = UIAlertAction(title: "type somthing!", style: .Default, handler: ({
            
            (_) in
            
            
    
            }
    ))
        
    
    }

    func itemToSave(item: String){
        
        let appdel = UIApplication.sharedApplication().delegate as! AppDelegate
        
        let 
        
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */
    
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("cell")! as UITableViewCell
        
        return cell
    }
    
}
