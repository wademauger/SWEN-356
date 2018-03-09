//
//  UpgradesInterfaceController.swift
//  Meat Spin WatchKit Extension
//
//  Created by Wade Mauger on 3/9/18.
//  Copyright © 2018 SWEN-356. All rights reserved.
//

import WatchKit
import Foundation

class UpgradesInterfaceController: WKInterfaceController {
    @IBOutlet var TableElement: WKInterfaceTable!
    let seasonings = ["Lemon Pepper": 0, "Cajon Rub": 1, "Barbeque": 2]
    
    override init() {
        super.init()
        loadTableData()
    }
    
    private func loadTableData() {
        TableElement.setNumberOfRows(3, withRowType: "UpgradesRowController")
        
        for (name, price) in seasonings {
            let row = TableElement.rowController(at: price) as! UpgradesRowController
            row.UpgradeNameLabel.setText(name)
            row.UpgradeCostLabel.setText(String(price))
        }
    
    }
    
}
