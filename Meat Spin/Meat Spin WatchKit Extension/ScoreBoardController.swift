//
//  ScoreBoardController.swift
//  Meat Spin WatchKit Extension
//
//  Created by Paul Nicholas Kowalczuk on 3/20/18.
//  Copyright © 2018 SWEN-356. All rights reserved.
//

import WatchKit
import Foundation


class ScoreBoardController: WKInterfaceController {

    override func awake(withContext context: Any?) {
        super.awake(withContext: context)
        
        // Configure interface objects here.
    }

    override func willActivate() {
        // This method is called when watch view controller is about to be visible to user
        super.willActivate()
    }


    @IBOutlet var topLabel: WKInterfaceLabel!
    
    @IBAction func getScores() {
        var serverAddress: CFString
        let serverPort = 4444
        serverAddress = "127.0.0.1" as CFString
        var readStream:  Unmanaged<CFReadStream>?
        var writeStream: Unmanaged<CFWriteStream>?
        CFStreamCreatePairWithSocketToHost(nil, serverAddress, UInt32(serverPort), &readStream, &writeStream)
        topLabel.setText("we've made it this far")
    }
    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
        super.didDeactivate()
    }

}
