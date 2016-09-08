//
//  viewController6.swift
//  PractiseTable
//
//  Created by Ishan Mahajan on 02/09/16.
//  Copyright © 2016 Ishan Mahajan. All rights reserved.
//

// view controller for DOB page

import UIKit

class viewController6: UIViewController {
    
    var date = (String) ()
    var name = (String)()
    @IBOutlet weak var button1: UIButton!
    @IBOutlet weak var label2: UILabel!
    @IBOutlet weak var datepicker: UIDatePicker!
    
    @IBOutlet weak var textField1: UITextField!
    @IBAction func show(sender: AnyObject) {
    
    
        date = NSDateFormatter.localizedStringFromDate(datepicker.date,dateStyle: NSDateFormatterStyle.FullStyle, timeStyle: NSDateFormatterStyle.ShortStyle)
        name = textField1.text!
        
    label2.text = NSDateFormatter.localizedStringFromDate(datepicker.date, dateStyle: NSDateFormatterStyle.FullStyle, timeStyle: NSDateFormatterStyle.NoStyle)
    
        print(name)
    
    }
    
    
    
    
}
