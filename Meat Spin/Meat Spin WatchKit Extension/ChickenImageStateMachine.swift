//
//  ChickenImageStates.swift
//  Meat Spin WatchKit Extension
//
//  Created by Wade Mauger on 2/16/18.
//  Copyright © 2018 SWEN-356. All rights reserved.
//

import WatchKit
import Foundation

class ChickenImageStateMachine: NSObject {
    // A reference to the UI element
    var chickenImg: WKInterfaceImage!
    var index = 0
    let images = [
        #imageLiteral(resourceName: "side-view-1"),
        #imageLiteral(resourceName: "side-view-2"),
        #imageLiteral(resourceName: "top-view"),
        #imageLiteral(resourceName: "side-view-4"),
        #imageLiteral(resourceName: "side-view-3"),
        #imageLiteral(resourceName: "bottom-view")
    ]
    //access to Swipe Engine
    var swipeEngine: SwipeEngine?
    
    // velocity is the pace at which the chicken spins
    let velocity = 1.0
    
    
    // If we figure out how to set the transparency of a png to a color,
    // we can show chicken "done-ness" with these values
    let bgColors = [
        UIColor(red: 229/255.0, green: 196/255.0, blue: 196/255.0, alpha: 1.0),
        UIColor(red: 215/255.0, green: 161/255.0, blue: 134/255.0, alpha: 1.0),
        UIColor(red: 207/255.0, green: 138/255.0, blue: 95/255.0, alpha: 1.0),
        UIColor(red: 187/255.0, green: 89/255.0, blue: 10/255.0, alpha: 1.0)
    ]
    
    init(chickenImg: WKInterfaceImage!){
        super.init()
        self.chickenImg = chickenImg
        self.next()
        Timer.scheduledTimer(
            timeInterval: self.velocity,
            target: self,
            selector: #selector(self.next),
            userInfo: nil,
            repeats: true
        )
    }
    
    // Called from the scheduled timer at every interval
    @objc func next(){
        if (self.index < (self.images.count-1)) {
            self.index += 1
        } else {
            self.index = 0
        }
        self.chickenImg.setImage(self.images[self.index])
    }
    
}
