//
//  CoachRouterTests.swift
//  SmartCoachTests
//
//  Created by Tong Lin on 12/19/18.
//  Copyright © 2018 TongL. All rights reserved.
//

import XCTest
@testable import SmartCoach

class CoachRouterTests: XCTestCase {
    
    override func setUp() {
        super.setUp()
    }

    override func tearDown() {
        super.tearDown()
    }

    func testMakeCoachViewController() {
        let viewController = CoachRouter.makeCoachViewController()
        let coachVC = viewController as? CoachViewController
        
        XCTAssertTrue(viewController is CoachViewController)
        XCTAssertNotNil(coachVC?.presenter)
        XCTAssertNotNil(coachVC?.presenter)
    }

    func testMakeCoachNavigationController() {
        let coachNC = CoachRouter.makeCoachNavigationController()
        
        XCTAssertTrue(coachNC is MainNavigationController)
        XCTAssertTrue(coachNC.topViewController is CoachViewController)
    }

}
