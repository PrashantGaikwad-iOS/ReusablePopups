//
//  FirstViewController.swift
//  ReusablePopups
//
//  Created by Prashant G on 12/19/18.
//  Copyright © 2018 Prashant G. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController {

    // MARK: - Properties
    @IBOutlet var dateLabel: UILabel!
    
    // MARK: - Data
    var observer: NSObjectProtocol?
    
    // MARK: - ViewDidLoad
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        // 1. Notification : Old Way
        // NotificationCenter.default.addObserver(self, selector: #selector(handlePopupClose), name: .saveDateTime, object: nil)
        
        // 2. Notification : New Way
        observer = NotificationCenter.default.addObserver(forName: .saveDateTime, object: nil, queue: OperationQueue.main) { (notification) in
            let dateVc = notification.object as! DatePopupViewController
            self.dateLabel.text = dateVc.formattedDate
        }
    }
    
//    @objc func handlePopupClose(notification: Notification) {
//        let dateVc = notification.object as! DatePopupViewController
//        dateLabel.text = dateVc.formattedDate
//    }
    
    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(animated)
        if let observer = observer {
            NotificationCenter.default.removeObserver(observer)
        }
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "goDatePopupViewControllerSegue"{
            let popup = segue.destination as! DatePopupViewController
            popup.showTimePicker = false
        }
    }
    
    
    
}

