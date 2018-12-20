//
//  AppDelegateTests.swift
//  SmartCoachTests
//
//  Created by Tong Lin on 12/19/18.
//  Copyright © 2018 TongL. All rights reserved.
//

import XCTest
@testable import SmartCoach

class AppDelegateTests: XCTestCase {
    
    var appDelegate: AppDelegate = AppDelegate()
    var window: UIWindow? = UIWindow()
    
    override func setUp() {
        super.setUp()
        appDelegate.window = window
    }

    override func tearDown() {
        super.tearDown()
        window = nil
    }
    
    func testWindowIsKeyAfterApplicationLaunch() {
        
        let mainAppDelegate = UIApplication.shared.delegate
        XCTAssertNotNil(mainAppDelegate)
        
        (mainAppDelegate as? AppDelegate)?.presentCoachViewController()
        
        let window = mainAppDelegate?.window as? UIWindow
        XCTAssertNotNil(window)

        let isKeyWindow = window?.isKeyWindow
        XCTAssertNotNil(isKeyWindow)
        XCTAssertTrue(isKeyWindow ?? false)
    }
}
