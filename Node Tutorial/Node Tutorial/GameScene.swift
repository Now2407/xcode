//
//  GameScene.swift
//  Node Tutorial
//
//  Created by Noah Marriott on 1/1/16.
//  Copyright (c) 2016 Noah Marriott. All rights reserved.
//

import SpriteKit

class GameScene: SKScene {
    override func didMoveToView(view: SKView) {
        
        let exampleLabelNode = SKLabelNode(fontNamed:"Chalkduster")
        exampleLabelNode.text = "Example label node!"
        exampleLabelNode.fontSize = 30
        exampleLabelNode.fontColor = SKColor.whiteColor()
        exampleLabelNode.position = CGPoint(x: self.frame.width/2, y: self.frame.size.height*0.75)
        
        self.addChild(exampleLabelNode)
        
        let exampleSpriteNode = SKSpriteNode(imageNamed: "myImage")
        
        exampleSpriteNode.size = CGSize(width: 180, height: 180)
        
        exampleSpriteNode.anchorPoint = CGPoint(x: 0.5, y: 0.5)
        exampleSpriteNode.position = CGPoint(x: self.frame.size.width/2, y: self.frame.size.height*0.25)
        
        exampleSpriteNode.zPosition = 100
        
        exampleSpriteNode.name = "exampleName"
        
        self.addChild(exampleSpriteNode)
        
        
    }
    
   }
