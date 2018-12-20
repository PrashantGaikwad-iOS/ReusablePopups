//
//  FirstViewController.swift
//  ReusablePopups
//
//  Created by Prashant G on 12/19/18.
//  Copyright © 2018 Prashant G. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "goDatePopupViewControllerSegue"{
            var popup = segue.destination as! DatePopupViewController
            popup.showTimePicker = false
        }
    }
    
}

