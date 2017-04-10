//
//  searchViewController.swift
//  bizmusic
//
//  Created by Noah Marriott on 4/10/16.
//  Copyright © 2016 Noah Marriott. All rights reserved.
//

import UIKit

class searchViewController: UIViewController, UISearchBarDelegate {
    
    
    
    @IBOutlet weak var secondView: UIView!
    @IBOutlet weak var firstView: UIView!
    @IBOutlet weak var segControl: UISegmentedControl!
    
     var search = UISearchBar()

    override func viewDidLoad() {
        super.viewDidLoad()


        
        
        firstView.hidden = false
        secondView.hidden = true

        
        self.navigationItem.titleView = search
        self.search.barStyle = UIBarStyle.Black
        
        search.placeholder = "Search For An Artist, Genre, Or Place"
        
        search.delegate = self
        
      
        // Do any additional setup after loading the view.
    }
    
  
    
    @IBAction func didChangeView(sender: AnyObject) {
        
        
        switch segControl.selectedSegmentIndex {
        case 0:
            firstView.hidden = false
            secondView.hidden = true
            
            
            
            
            
        case 1:
            firstView.hidden = true
            secondView.hidden = false
            
        default:
            break;
        }
        
        
    }
    func searchBarShouldBeginEditing(searchBar: UISearchBar) -> Bool {
        var cancelSearchBarButtonItem = UIBarButtonItem(title: "Cancel", style: UIBarButtonItemStyle.Plain, target: self, action: "cancelBarButtonItemClicked")
        var bttn = UIBarButtonItem(title: "Filter", style: UIBarButtonItemStyle.Plain, target: self, action: "#filter")

            self.navigationItem.setRightBarButtonItems([cancelSearchBarButtonItem,bttn], animated: true)

        return true
    }
    
   
    
    
    func searchBarCancelButtonClicked(searchBar: UISearchBar) {
        print("2")
        // closes the keyboard
        searchBar.resignFirstResponder()
        
        // If you are using a search controller
        // self.searchDisplayControllerCustom.setActive(false, animated: true)
        
        // remove the cancel button
        self.navigationItem.setRightBarButtonItems(nil, animated: true)
    }
    
    func cancelBarButtonItemClicked() {
        self.searchBarCancelButtonClicked(self.search)
        print("1")
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
