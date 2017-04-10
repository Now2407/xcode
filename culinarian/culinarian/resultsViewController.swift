//
//  resultsViewController.swift
//  culinarian
//
//  Created by Noah Marriott on 9/27/15.
//  Copyright © 2015 Noah Marriott. All rights reserved.
//

import UIKit
import Firebase

class resultsViewController: UIViewController {
    
    var ref = Firebase(url:"https://culinarianapp.firebaseio.com/posts")
    // Attach a closure to read the data at our posts reference
    
    var LocalDict = [NSDictionary]()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        
        ref.queryOrderedByChild("tacos").observeEventType(.ChildAdded, withBlock: { snapshot in
            print("\(snapshot.value)")
            
            var dict = snapshot.value as! NSDictionary
            
            self.info(dict)
            
            
        })
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func info (diction:NSDictionary){
        for var i = 0; i > diction.count; i++ {
            LocalDict.append(diction)
            
            
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
