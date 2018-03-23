//
//  SwipeEngine.swift
//  Meat Spin WatchKit Extension
//
//  Created by Dan Sweetman on 3/22/18.
//  Copyright © 2018 SWEN-356. All rights reserved.
//

import Foundation
import WatchKit

class SwipeEngine: NSObject {
    var velocity = 1.0
    var score = 0
    
    func getVelocity() -> Double {
        return velocity
    }
    
    func onSwiped() -> Int {
        score += 1
        return score
    }
}
