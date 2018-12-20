//
//  MainNavigationController.swift
//  SmartCoach
//
//  Created by Tong Lin on 12/19/18.
//  Copyright © 2018 TongL. All rights reserved.
//

import UIKit

class MainNavigationController: UINavigationController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setup()
    }
    
    func setup() {
        UINavigationBar.appearance().barStyle = .blackOpaque
        navigationBar.barTintColor = .scPrimaryColor()
        navigationBar.tintColor = .scWhiteColor()
        navigationBar.titleTextAttributes = [NSAttributedString.Key.foregroundColor: UIColor.scWhiteColor()]
    }
}
