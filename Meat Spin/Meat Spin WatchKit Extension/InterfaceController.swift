//
//  InterfaceController.swift
//  Meat Spin WatchKit Extension
//
//  Created by Matthew Vogt on 2/9/18.
//  Copyright © 2018 SWEN-356. All rights reserved.
//

import WatchKit
import Foundation

class InterfaceController: WKInterfaceController {
    @IBOutlet var chickenImg: WKInterfaceImage!
    var chickenImageStateMachine: ChickenImageStateMachine?
    
    override func awake(withContext context: Any?) {
        // Configure interface objects here.
        super.awake(withContext: context)
    }
    
    override func willActivate() {
        // This method is called when watch view controller is about to be visible to user
        if (self.chickenImageStateMachine == nil) {
            self.chickenImageStateMachine = ChickenImageStateMachine(chickenImg: self.chickenImg)
        }
        super.willActivate()
    }
    
    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
        super.didDeactivate()
    }

}
