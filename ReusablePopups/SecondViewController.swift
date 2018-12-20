//
//  SecondViewController.swift
//  ReusablePopups
//
//  Created by Prashant G on 12/19/18.
//  Copyright © 2018 Prashant G. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {

    // MARK: - Properties
    @IBOutlet var dateLabel: UILabel!
    
    // MARK: - Data
    
    // MARK: - ViewDidLoad
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(animated)
    }


    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "goDatePopupViewControllerSegue"{
            let popup = segue.destination as! DatePopupViewController
            popup.showTimePicker = false
            // popup.onSave = onSave
            popup.onSave = { (data: String) -> () in
                self.dateLabel.text = data
            }
        }
    }
    
    func onSave(_ data: String) -> () {
        dateLabel.text = data
    }

}

