//
//  ViewController.swift
//  Meat Spin
//
//  Created by Matthew Vogt on 2/9/18.
//  Copyright © 2018 SWEN-356. All rights reserved.
//

import UIKit
import UserNotifications

// Comment your name below when you get xcode to build and run!
// Dan Sweetman

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        //Use function when testing
        sendChickenDoneNotification();
    
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func sendChickenDoneNotification(){
        let content = UNMutableNotificationContent()
        content.title = "Congrats you've got a done chicken!"
        content.body = "Tap to view more"
        content.sound = UNNotificationSound.default()
        
        let trigger = UNTimeIntervalNotificationTrigger(timeInterval: 5, repeats: false)
        
        let request = UNNotificationRequest(identifier: "DoneChicken", content: content, trigger: trigger)
        UNUserNotificationCenter.current().add(request, withCompletionHandler: nil)
    }


}

