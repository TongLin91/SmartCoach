//
//  UIColor+SCTests.swift
//  SmartCoachTests
//
//  Created by Tong Lin on 12/19/18.
//  Copyright © 2018 TongL. All rights reserved.
//

import XCTest
@testable import SmartCoach

class UIColor_SCTests: XCTestCase {
    
    override func setUp() {
        super.setUp()
    }
    
    override func tearDown() {
        super.tearDown()
    }
    
    func testSCPrimaryColor() {
        let color = CIColor(color: UIColor.scPrimaryColor(0.1))
        
        XCTAssertEqual(String(format: "%.3f", color.red), "0.373")
        XCTAssertEqual(String(format: "%.3f", color.green), "0.255")
        XCTAssertEqual(String(format: "%.3f", color.blue), "0.780")
        XCTAssertEqual(color.alpha, 0.1)
    }
    
    func testSCLightGrayColor() {
        let color = CIColor(color: UIColor.scLightGrayColor(0.2))
        
        XCTAssertEqual(String(format: "%.3f", color.red), "0.961")
        XCTAssertEqual(String(format: "%.3f", color.green), "0.961")
        XCTAssertEqual(String(format: "%.3f", color.blue), "0.961")
        XCTAssertTrue(color.alpha == 0.2)
    }
    
    func testSCGreenColor() {
        let color = CIColor(color: UIColor.scGreenColor(0.3))
        
        XCTAssertEqual(String(format: "%.3f", color.red), "0.537")
        XCTAssertEqual(String(format: "%.3f", color.green), "0.788")
        XCTAssertEqual(String(format: "%.3f", color.blue), "0.420")
        XCTAssertTrue(color.alpha == 0.3)
    }
    
    func testSCWhiteColor() {
        let color = CIColor(color: UIColor.scWhiteColor(0.4))
        
        XCTAssertEqual(String(format: "%.3f", color.red), "1.000")
        XCTAssertEqual(String(format: "%.3f", color.green), "1.000")
        XCTAssertEqual(String(format: "%.3f", color.blue), "1.000")
        XCTAssertTrue(color.alpha == 0.4)
    }
    
    func testSCBlackColor() {
        let color = CIColor(color: UIColor.scBlackColor(0.5))
        
        XCTAssertEqual(String(format: "%.3f", color.red), "0.000")
        XCTAssertEqual(String(format: "%.3f", color.green), "0.000")
        XCTAssertEqual(String(format: "%.3f", color.blue), "0.000")
        XCTAssertTrue(color.alpha == 0.5)
    }
}
