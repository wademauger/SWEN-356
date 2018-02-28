//
//  GameEngine.swift
//  Meat Spin WatchKit Extension
//
//  Created by Paul Nicholas Kowalczuk on 2/28/18.
//  Copyright © 2018 SWEN-356. All rights reserved.
//

import WatchKit
import Foundation

class GameEngine: NSObject {
    var count = 0
    
    var countTimer = Timer.scheduledTimer(timeInterval: 3, target: self, selector: #selector(autoRotate), userInfo: nil, repeats: true)
    
    @objc func autoRotate(){
        count += 1
    }
    
    func getScore() -> Int{
        return count
    }
}
