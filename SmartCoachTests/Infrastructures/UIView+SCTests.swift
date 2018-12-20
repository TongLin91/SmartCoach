//
//  UIView+SCTests.swift
//  SmartCoachTests
//
//  Created by Tong Lin on 12/19/18.
//  Copyright © 2018 TongL. All rights reserved.
//

import XCTest
@testable import SmartCoach

class UIView_SCTests: XCTestCase {

    override func setUp() {
        super.setUp()
    }

    override func tearDown() {
        super.tearDown()
    }

    func testApplyRoundedCorner() {
        let view = UIView(frame: CGRect(x: 0, y: 0, width: 10, height: 10))
        view.applyRoundedCorner()
        
        XCTAssertTrue(view.layer.masksToBounds)
        XCTAssertEqual(view.layer.cornerRadius, 10)
    }
    
    func testApplyRoundedCornerCustomRadius() {
        let view = UIView(frame: CGRect(x: 0, y: 0, width: 10, height: 10))
        view.applyRoundedCorner(to: 5)
        
        XCTAssertTrue(view.layer.masksToBounds)
        XCTAssertEqual(view.layer.cornerRadius, 5)
    }
}
