//
//  LocalPushNotification.swift
//  Lession_7
//
//  Created by nguyen.van.bao on 14/05/2018.
//  Copyright © 2018 nguyen.van.bao. All rights reserved.
//

import UserNotifications

class LocalPushManager: NSObject {
    static var shareManager = LocalPushManager()
    let center = UNUserNotificationCenter.current()
    func requestAuthorization(){
        center.requestAuthorization(options: [.alert,.sound,.badge]) { (duoccap, err) in
            if duoccap == true {
                print("duoc cap p[hep")
            }else{
                print("err!")
            }
        }
    }
    func sendLocalPush (in time: TimeInterval) {
        let content  = UNMutableNotificationContent()
        content.title = NSString.localizedUserNotificationString(forKey: "keytitle", arguments: nil)
        content.body =  NSString.localizedUserNotificationString(forKey: "keybody", arguments: nil)
        let trigger = UNTimeIntervalNotificationTrigger (timeInterval: time, repeats: false)
        let request = UNNotificationRequest(identifier: "Timer", content: content, trigger: trigger)
        center.add(request) { (err) in
            if err == nil{
            print("push ok")
        }
    }
}
}
