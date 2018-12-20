//
//  UIView+SC.swift
//  SmartCoach
//
//  Created by Tong Lin on 12/19/18.
//  Copyright © 2018 TongL. All rights reserved.
//

import UIKit

extension UIView {
    func applyRoundedCorner(to radius: CGFloat = 10) {
        self.layer.masksToBounds = true
        self.layer.cornerRadius = radius
    }
}
