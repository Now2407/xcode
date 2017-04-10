//
//  GameScene.swift
//  actions tut
//
//  Created by Noah Marriott on 1/2/16.
//  Copyright (c) 2016 Noah Marriott. All rights reserved.
//

import SpriteKit

class GameScene: SKScene {
    
    override func didMoveToView(view: SKView) {
        
        let spriteNode = SKSpriteNode(imageNamed: "myImage")
        
        
        spriteNode.size = CGSize(width: 180, height: 180)
        
        spriteNode.position = CGPoint(x: self.frame.height)
       
    }
    
   
}
