//
//  TimePopupViewController.swift
//  ReusablePopups
//
//  Created by Prashant G on 12/19/18.
//  Copyright © 2018 Prashant G. All rights reserved.
//

import UIKit

class SelectTimeViewController: UIViewController {

    @IBOutlet var timeLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
   
    
    @IBAction func selectTime_TouchUpInside(_ sender: Any) {
        let sb = UIStoryboard(name: "DatePopupViewController", bundle: nil)
        let popup = sb.instantiateInitialViewController() as! DatePopupViewController
        popup.showTimePicker = true
        popup.delegate = self as PopupDelegate
        self.present(popup, animated: true)
    }
    
}

extension SelectTimeViewController: PopupDelegate {
    func popupValueSelected(value: String) {
        timeLabel.text = value
    }
    
    
}
