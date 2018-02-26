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
// Matthew Vogt
// Arshdeep Khalsa

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        //Use function when testing
        //sendNotification(title:"Chicken is done", body:"Tap to view more", time:5.0);
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    /**
        Sends a notification after a specified amount of time
     
        @param title Title of notification
        @param body Body of notification
        @param time Specified time for notification to trigger
     
    */
    func sendNotification(title: String, body: String, time: Double){
        let content = UNMutableNotificationContent()
        content.title = title
        content.body = body
        content.sound = UNNotificationSound.default()
        
        let trigger = UNTimeIntervalNotificationTrigger(timeInterval: time, repeats: false)
        
        let request = UNNotificationRequest(identifier: "DoneChicken", content: content, trigger: trigger)
        UNUserNotificationCenter.current().add(request, withCompletionHandler: nil)
    }


}

