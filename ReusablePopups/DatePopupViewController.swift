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
    // computed property
    var formattedDate: String {
        get {
            let formatter = DateFormatter()
            formatter.dateStyle = .medium
            return formatter.string(from: datePicker!.date)
        }
    }
    var formattedTime: String {
        get {
            let formatter = DateFormatter()
            formatter.timeStyle = .short
            return formatter.string(from: datePicker!.date)
        }
    }
    var onSave: ((_ data: String) -> ())?
    
    // MARK: - viewDidLoad
    override func viewDidLoad() {
        super.viewDidLoad()
        if showTimePicker {
            dateLabel.text = "Select Time"
            datePicker.datePickerMode = .time
            saveDateButton.setTitle("Save Time", for: .normal)
        }
    }
    
    
    @IBAction func saveDate_TouchUpInside(_ sender: Any) {
        // Post Notification
        NotificationCenter.default.post(name: Notification.Name.saveDateTime, object: self)
        if showTimePicker{
            onSave?(formattedTime)
        }
        else{
            onSave?(formattedDate)
        }
        dismiss(animated: true)
    }
    
}
