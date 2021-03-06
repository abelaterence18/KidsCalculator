//
//  DraggedImageView.swift
//  KidsCalculator
//
//  Created by Terence Abela on 24/11/2016.
//  Copyright © 2016 Terence Abela. All rights reserved.
//

import UIKit

class DraggedImageView: UIImageView {

    var startLocation: CGPoint?
    
    override func touchesBegan(touches: Set<UITouch>, withEvent event: UIEvent?) {
    
    
        startLocation = touches.first?.locationInView(self)
    
    }
    
    override func touchesMoved(touches: Set<UITouch>, withEvent event: UIEvent?) {
        
    
    let currentLocation = touches.first?.locationInView(self)
    let dx = currentLocation!.x - startLocation!.x
    let dy = currentLocation!.y - startLocation!.x
        
        
    self.center  = CGPointMake(self.center.x+dx, self.center.y+dy)
    
    }
    
    

}
