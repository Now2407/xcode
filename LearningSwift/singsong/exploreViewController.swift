///Users/Noah/Documents/XcodeProjects/LearningSwift/singsong/singsong.xcodeproj
//  exploreViewController.swift
//  singsong
//
//  Created by Noah Marriott on 2/9/16.
//  Copyright © 2016 Noah Marriott. All rights reserved.
//

import UIKit

class exploreViewController: UIViewController, UICollectionViewDataSource, UICollectionViewDelegate {
    
    var item1 = ["_id": "1", "url":"coldplay"]
    var item2 = ["_id": "1", "url":"deruilo"]

    var item3 = ["_id": "1", "url":"foo"]

    var item4 = ["_id": "1", "url":"zedd"]

    var item5 = ["_id": "1", "url":"prisim"]

    var item6 = ["_id": "1", "url":"myeverything"]

    var ex = [explore]()
    
    var arr = [NSDictionary]()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        arr.append(item1 as NSDictionary)
        arr.append(item2 as NSDictionary)
        arr.append(item3 as NSDictionary)
        arr.append(item4 as NSDictionary)
        arr.append(item6 as NSDictionary)
        arr.append(item6 as NSDictionary)
        
        for item in arr {
            let a = explore(dict: item)
            ex.append(a)
        
        }
        
        
        
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func collectionView(collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return ex.count
    }
    
    func collectionView(collectionView: UICollectionView, cellForItemAtIndexPath indexPath: NSIndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCellWithReuseIdentifier("exploreCell", forIndexPath: indexPath) as! exploreCollectionViewCell
        
        cell.coverImg.image = UIImage(named: "\(ex[indexPath.row].img)")
        
    
        
        return cell
        
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
