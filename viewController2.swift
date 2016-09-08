//
//  viewController2.swift
//  PractiseTable
//
//  Created by Ishan Mahajan on 02/09/16.
//  Copyright © 2016 Ishan Mahajan. All rights reserved.
//


// View controller for calculator

import UIKit

class viewController2: UIViewController {

    var result = Float()
    var currentNumber = Float()
    
   var currentOp = "="
    
    override func viewDidLoad() {
        super.viewDidLoad()
    
        
        btnResult.text = ("\(result )")
        
    }
    
    @IBOutlet weak var btnResult: UILabel!
    @IBAction func inputButton(sender: UIButton) {
    
        currentNumber = currentNumber * 10 + Float(sender.titleLabel!.text!)!
        btnResult.text = ("\(currentNumber)")
    
    }
   
    @IBAction func buttonOperation(sender: UIButton) {
   
        switch currentOp {
        case "=":
            result = currentNumber
        case "+":
            result = result + currentNumber
        case "_":
            result = result -  currentNumber
        case "*":
            result = result * currentNumber
        case "/":
            result = result / currentNumber
        default:
            print("Error")
        }
    
        currentNumber = 0
        btnResult.text = ("\(result)")
        
        if (sender.titleLabel!.text == "=") {
            result = 0
        }
        currentOp = sender.titleLabel!.text! as String!
    }
    
    @IBAction func btnClear(sender: AnyObject) {
    
    
    result = 0
    currentNumber = 0
    currentOp = "="
        btnResult.text = ("\(result)")
    
        
        
        
    }
    
}
