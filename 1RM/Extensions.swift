//
//  Extensions.swift
//  1RM
//
//  Created by Gianni Settino on 2016-02-17.
//  Copyright © 2016 Milton and Parc. All rights reserved.
//

import UIKit

extension UIColor {
    
    convenience init(hex: String) {
        let hexa = hex.stringByReplacingOccurrencesOfString("#", withString: "")
        let length = hexa.characters.count
        
        let scanner = NSScanner(string:hexa)
        var hexValue: CUnsignedLongLong = 0
        
        var red: CGFloat = 0
        var green: CGFloat = 0
        var blue: CGFloat = 0
        var alpha: CGFloat = 1
        
        if scanner.scanHexLongLong(&hexValue) {
            if length == 6 {
                red = CGFloat(Double((hexValue & 0xFF0000) >> 16) / 255)
                green = CGFloat(Double((hexValue & 0x00FF00) >> 8) / 255)
                blue = CGFloat(Double(hexValue & 0x0000FF) / 255)
            } else if length == 8 {
                red = CGFloat(Double((hexValue & 0xFF000000) >> 24) / 255)
                green = CGFloat(Double((hexValue & 0x00FF0000) >> 16) / 255)
                blue = CGFloat(Double((hexValue & 0x0000FF00) >> 8) / 255)
                alpha = CGFloat(Double(hexValue & 0x000000FF) / 255)
            }
        }
        
        self.init(red: red, green: green, blue: blue, alpha: alpha)
    }
}
