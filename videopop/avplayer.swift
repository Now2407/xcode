//
//  avplayer.swift
//  videopop
//
//  Created by Noah Marriott on 5/9/16.
//  Copyright © 2016 Noah Marriott. All rights reserved.
//

import Foundation

import UIKit


import AVKit


public class player:UIViewController  {
    
    //public var topvc = UIApplication.sharedApplication().keyWindow?.rootViewController
    
    
    
    public func playvideo(link: String){
        
        let player = AVPlayer(URL: NSURL(fileURLWithPath: link))
        
        player.play()
    
        
    }
    
    
 

 
//    public init(avurl: String) {
//        super.init()
//        
//        let aurl = NSURL(fileURLWithPath: avurl)
//        
//        let avplayer = AVPlayer(URL: aurl)
//        
//        avplayer.play()
//        
//      
//    }
    
//        if avplayer.rate > 0.0 {
//            
//            //player is paued
//            
//            
//            isplayiing(avplayer)
//            
//            
//            
//            
//        }else{
//            
//            isplayiing(avplayer)
//
//            
//            //player is playig
//            
//        }
//        
//        
//        while ((topvc?.presentedViewController) != nil) {
//            
//            topvc = topvc?.presentedViewController
//        }

        
    }
    
    
    
    

    
    
//    public func isplayiing(avplayer: AVPlayer){
//        
//        avplayer.play()
//        
//        
//        
//        
//        
//     
//        
//    }
//    
//    public func stopedplaying(avplayer: AVPlayer){
//        avplayer.pause()
//        
//        
//        
//        var modal = modalViewController()
//        
//    
//        topvc?.presentViewController(modal, animated: true, completion: nil)
//
//        
//    
//
//    }
    
    
    
    

