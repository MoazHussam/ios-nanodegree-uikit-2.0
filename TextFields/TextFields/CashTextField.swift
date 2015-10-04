//
//  CashTextField.swift
//  TextFields
//
//  Created by Moaz on 10/4/15.
//  Copyright © 2015 Udacity. All rights reserved.
//

import Foundation
import UIKit

class CashTextField: NSObject, UITextFieldDelegate {
    
    func textField(textField: UITextField, shouldChangeCharactersInRange range: NSRange, replacementString string: String) -> Bool {
        
        //build the new string
        var newText = textField.text as! NSString
        newText = newText.stringByReplacingCharactersInRange(range, withString: string)
        
        var modifyingString: NSString = newText.stringByReplacingOccurrencesOfString("$", withString: "")
        let stringDoubleValue = modifyingString.doubleValue
        
        
        if textField.text == "" {  // double value is 0
            modifyingString = String(stringDoubleValue / 100)
        }else{
            modifyingString = String(stringDoubleValue * 10)
        }
        
        textField.text = ("$\(modifyingString)")
        
        return false
    }
}
