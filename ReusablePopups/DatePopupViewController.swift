//
//  DatePopupViewController.swift
//  ReusablePopups
//
//  Created by Prashant G on 12/19/18.
//  Copyright © 2018 Prashant G. All rights reserved.
//

import UIKit

class DatePopupViewController: UIViewController {

    // MARK: - Properties
    @IBOutlet var dateLabel: UILabel!
    @IBOutlet var datePicker: UIDatePicker!
    @IBOutlet var saveDateButton: UIButton!
    
    // MARK: - Data
    var showTimePicker: Bool = false
    
    override func viewDidLoad() {
        super.viewDidLoad()

        if showTimePicker {
            dateLabel.text = "Select Time"
            datePicker.datePickerMode = .time
            saveDateButton.setTitle("Save Time", for: .normal)
        }
    }
    
    
    @IBAction func saveDate_TouchUpInside(_ sender: Any) {
        
        dismiss(animated: true)
    }
    
}
