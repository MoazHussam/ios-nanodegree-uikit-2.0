//
//  RadomColorTextFieldDelegate.swift
//  TextFields
//
//  Created by Moaz on 9/30/15.
//  Copyright © 2015 Udacity. All rights reserved.
//

import Foundation
import UIKit

class RandomColorTextFieldDelegate: NSObject, UITextFieldDelegate {
    
    let colors = [UIColor.blackColor(), UIColor.blueColor(), UIColor.brownColor(), UIColor.cyanColor(), UIColor.darkGrayColor(), UIColor.darkTextColor(),
    UIColor.grayColor(), UIColor.greenColor(), UIColor.lightGrayColor(), UIColor.magentaColor(), UIColor.orangeColor(), UIColor.purpleColor(), UIColor.redColor(), UIColor.whiteColor(), UIColor.yellowColor()]
    
    func textField(textField: UITextField, shouldChangeCharactersInRange range: NSRange, replacementString string: String) -> Bool {
        //TODO: colorize text with random color
        
        textField.textColor = randomColor()
        
        return true
    }
    
    func randomColor() -> UIColor {
        //return random color from array
        
        let randomIndex =  Int(arc4random() % UInt32(colors.count))
        return colors[randomIndex]
    }
}
