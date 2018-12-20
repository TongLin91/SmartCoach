//
//  AchievementResponseTests.swift
//  SmartCoachTests
//
//  Created by Tong Lin on 12/19/18.
//  Copyright © 2018 TongL. All rights reserved.
//

import XCTest
@testable import SmartCoach

class AchievementResponseTests: XCTestCase {
    
    let mock = MockAchievementResponse()
    
    override func setUp() {
        super.setUp()
    }
    
    override func tearDown() {
        super.tearDown()
    }
    
    func testValidResponse() {
        XCTAssertEqual(mock.validResponse.status, 200)
        XCTAssertTrue(mock.validResponse.success)
        XCTAssertEqual(mock.validResponse.achievements.count, 1)
    }

    func testInvalidResponse() {
        XCTAssertNotEqual(mock.invalidResponse.status, 200)
        XCTAssertFalse(mock.invalidResponse.success)
        XCTAssertEqual(mock.invalidResponse.achievements.count, 0)
    }
}
