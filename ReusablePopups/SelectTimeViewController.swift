//
//  TimePopupViewController.swift
//  ReusablePopups
//
//  Created by Prashant G on 12/19/18.
//  Copyright © 2018 Prashant G. All rights reserved.
//

import UIKit

class SelectTimeViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
   
    
    @IBAction func selectTime_TouchUpInside(_ sender: Any) {
        let sb = UIStoryboard(name: "DatePopupViewController", bundle: nil)
        let popup = sb.instantiateInitialViewController() as! DatePopupViewController
        popup.showTimePicker = true
        self.present(popup, animated: true)
    }
    
}
