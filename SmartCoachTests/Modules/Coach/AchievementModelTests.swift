//
//  AchievementModelTests.swift
//  SmartCoachTests
//
//  Created by Tong Lin on 12/19/18.
//  Copyright © 2018 TongL. All rights reserved.
//

import XCTest
@testable import SmartCoach

class AchievementModelTests: XCTestCase {

    let mock = MockAchievementResponse()
    
    override func setUp() {
        super.setUp()
    }
    
    override func tearDown() {
        super.tearDown()
    }
    
    func testAchievementModel() {
        let achievement = mock.validResponse.achievements[0]
        
        XCTAssertEqual(achievement.id, 4)
        XCTAssertEqual(achievement.level, "1")
        XCTAssertEqual(achievement.progress, 10)
        XCTAssertEqual(achievement.total, 50)
        XCTAssertFalse(achievement.backgroundImageURL.isEmpty)
        XCTAssertTrue(achievement.accessible)
    }
}
