//
//  pickmoviesViewController.swift
//  themovieperksapp
//
//  Created by Noah Marriott on 12/28/15.
//  Copyright © 2015 Noah Marriott. All rights reserved.
//

import UIKit

class pickmoviesViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource {

   
    @IBOutlet weak var collView: UICollectionView!
    var movies = ["image1", "image2", "image3", "image4", "image5", "image6", "image7", "image8"]
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func collectionView(collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return self.movies.count
    }
    
    func collectionView(collectionView: UICollectionView, cellForItemAtIndexPath indexPath: NSIndexPath) -> UICollectionViewCell {
        
        let cell = collectionView.dequeueReusableCellWithReuseIdentifier("movieCell", forIndexPath: indexPath) as! pickCollectionViewCell
        
        
        cell.movieImg.image = UIImage(named: "\(movies[indexPath.row])")
        
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
