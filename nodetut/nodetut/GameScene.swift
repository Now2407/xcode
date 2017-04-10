//
//  GameScene.swift
//  nodetut
//
//  Created by Noah Marriott on 9/11/15.
//  Copyright (c) 2015 Noah Marriott. All rights reserved.
//

import SpriteKit

class GameScene: SKScene {
    
    var exampleLabelNode = SKLabelNode()
    override func didMoveToView(view: SKView) {
        
        exampleLabelNode = SKLabelNode(fontNamed: "Chalkduster")
        
        exampleLabelNode.text = "example label node!"
        exampleLabelNode.fontSize = 30
        
        exampleLabelNode.fontColor = SKColor.whiteColor()
        exampleLabelNode.position = CGPoint(x:self.frame.size.width/2, y:self.frame.height*0.75)
        
        self.addChild(exampleLabelNode)

    }
}
