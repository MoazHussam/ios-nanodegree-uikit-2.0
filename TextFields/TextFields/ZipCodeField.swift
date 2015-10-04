//
//  ZipCodeField.swift
//  TextFields
//
//  Created by Moaz on 10/4/15.
//  Copyright © 2015 Udacity. All rights reserved.
//

import Foundation
import UIKit

class ZipCodeField: NSObject, UITextFieldDelegate {
    
    func textField(textField: UITextField, shouldChangeCharactersInRange range: NSRange, replacementString string: String) -> Bool {
        
        var newText = textField.text as! NSString
        newText = newText.stringByReplacingCharactersInRange(range, withString: string)
        
        //only allow edit if final number of characters is < 5
        if newText.length > 5 {
            return false
        }else{
            return true
        }
        
    }
}
