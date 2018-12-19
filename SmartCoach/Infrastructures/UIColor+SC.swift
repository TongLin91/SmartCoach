//
//  UIColor+SC.swift
//  SmartCoach
//
//  Created by Tong Lin on 12/19/18.
//  Copyright © 2018 TongL. All rights reserved.
//

import UIKit

extension UIColor {
    convenience init(fromHexString hex:String?, alpha: CGFloat = 1) {
        guard let hex = hex else {
            self.init(white: 0, alpha: 0) //clearColor
            return
        }
        
        let scanner = Scanner(string: hex)
        scanner.scanLocation = hex.first == "#" ? 1 : 0
        
        var rgb: UInt32 = 0
        scanner.scanHexInt32(&rgb)
        
        self.init(
            red:   CGFloat((rgb & 0xFF0000) >> 16)/255.0,
            green: CGFloat((rgb &   0xFF00) >>  8)/255.0,
            blue:  CGFloat((rgb &     0xFF)      )/255.0,
            alpha: alpha)
    }
    
    static func scPrimaryColor(_ alpha: CGFloat = 1) -> UIColor {
        return UIColor(fromHexString: "5F41C7", alpha: alpha)
    }
    
    static func scLightGrayColor(_ alpha: CGFloat = 1) -> UIColor {
        return UIColor(fromHexString: "F5F5F5", alpha: alpha)
    }
    
    static func scGreenColor(_ alpha: CGFloat = 1) -> UIColor {
        return UIColor(fromHexString: "89C96B", alpha: alpha)
    }
    
    static func scWhiteColor(_ alpha: CGFloat = 1) -> UIColor {
        return UIColor(fromHexString: "FFFFFF", alpha: alpha)
    }
    
    static func scBlackColor(_ alpha: CGFloat = 1) -> UIColor {
        return UIColor(fromHexString: "000000", alpha: alpha)
    }
}
