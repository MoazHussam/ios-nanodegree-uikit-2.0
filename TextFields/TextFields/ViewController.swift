//
//  ViewController.swift
//  TextFields
//
//  Created by Jason on 11/11/14.
//  Copyright (c) 2014 Udacity. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {

    // Outlets
    @IBOutlet weak var textField1: UITextField!
    @IBOutlet weak var textField2: UITextField!
    @IBOutlet weak var textField3: UITextField!
    @IBOutlet weak var editLockSwitch: UISwitch!
    
    // Text Field Delegate objects
    let zipCpdeDelegate = ZipCodeField()
    let cashDelegate = CashTextField()
    
    // Life Cycle Methods
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Set the three delegates
        self.textField1.delegate = zipCpdeDelegate
        self.textField2.delegate = cashDelegate
        self.textField3.delegate = self
    }

    
    // Text Field Delegate Methods
    
    func textField(textField: UITextField, shouldChangeCharactersInRange range: NSRange, replacementString string: String) -> Bool {

        //return the value of the flip
        return editLockSwitch.on
    }
}

