//
//  SCProgressViewTests.swift
//  SmartCoachTests
//
//  Created by Tong Lin on 12/19/18.
//  Copyright © 2018 TongL. All rights reserved.
//

import XCTest
@testable import SmartCoach

class SCProgressViewTests: XCTestCase {

    override func setUp() {
        super.setUp()
    }

    override func tearDown() {
        super.tearDown()
    }

    func testProgressViewInit() {
        let progressView = SCProgressView(frame: CGRect(x: 0, y: 0, width: 100, height: 10))
        progressView.layoutSubviews()
        XCTAssertTrue(progressView.layer.mask is CAShapeLayer)
    }
}
