//
//  ViewController.swift
//  Lession_7
//
//  Created by nguyen.van.bao on 11/05/2018.
//  Copyright © 2018 nguyen.van.bao. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var FirstVCLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        NotificationCenter.default.addObserver(self,
                                               selector: #selector(doSomethingAfterNotified),
                                               name: NSNotification.Name(rawValue: myNotificationKey),
                                               object: nil) }
    
    @objc func doSomethingAfterNotified() {
        print("I've been notified")
        FirstVCLabel.text = "Damn, I feel your spark 😱"
    }

}

