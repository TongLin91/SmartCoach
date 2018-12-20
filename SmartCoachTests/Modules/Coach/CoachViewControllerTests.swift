//
//  CoachViewControllerTests.swift
//  SmartCoachTests
//
//  Created by Tong Lin on 12/19/18.
//  Copyright © 2018 TongL. All rights reserved.
//

import XCTest
@testable import SmartCoach

class CoachViewControllerTests: XCTestCase {
    
    var coachViewController: CoachViewController!
    
    override func setUp() {
        super.setUp()
        coachViewController = CoachRouter.makeCoachViewController() as? CoachViewController
        coachViewController.loadView()
    }
    
    override func tearDown() {
        super.tearDown()
    }
    
    func testInit() {
        XCTAssertNotNil(coachViewController)
    }
    
    func testViewDidLoad() {
        coachViewController.viewDidLoad()
        XCTAssertEqual(coachViewController.navigationItem.leftBarButtonItem, coachViewController.backBarButton)
        XCTAssertEqual(coachViewController.navigationItem.rightBarButtonItem, coachViewController.infoBarButton)
    }
    
    func testAchievementHandler() {
        coachViewController.set(MockAchievementResponse().validResponse.achievements)
        XCTAssertEqual(coachViewController?.dataSource.achievements.count, 1)
    }

    func test() {
        coachViewController.viewWillAppear(false)
        XCTAssertFalse(coachViewController.dataSource.achievements.isEmpty)
    }
}
