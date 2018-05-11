//
//  ViewController2.swift
//  Lession_7
//
//  Created by nguyen.van.bao on 11/05/2018.
//  Copyright © 2018 nguyen.van.bao. All rights reserved.
//

import UIKit
let myNotificationKey = "com.bobthedeveloper.notificationKey"
class ViewController2: UIViewController {

    @IBOutlet weak var secondVCLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        NotificationCenter.default.addObserver(self,
                                               selector: #selector(doThisWhenNotify),
                                               name: NSNotification.Name(rawValue: myNotificationKey),
                                               object: nil)
    }
    @IBAction func tabToNotifyBack(_ sender: Any) {
        NotificationCenter.default.post(name: Notification.Name(rawValue: myNotificationKey), object: self)
        
        secondVCLabel.text = "Notification Completed!😜"
    }
    
    @objc func doThisWhenNotify() { print("I've sent a spark!") }

}
