//
//  ViewController.swift
//  music-app
//
//  Created by Noah Marriott on 8/30/15.
//  Copyright (c) 2015 Noah Marriott. All rights reserved.
//

import UIKit

class PlayingViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    
    
    var songnames = ["Shots", "Spectrum", "Break Free"]
    
//    var songnum = ["1 in Queue", "2 in Queue", "3 in Queue"]
    
    var artists = ["LMFAO","Zedd", "Ariana Grande"]
    
    var albumpics = ["party","zedd-art", "breakfree"]
    
    var albumnames = ["Sorry For Party Rocking","Clairty (Deluxe)", "My Everything (Deluxe)"]
    
    var userssugget = ["Now2407", "FredMon", "Dude360"]
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return songnames.count
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("TheCell") as! PlayingTableViewCell
        
        var albumArt = UIImage(named: albumpics[indexPath.row])
        
//        cell.songQueue.text = songnum[indexPath.row]
        
        cell.songName.text = songnames[indexPath.row]
        
        cell.SongArtist.text = artists[indexPath.row]
        
        cell.artPic.image = albumArt
        
        cell.suggetedby.text = userssugget[indexPath.row]
        
        return cell
        
        
        
        
        
    }



}

