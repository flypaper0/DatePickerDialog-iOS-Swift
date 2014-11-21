//
//  ViewController.swift
//  DatePickerDialogExample
//
//  Created by vinicius on 11/20/14.
//  Copyright (c) 2014 Squimer. All rights reserved.
//

import UIKit

class ViewController: UIViewController, DatePickerDialogDelegate {
    
    var datePickerDialog: DatePickerDialog!
    
    /* Overrides */
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.datePickerDialog = DatePickerDialog(frame: self.view.frame)
        self.datePickerDialog.delegate = self
        self.view.addSubview(datePickerDialog)
    }
    
    /* DatePickerDialogDelegate */
    func datePickerDialog(didSelect date: NSDate) {
        println(date)
    }
    
    /* IBActions */
    @IBAction func datePickerTapped(sender: AnyObject) {
        self.datePickerDialog.togglePicker()
    }
    
}